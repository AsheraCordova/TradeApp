import { Fragment, Inject } from './app/Fragment';
import { NavController, InjectController } from './navigation/NavController';
import { item_trading_confirmation_summary } from './R/NavGraph';
import { Button } from './android/widget/ButtonImpl';
import { eventBus, itemTradedEvent, ItemTradedEvent } from './Events';
import { TradeItem } from './Model';
import AdapterFactory from './adapter/AdapterFactory';
import Progress from './decorator/Progress';
import { ScopedObject } from './app/ScopedObject';
import EventType from './app/EventType';

export default class ItemTrading extends Fragment {
    @InjectController({})
    navController!: NavController;
    @Inject({ id: "@+id/submit" })
    submit!: Button;

    constructor() {
        super();
    }

    async goToPreviousScreen(obj: any) {
        await this.navController.reset().popBackStack().executeCommand();
    }

    @EventType(ItemTradedEvent)
    async confirmItemTrading(event: ItemTradedEvent) {
        if (await this.validateForm("tradeForm", this.submit)) {
            let tradedItem: TradeItem = event.getTradedItem();
            tradedItem.item = event.getItem();
            tradedItem.user = event.getUser();
            this.tradeItemWithProgress(tradedItem);
        }
    }

    @Progress("@string/loading")
    async tradeItemWithProgress(tradedItem: TradeItem) {
        await AdapterFactory.getInstance().tradeItem(tradedItem);
        eventBus.publish(itemTradedEvent({tradedItem}));
        this.navController.reset().navigateWithPopBackStack(item_trading_confirmation_summary, 
            new ScopedObject("item->view as map", tradedItem)).executeCommand();        
    }
}