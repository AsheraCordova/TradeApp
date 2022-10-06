import { Fragment, Inject } from './app/Fragment';
import { NavController, InjectController } from './navigation/NavController';
import { DrawerLayout } from './android/widget/DrawerLayoutImpl';
import { Gravity } from './widget/TypeConstants';
import { webview, item_booking, item_trading_confirmation, change_password, notification_list, membership_profile_summary, my_week_transaction, redeem_points, login, faq } from './R/NavGraph';
import AdapterFactory from './adapter/AdapterFactory';
import Progress from "./decorator/Progress";
import { Store, BookedItem, Item, Notification, TradeItem, RegistrationScreenData, Earning, PasswordUpdate } from './Model';
import { instanceToPlain } from 'class-transformer';
import { MenuItemEvent, ItemClickEvent, eventBus, itemBookedEvent, itemTradedEvent, profileUpdatedEvent } from './Events';
import { RecyclerView } from './android/widget/RecyclerViewImpl';
import { ScopedObject } from './app/ScopedObject';
import LocaleManager from './app/LocaleManager';
import EventType from './app/EventType';

export default class Dashboard extends Fragment {
    @InjectController({})
    navController!: NavController;
    @Inject({ id: "@+id/drawer_layout" })
    private drawerLayout!: DrawerLayout;
    @Inject({ id: "@+id/itemsRecyclerView" })
    private recyclerView!: RecyclerView;

    private unsubscribeItemBookedEvent: () => void;
    private unsubscribeItemTradedEvent: () => void;
    private unsubscribeProfileUpdatedEvent: () => void;
    private bookedItemEvent: BookedItem | null;
    private tradeItemEvent: TradeItem | null;
    private profileUpdatedEvent: any;
    constructor() {
        super();
        this.unsubscribeItemBookedEvent = eventBus.subscribe(itemBookedEvent, event => {
            this.bookedItemEvent = event.payload.bookedItem;
        });

        this.unsubscribeItemTradedEvent = eventBus.subscribe(itemTradedEvent, event => {
            this.tradeItemEvent = event.payload.tradedItem;
        });

        this.unsubscribeProfileUpdatedEvent = eventBus.subscribe(profileUpdatedEvent, event => {
            this.profileUpdatedEvent = event.payload;
        });
    }


    public onDestroy(obj: any): void {
        this.unsubscribeItemBookedEvent();
        this.unsubscribeItemTradedEvent();
        this.unsubscribeProfileUpdatedEvent();
    }

    public async onResume(obj: any): Promise<void> {
        if (this.bookedItemEvent != null) {
            let item: Item = this.bookedItemEvent.item;
            item.noOfItems = item.noOfItems - this.bookedItemEvent.noOfItems;

            await this.updateRecyclerView(item);
            this.bookedItemEvent = null;
        }

        if (this.tradeItemEvent != null) {
            let item: Item = this.tradeItemEvent.item;
            item.noOfItems = item.noOfItems - this.tradeItemEvent.noOfItems;

            await this.updateRecyclerView(item);
            this.tradeItemEvent = null;
        }

        if (this.profileUpdatedEvent != null) {
            this.drawerLayout.reset().refreshUiFromModel("name,emailId");
            await this.executeCommand(this.drawerLayout);
            this.profileUpdatedEvent = null;
        }
    }

    private async updateRecyclerView(item: Item) {
        if (item.noOfItems > 0) {
            const model = instanceToPlain(item);
            this.recyclerView.reset().addModel(model);
        } else {
            this.recyclerView.reset().removeModelById(item.id).refreshUiFromModel("item_allocated,no_items,main_view");
        }
        await this.executeCommand(this.recyclerView);
    }


    async openDrawer() {
        this.drawerLayout.reset().openDrawer(Gravity.start);
        await this.executeCommand(this.drawerLayout);
    }

    async goToChangePassword(obj: any) {
        await this.navController.reset().navigateTo(change_password,
            new ScopedObject("password->view as map", new PasswordUpdate())).executeCommand();
    }

    @Progress("@string/loading")
    async gotoMemberShipProfileSummary(obj: any) {
        let registrationScreenData: RegistrationScreenData = await AdapterFactory.getInstance().getRegScreenData();
        this.navController.reset().navigateTo(membership_profile_summary,
            new ScopedObject("registrationScreenData->session as map", registrationScreenData)).executeCommand();
    }

    @EventType(ItemClickEvent)
    async tradeItem(event: ItemClickEvent) {
        let item: Item = event.getItem();
        await this.tradeItemWithProgress(item);
    }

    @Progress("@string/loading")
    private async tradeItemWithProgress(item: Item) {
        let tradeItem: TradeItem = new TradeItem();
        tradeItem.noOfItems = item.noOfItems;
        tradeItem.memPrice = item.memPrice;
        tradeItem.tradePrice = item.menuPrice;
        let stores: Store[] = await AdapterFactory.getInstance().getStores();
        this.navController.reset().navigateTo(item_trading_confirmation,
            new ScopedObject("item->view as map", item),
            new ScopedObject("tradeItem->view as map", tradeItem),
            new ScopedObject("showDetails->view as bool", false),
            new ScopedObject("stores->view as list", stores)
        ).executeCommand();
    }

    @Progress("@string/loading")
    @EventType(ItemClickEvent)
    async bookItem(event: ItemClickEvent) {
        let buyItem: BookedItem = new BookedItem();
        buyItem.noOfItems = event.getItem().noOfItems;
        let stores: Store[] = await AdapterFactory.getInstance().getStores();
        this.navController.reset().navigateTo(item_booking,
            new ScopedObject("stores->view as list", stores),
            new ScopedObject("item->view as map", event.getItem()),
            new ScopedObject("buyitem->view as map", buyItem)
        ).executeCommand();
    }

    @Progress("@string/loading")
    @EventType(MenuItemEvent)
    async onMenuItemClick(event: MenuItemEvent) {
        if (event.itemId == '@+id/notify') {
            let notifications: Notification[] = await AdapterFactory.getInstance().getNotifications();
            this.navController.reset().navigateTo(notification_list, new ScopedObject("notifications->view as list", notifications)).executeCommand();
        } else if (event.itemId == '@+id/transactions') {
            let tradedItems: TradeItem[] = await AdapterFactory.getInstance().getTradedItems();
            this.navController.reset().navigateTo(my_week_transaction,
                new ScopedObject("traded->view as list", tradedItems),
                new ScopedObject("bought->view as list", []),
                new ScopedObject("showTraded->view as bool", true)).executeCommand();
        }
    }

    @Progress("@string/loading")
    async gotoRedeemPoints() {
        let pageNumber = 1;
        let earnings: Earning = await AdapterFactory.getInstance().getConfirmedTransactions(pageNumber, 10);
        this.navController.reset().navigateTo(redeem_points,
            new ScopedObject("selectEarnings->view as bool", true),
            new ScopedObject("earningsLoadMore->view as bool", earnings.transactions.length > 0),
            new ScopedObject("earningsPageNumber->view as integer", pageNumber),
            new ScopedObject("earnings->view as map", earnings),
            new ScopedObject("redeems->view as list", []),
            new ScopedObject("bought->view as list", [])).executeCommand();
    }

    async gotoPrivacyPolicy() {
        await this.navController.reset().navigateTo(webview,
            new ScopedObject("webviewVisible->view as bool", false),
            new ScopedObject("webviewTitle->view as string", "@string/privacy_policy"),
            new ScopedObject("webviewUrl->view as string", "https://www.lipsum.com/")).executeCommand();
    }

    
    async termsAndConditions() {
        await this.navController.reset().navigateTo(webview,
            new ScopedObject("webviewVisible->view as bool", false),
            new ScopedObject("webviewTitle->view as string", "@string/terms_and_conditions"),
            new ScopedObject("webviewUrl->view as string", "https://www.lipsum.com/")).executeCommand();
    }

    async logout() {
        let confirmMsg = LocaleManager.getInstance().translate("@string/confirm_logout");
        let flag = confirm(confirmMsg);
        if (flag) {
            await this.navController.reset().navigateWithPopBackStack(login, 
                new ScopedObject("login->view as map", {})).executeCommand(); 
        }
    }

    @Progress("@string/loading")
    async goToFAQ() {
        let registrationScreenData: RegistrationScreenData = await AdapterFactory.getInstance().getRegScreenData();
        this.navController.reset().navigateTo(faq,
            new ScopedObject("registrationScreenData->view as map", registrationScreenData)).executeCommand();
    }

    async makePaymentAfterLogin() {
        alert("Integrate your favourite payment gateway here :)))");
    }

}