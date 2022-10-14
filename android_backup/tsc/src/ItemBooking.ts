import { Fragment, Inject } from './app/Fragment';
import { NavController, InjectController } from './navigation/NavController';
import { Button } from './android/widget/ButtonImpl';
import { item_booking_summary } from './R/NavGraph';
import AdapterFactory from './adapter/AdapterFactory';
import { eventBus, itemBookedEvent, ItemBoughtClickEvent } from './Events';
import { BookedItem } from './Model';
import Progress from './decorator/Progress';
import { ScopedObject } from './app/ScopedObject';
import EventType from './app/EventType';

export default class ItemBooking extends Fragment {
    @InjectController({})
    navController!: NavController;
    @Inject({ id: "@+id/submit" })
    private submit!: Button;

    constructor() {
        super();
    }

    async goToPreviousScreen() {
        await this.navController.reset().popBackStack().executeCommand();
    }

    @EventType(ItemBoughtClickEvent)
    async confirmItemBooking(event: ItemBoughtClickEvent ) {
        if (await this.validateForm("bookingForm", this.submit)) {
            let bookedItem: BookedItem = event.getBookedItem();
            bookedItem.item = event.getItem();
            bookedItem.user = event.getUser();
            this.bookItemWithProgress(bookedItem);
        }
    }

    @Progress("@string/loading")
    async bookItemWithProgress(bookedItem: BookedItem) {
        await AdapterFactory.getInstance().bookItem(bookedItem);
        eventBus.publish(itemBookedEvent({bookedItem}));
        this.navController.reset().navigateWithPopBackStack(item_booking_summary, 
            new ScopedObject("item->view as map", bookedItem)).executeCommand();        
    }
}