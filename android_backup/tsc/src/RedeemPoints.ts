import { Fragment, Inject } from './app/Fragment';
import { NavController, InjectController } from './navigation/NavController';
import { item_trading_confirmation_summary } from './R/NavGraph';
import { Button } from './android/widget/ButtonImpl';
import { eventBus, ItemBoughtClickEvent, itemTradedEvent, ItemTradedEvent } from './Events';
import { plainToClass } from 'class-transformer';
import { BoughtTransaction, Earning, RedeemTransaction, TradeItem } from './Model';
import AdapterFactory from './adapter/AdapterFactory';
import Progress from './decorator/Progress';
import { ScopedObject } from './app/ScopedObject';
import { LinearLayout } from './android/widget/LinearLayoutImpl';
import { RecyclerView } from './android/widget/RecyclerViewImpl';

const PAGE_SIZE = 10;
export default class RedeemPoints extends Fragment {
    @InjectController({})
    navController!: NavController;
    @Inject({ id: "@+id/main_view" })
    root!: LinearLayout;
    @Inject({ id: "@+id/earned" })
    earned:RecyclerView;
    @Inject({ id: "@+id/redeems_recyclerView" })
    redeem:RecyclerView;
    @Inject({ id: "@+id/bought_recyclerview" })
    bought:RecyclerView;
    redeemLoaded = false;
    boughtLoaded = false;
    constructor() {
        super();
    }

    async goToPreviousScreen() {
        await this.navController.reset().popBackStack().executeCommand();
    }

    async onClickEarnings() {        
        await this.refreshTabs(true, false, false, '');
    }

    @Progress({title: "@string/loading", canShowProgress:  (o : RedeemPoints) => !o.redeemLoaded})
    async onClickRedeems(obj: any) {     
        let pageNumber = obj.pageNumber;
        if (!pageNumber) {
            pageNumber = 1;
        }
        let scopedObjects: ScopedObject[] = [];
        let refreshUi = '';
        if (!this.redeemLoaded) {
             let redeems: RedeemTransaction[] = await AdapterFactory.getInstance().getRedeemTransactions(pageNumber, PAGE_SIZE);
             scopedObjects.push(new ScopedObject("redeems->view as list", redeems));
             scopedObjects.push(new ScopedObject("redeemPageNumber->view as integer", pageNumber));
             scopedObjects.push(new ScopedObject("redeemLoadMore->view as bool", redeems.length > 0));
             this.redeemLoaded = true;
             refreshUi = ",redeems_recyclerView";
        }
        await this.refreshTabs(false, true, false, refreshUi, ...scopedObjects);   
    }

    private async refreshTabs(selectEarnings: boolean, selectRedeems: boolean, selectBought: boolean, refreshUi: string, ...scopedObjects: ScopedObject[]) {
        this.root.reset().updateModelDataWithScopedObject(
            new ScopedObject("selectEarnings->view as bool", selectEarnings),
            new ScopedObject("selectRedeems->view as bool", selectRedeems),
            new ScopedObject("selectBought->view as bool", selectBought),            
            ...scopedObjects
        ).refreshUiFromModel(`earnings_title,redeeems_title,bought_title,bookings,redeems,pointsearned,redeems_nodata,bought_nodata${refreshUi}`)
        
        await this.executeCommand(this.root);
    }

    @Progress("@string/loading")
    async loadNextPage(obj: any) { 
        let pageNumber = obj.pageNumber;
        ++pageNumber;
        let earnings: Earning = await AdapterFactory.getInstance().getConfirmedTransactions(pageNumber, PAGE_SIZE);
        this.earned.reset().updateModelDataWithScopedObject(
            new ScopedObject("earningsPageNumber->view as integer", pageNumber),
            new ScopedObject("earningsLoadMore->view as bool", earnings.transactions.length > 0)
        ).setFooterDisabled(earnings.transactions.length == 0).addAllModel(earnings.transactions);
        await this.executeCommand(this.earned);

    }

    @Progress("@string/loading")
    async loadRedeemNextPage(obj: any) { 
        let pageNumber = obj.pageNumber;
        ++pageNumber;
        let redeems: RedeemTransaction[] = await AdapterFactory.getInstance().getRedeemTransactions(pageNumber, PAGE_SIZE);
        this.redeem.reset().updateModelDataWithScopedObject(
            new ScopedObject("redeemPageNumber->view as integer", pageNumber),
            new ScopedObject("redeemLoadMore->view as bool", redeems.length > 0)
        ).setFooterDisabled(redeems.length == 0).addAllModel(redeems);
        await this.executeCommand(this.redeem);

    }

    @Progress({title: "@string/loading", canShowProgress:  (o : RedeemPoints) => !o.boughtLoaded})
    async onClickBought(obj: any) {     
        let pageNumber = obj.pageNumber;
        if (!pageNumber) {
            pageNumber = 1;
        }
        let scopedObjects: ScopedObject[] = [];
        let refreshUi = '';
        if (!this.boughtLoaded) {
             let bought: BoughtTransaction[] = await AdapterFactory.getInstance().getBoughtTransactions(pageNumber, PAGE_SIZE);
             scopedObjects.push(new ScopedObject("bought->view as list", bought));
             scopedObjects.push(new ScopedObject("boughtPageNumber->view as integer", pageNumber));
             scopedObjects.push(new ScopedObject("boughtLoadMore->view as bool", bought.length > 0));
             this.boughtLoaded = true;
             refreshUi = ",bought_recyclerview";
        }
        await this.refreshTabs(false, false, true, refreshUi, ...scopedObjects);   
    }

    @Progress("@string/loading")
    async loadBoughtNextPage(obj: any) { 
        let pageNumber = obj.pageNumber;
        ++pageNumber;
        let bought: BoughtTransaction[] = await AdapterFactory.getInstance().getBoughtTransactions(pageNumber, PAGE_SIZE);
        this.bought.reset().updateModelDataWithScopedObject(
            new ScopedObject("boughtPageNumber->view as integer", pageNumber),
            new ScopedObject("boughtLoadMore->view as bool", bought.length > 0)
        ).setFooterDisabled(bought.length == 0).addAllModel(bought);
        await this.executeCommand(this.bought);

    }    
}
