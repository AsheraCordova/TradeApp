import { Fragment, Inject } from './app/Fragment';
import { NavController, InjectController } from './navigation/NavController';
import { register_membership_personal, register_membership_otp, register_membership_payment, register_membership_details } from './R/NavGraph';
import { Button } from './android/widget/ButtonImpl';
import AdapterFactory from './adapter/AdapterFactory';
import { RegSubmitEvent } from './Events';
import Progress from './decorator/Progress';
import { ScopedObject } from './app/ScopedObject';
import EventType from './app/EventType';
import { DialogHelper } from './helpers/DialogHelper';

export default class Register extends Fragment {
    @InjectController({})
    navController!: NavController;
    @Inject({ id: "@+id/submit" })
    private validateButton!: Button;
    constructor() {
        super();
    }

    public onResume(obj: any): void {
    }

    async gotoPersonalMemScreen(obj: any) {
        if (await this.validateForm("membership", this.validateButton)) {
            await this.navController.reset().navigateTo(register_membership_personal).executeCommand();
        }
    }

    async goToPreviousScreen() {
        await this.navController.reset().popBackStack().executeCommand();
    }

    async goToOtpForm(obj: any) {
        if (await this.validateForm("personal", this.validateButton)) {
            await this.sendOtp(obj);
        }
    }

    @Progress("@string/loading")
    private async sendOtp(obj: any) {
        await AdapterFactory.getInstance().sendOtp(obj.mobileNumber);
        this.navController.reset().navigateTo(register_membership_otp).executeCommand();
    }

    @EventType(RegSubmitEvent)
    async validateMemOTP(event: RegSubmitEvent) {
        if (await this.validateForm("otpForm", this.validateButton)) {
            await this.register(event);
        }        
    }

    async payNow() {
        DialogHelper.alert("Integrate your favourite payment gateway here :)))", () => {});
    }

    async viewMemberShipDetails() {
        if (await this.validateForm("membership", this.validateButton)) {
            await this.navController.reset().navigateTo(register_membership_details).executeCommand();
        }
    }

    @Progress("@string/loading")
    private async register(regSubmitEvent: RegSubmitEvent) {       
        await AdapterFactory.getInstance().register(regSubmitEvent.getRegistration());
        this.navController.reset().navigateWithPopBackStackTo(register_membership_payment, "login", false,
            new ScopedObject("registration->session as map", regSubmitEvent.getRegistration()),
            new ScopedObject("onResume->view as string", "onResume(model = . from registration->session)")).executeCommand();
    }
}