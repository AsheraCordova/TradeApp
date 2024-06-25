import { Type } from 'class-transformer';
import { Event } from './app/Event';
import { Item, BookedItem, User, Registration, TradeItem, PasswordUpdate } from "./Model";
import { EventBus, createEventDefinition } from "ts-bus";

export const eventBus = new EventBus();

export const itemBookedEvent = createEventDefinition<{
    bookedItem: BookedItem;
}>()("item.booked");

export const itemTradedEvent = createEventDefinition<{
    tradedItem: TradeItem;
}>()("item.traded");

export const profileUpdatedEvent = createEventDefinition<{
}>()("profile.updated");

export const interestsUpdatedEvent = createEventDefinition<{
}>()("interests.updated");

export class MenuItemEvent implements Event {
    itemId: string;
    id: string;
    action: string;
    eventType: string;
    event: string;
    parentFragments: string;
}

export class OnClickEvent implements Event {
    id: string;
    action: string;
    eventType: string;
    event: string;
    parentFragments: string;
}

export class ItemClickEvent extends OnClickEvent {
    @Type(() => Item)
    private model: Item;

    getItem(): Item {
        return this.model;
    }
}

export class ProfileUpdateClickEvent extends OnClickEvent {
    @Type(() => User)
    private model: User;

    getUser(): User {
        return this.model;
    }
}


export class UpdatePasswordEvent extends OnClickEvent {
    @Type(() => PasswordUpdate)
    private model: PasswordUpdate;

    getPasswordUpdate(): PasswordUpdate {
        return this.model;
    }
}

export class ItemBoughtClickEvent extends OnClickEvent {
    @Type(() => BookedItem)
    private bookedItem: BookedItem;
    @Type(() => User)
    private user: User;
    @Type(() => Item)
    private item: Item;

    getBookedItem(): BookedItem {
        return this.bookedItem;
    }

    getItem(): Item {
        return this.item;
    }

    getUser(): User {
        return this.user;
    }
}

export class ItemTradedEvent extends OnClickEvent {
    @Type(() => TradeItem)
    private tradedItem: TradeItem;
    @Type(() => User)
    private user: User;
    @Type(() => Item)
    private item: Item;

    getTradedItem(): TradeItem {
        return this.tradedItem;
    }

    getItem(): Item {
        return this.item;
    }

    getUser(): User {
        return this.user;
    }
}

export class RegSubmitEvent extends OnClickEvent {
    @Type(() => Registration)
    private registration: Registration;
    getRegistration(): Registration {
        return this.registration;
    }
}