import AdapterFactory from './adapter/AdapterFactory';
import { Button } from './android/widget/ButtonImpl';
import EventType from './app/EventType';
import { Fragment, Inject } from './app/Fragment';
import Progress from './decorator/Progress';
import { UpdatePasswordEvent } from './Events';
import { PasswordUpdate } from './Model';
import { NavController, InjectController } from './navigation/NavController';
export default class ChangePassword extends Fragment {
    @InjectController({})
    navController!: NavController;
    @Inject({ id: "@+id/submit" })
    private validateButton!: Button;
    constructor() {
        super();
    }

    async goToPreviousScreen(obj: any) {
        await this.navController.reset().popBackStack().executeCommand();
    }

    @EventType(UpdatePasswordEvent)
    async changePassword(event: UpdatePasswordEvent) {
        if (await this.validateForm("changePasswordForm", this.validateButton)) {
            await this.changePasswordWithProgress(event.getPasswordUpdate());
        }
    }

    @Progress("@string/loading")
    private async changePasswordWithProgress(model : PasswordUpdate) {
        await AdapterFactory.getInstance().updatePassword(model);
        this.navController.reset().popBackStack().executeCommand();
    }
}