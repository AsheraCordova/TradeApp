import { Fragment, Inject } from './app/Fragment';
import { NavController, InjectController } from './navigation/NavController';
import { membership_profile_personal, membership_profile_intrests } from './R/NavGraph';
import { Button } from './android/widget/ButtonImpl';
import { User } from './Model';
import { eventBus, interestsUpdatedEvent, ProfileUpdateClickEvent, profileUpdatedEvent } from './Events';
import { LinearLayout } from './android/widget/LinearLayoutImpl';
import Progress from './decorator/Progress';
import AdapterFactory from './adapter/AdapterFactory';
import { ScopedObject } from './app/ScopedObject';
import EventType from './app/EventType';
import { ImageView } from './android/widget/ImageViewImpl';
import { DialogHelper } from './helpers/DialogHelper';

export default class Profile extends Fragment {
    @InjectController({})
    navController!: NavController;

    @Inject({ id : "@+id/submit"})
    private validateButton!: Button;
    unsubscribeProfileUpdatedEvent: () => void;
    profileUpdatedEvent: any;

    @Inject({ id : "@+id/update_profile"})
    private updateProfile!: LinearLayout;
    interestsUpdatedEvent: any;
    unsubscribeInterestsUpdatedEvent: () => void;
    @Inject({ id : "@+id/userProfile"})
    private userProfile:ImageView;
    constructor() {
        super();
        
        this.unsubscribeProfileUpdatedEvent = eventBus.subscribe(profileUpdatedEvent, event => {
            this.profileUpdatedEvent = event.payload;
        });
        this.unsubscribeInterestsUpdatedEvent = eventBus.subscribe(interestsUpdatedEvent, event => {
            this.interestsUpdatedEvent = event.payload;
        });        
    }

    public onDestroy(obj: any): void {
        this.unsubscribeProfileUpdatedEvent();
        this.unsubscribeInterestsUpdatedEvent();
    }

    public async onResume(obj: any): Promise<void> {
        if (obj.actionUrl == 'layout/membership_profile_summary.xml') {
            if (this.profileUpdatedEvent != null) {
                this.updateProfile.reset().refreshUiFromModel("name,emailId,residence_address,office_address");
                await this.executeCommand(this.updateProfile);
                this.profileUpdatedEvent = null;
            }

            if (this.interestsUpdatedEvent != null) { 
                this.updateProfile.reset().refreshUiFromModel("karoke_singer,preferred_cuisine,preferred_music,party,party_frequency,fav_starter,primary_favourite_drink,secondary_favourite_drink,drink_separator");
                await this.executeCommand(this.updateProfile);
                this.interestsUpdatedEvent = null;
            }
        }        
    }

    @EventType(ProfileUpdateClickEvent)
    async gotoMembershipEditPersonal(event: ProfileUpdateClickEvent) {
        await this.navController.reset().navigateTo(membership_profile_personal,
            new ScopedObject("user->view as map", event.getUser())).executeCommand();
    }

    @EventType(ProfileUpdateClickEvent)
    async gotoMembershipEditInterests(event: ProfileUpdateClickEvent) {
        await this.navController.reset().navigateTo(membership_profile_intrests,
            new ScopedObject("user->view as map", event.getUser())).executeCommand();
    }

    async goToPreviousScreen() {
        await this.navController.reset().popBackStack().executeCommand();
    }

    @EventType(ProfileUpdateClickEvent)
    async updateIntrestsInfo(event: ProfileUpdateClickEvent) {
        if (await this.validateForm("interestsForm", this.validateButton)) {           
            await this.updateIntrestsInfoWithProgress(event.getUser());            
        }
    }

    @Progress("@string/loading")
    private async updateIntrestsInfoWithProgress(user: User) {
        await AdapterFactory.getInstance().updateUser(user);
        this.validateButton.reset().updateModelData( "user->session as map", user);
        await this.executeCommand(this.validateButton);
        eventBus.publish(interestsUpdatedEvent({}));
        this.navController.reset().popBackStack().executeCommand();
    }

    @EventType(ProfileUpdateClickEvent)
    async updatePersonalInfo(event: ProfileUpdateClickEvent) {
        if (await this.validateForm("personalForm", this.validateButton)) {
            await this.updatePersonalInfoWithProgress(event.getUser());
        }
    }

    @Progress("@string/loading")
    private async updatePersonalInfoWithProgress(user: User) {
        await AdapterFactory.getInstance().updateUser(user);
        this.validateButton.reset().updateModelData("user->session as map", user);
        await this.executeCommand(this.validateButton);
        eventBus.publish(profileUpdatedEvent({}));
        this.navController.reset().popBackStack().executeCommand();
    }

    async openCamera() {
        (navigator as any).camera.getPicture((imageData: any)=>{
            this.userProfile.setSrc("data:image/png;base64," + imageData);
            this.executeCommand(this.userProfile);
        }, (message: string) => {
            DialogHelper.alert(message, () => {});
        }, {            
            destinationType: 0            
        });
    }
}