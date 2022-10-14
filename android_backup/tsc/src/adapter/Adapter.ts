import { User, Item, Store, Notification, BookedItem, RegistrationScreenData, Registration, TradeItem, Earning, RedeemTransaction, BoughtTransaction, PasswordUpdate } from "../Model";

export default interface Adapter {
      updatePassword(model: PasswordUpdate):  Promise<void>;
      getBoughtTransactions(pageNumber: any, PAGE_SIZE: number): Promise<BoughtTransaction[]>;
      getRedeemTransactions(page: number, pageSize: number): Promise<RedeemTransaction[]>;
      getConfirmedTransactions(page: number, pageSize: number): Promise<Earning>;
      getBoughtItems(): Promise<BookedItem[]>;
      getTradedItems(): Promise<TradeItem[]>;
      updateUser(user: User):  Promise<void>;
      tradeItem(tradedItem: TradeItem) :  Promise<void>;
      register(registration: Registration):  Promise<void>;
      sendOtp(mobileNumber: string):  Promise<void>;
      bookItem(bookedItem: BookedItem):  Promise<void>;
      getRegScreenData() : Promise<RegistrationScreenData>;
      login(username: string, password: string) : Promise<User>;
      getAllocatedItems() : Promise<Item[]>;
      getStores() : Promise<Store[]>;
      getNotifications() : Promise<Notification[]>
}