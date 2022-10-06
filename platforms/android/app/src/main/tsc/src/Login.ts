import { Fragment, Inject } from './app/Fragment';
import { NavController, InjectController } from './navigation/NavController';
import { registration, dashboard, forgot_password } from './R/NavGraph';
import AdapterFactory from './adapter/AdapterFactory';
import { Button } from './android/widget/ButtonImpl';
import { User, Item, RegistrationScreenData, Registration } from './Model';
import Progress from "./decorator/Progress";
import { ScopedObject } from './app/ScopedObject';

export default class Login extends Fragment {
    @InjectController({})
    navController!: NavController;
    @Inject({ id: "@+id/submit" })
    private validateButton!: Button;
    constructor() {
        super();
    }

    @Progress("@string/loading")
    async goToMembershipRegister() {
        let registrationScreenData: RegistrationScreenData = await AdapterFactory.getInstance().getRegScreenData();
        let registrationObj: Registration = new Registration();
        this.navController.reset().navigateTo(registration,
            new ScopedObject("registrationScreenData->session as map", registrationScreenData),
            new ScopedObject("registration->session as map", registrationObj)).executeCommand();
    }

    async login(obj: any) {
        if (await this.validateForm("loginForm", this.validateButton)) {
            await this.loginWithProgress(obj.model.mobileNumber, obj.model.password);
        }
    }

    @Progress("@string/loading")
    async loginWithProgress(mobileNumber: string, password: string) {
        let loginData: User = await AdapterFactory.getInstance().login(mobileNumber, password);
        let allocatedItems: Item[] = [];
        if (loginData.membershipComplete) {
            allocatedItems = await AdapterFactory.getInstance().getAllocatedItems();
        }

        this.navController.reset().navigateWithPopBackStack(dashboard,
            new ScopedObject("allocatedItems->view as list", allocatedItems),
            new ScopedObject("user->session as map", loginData)).executeCommand();
    }

    async goToPreviousScreen() {
        await this.navController.reset().popBackStack().executeCommand();
    }

    async gotoForgotPassword() {
        await this.navController.reset().navigateTo(forgot_password).executeCommand();
    }

}