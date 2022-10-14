import {Fragment, Inject} from './app/Fragment';
import {NavController, InjectController} from './navigation/NavController';
import {DrawerLayout} from './android/widget/DrawerLayoutImpl';
import {Gravity} from './widget/TypeConstants';
import { Button } from './android/widget/ButtonImpl';
import { forgot_password_otp, login } from './R/NavGraph';
export default class ForgotPassword extends Fragment{
    @InjectController({})
    navController!: NavController;
    @Inject({ id: "@+id/submit" })
    private validateButton!: Button;

    constructor() {
        super();
    }

     async goToPreviousScreen() {
        await this.navController.reset().popBackStack().executeCommand();
     }

     async forgotPassword() {
        if (await this.validateForm("forgotPasswordForm", this.validateButton)) {
            await this.navController.reset().navigateTo(forgot_password_otp).executeCommand();
        }
    }

    async forgotPasswordOtp() {
        if (await this.validateForm("forgotPasswordForm", this.validateButton)) {
            await this.navController.reset().popBackStackTo("login", false).executeCommand();
        }
    }
}