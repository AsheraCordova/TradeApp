import { Fragment } from './app/Fragment';
import { NavController, InjectController } from './navigation/NavController';
import { login } from './R/NavGraph';
import { ScopedObject } from './app/ScopedObject';

export default class Index extends Fragment {
    @InjectController({})
    navController!: NavController;

    constructor() {
        super();
    }

    async gotoLogin() {
        await this.navController.reset().navigateWithPopBackStack(login, new ScopedObject("login->view as map", {})).executeCommand();
    }
}