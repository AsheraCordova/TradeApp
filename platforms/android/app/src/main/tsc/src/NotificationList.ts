import {Fragment, Inject} from './app/Fragment';
import {NavController, InjectController} from './navigation/NavController';
export default class NotificationList extends Fragment{
    @InjectController({})
    navController!: NavController;

    constructor() {
        super();
    }

     async goToPreviousScreen() {
        await this.navController.reset().popBackStack().executeCommand();
     }
}