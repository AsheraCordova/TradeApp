import { Fragment, Inject } from './app/Fragment';
import { NavController, InjectController } from './navigation/NavController';
import { BookedItem, TradeItem } from './Model';
import AdapterFactory from './adapter/AdapterFactory';
import Progress from './decorator/Progress';
import { LinearLayout  } from './android/widget/LinearLayoutImpl';
import { ScopedObject } from './app/ScopedObject';


export default class WeeklyTransactions extends Fragment {
    @InjectController({})
    navController!: NavController;
    @Inject({ id: "@+id/main_view" })
    root!: LinearLayout;
    loadedBought = false;
    constructor() {
        super();
    }

    async goToPreviousScreen(obj: any) {
        await this.navController.reset().popBackStack().executeCommand();
    }
    @Progress({title: "@string/loading", canShowProgress:  (o : WeeklyTransactions) => !o.loadedBought})
    async onClickBought() {
        let scopedObjects:ScopedObject[] = [];
        let refreshUiFromModel = '';
        if (!this.loadedBought) {
            let boughtItems: BookedItem[] = await AdapterFactory.getInstance().getBoughtItems();
            scopedObjects.push(new ScopedObject("bought->view as list", boughtItems));
            refreshUiFromModel = ',no_token_booking,booked_items';
        }
        scopedObjects.push(new ScopedObject("showTraded->view as bool", false));
        this.root.reset().updateModelDataWithScopedObject(...scopedObjects).refreshUiFromModel("trading,booking,traded_title,bought_title" + refreshUiFromModel);
        await this.executeCommand(this.root);
        this.loadedBought = true;
    }
    
    async onClickTraded() {        
        this.root.reset().updateModelData("showTraded->view as bool", true).refreshUiFromModel("trading,booking,traded_title,bought_title");
        await this.executeCommand(this.root);
    }
}