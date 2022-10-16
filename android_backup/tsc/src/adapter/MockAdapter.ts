import Adapter from './Adapter';
import { plainToClass, plainToInstance } from 'class-transformer';
import { User, Item, Store, BookedItem, Notification, RegistrationScreenData, Registration, TradeItem, Transaction, Earning, RedeemTransaction, BoughtTransaction, PasswordUpdate } from "../Model";
import dedent from "ts-dedent";

function sleep(ms: number) {
    return new Promise(resolve => setTimeout(resolve, ms));
}
export default class MockAdapter implements Adapter {
    mockData: any = {
        "earning": {
            totalPoints: 200,
            totalSavings: 300
        },
        "notifications": [
            { id: "1", title: "Title", "desc": "Lorem Ipsum is simply dummy text of the printing and typesetting industry.", "createdDate": "01/01/2020" },
            { id: "2", title: "Title", "desc": "Lorem Ipsum is simply dummy text of the printing and typesetting industry.", "createdDate": "01/01/2022" },
            { id: "3", title: "Title", "desc": "Lorem Ipsum is simply dummy text of the printing and typesetting industry.", "createdDate": "01/01/2023" },
        ],
        "user": {
            "id": 1,
            "firstName": "Ram",
            "lastName": "M",
            "dob": "01/01/1980",
            "emailId": "a@A.com",
            "mobileNumber": "+91 9999999999",
            "favPartyingDays": []

        },
        "stores": [
            { id: "", name: "" },
            { id: "1", name: "Test Store - Jayanagar" },
            { id: "2", name: "Test Store - VijayNagar" },
        ],
        "registrationScreenData": {
            "regTypes":
                [
                    {
                        "id": "0", "title": "Membership 1", "desc": "Best for starters between age 18 & 20",
                        "details": dedent`<span textStyle="bold">THE MEMBERSHIP FEE FOR ACQUIRING MEMBERSHIP 1 IS 1 INR INCLUSIVE OF GST</span>
                <br><br>
                <ul>
                <li>Nulla pharetra metus ac ligula aliquam lacinia.</li>
                <li>Duis venenatis ante vel sem eleifend convallis.</li>
                <li>Curabitur luctus purus eu purus laoreet egestas.</li>
                <li>In vestibulum leo sit amet pellentesque rhoncus.</li>
                <li>Mauris vel lectus sed tortor luctus sollicitudin at a nibh.</li>
                </ul>`},
                    {
                        "id": "1", "title": "Membership 2", "desc": "Lot of facilities",
                        "details": dedent`<span textStyle="bold">THE MEMBERSHIP FEE FOR ACQUIRING MEMBERSHIP 2 IS 5 INR inclusive of GST</span>
                <br><br>
                <ul>
                    <li>Morbi a sapien eget leo gravida vulputate.</li>
                    <li>Curabitur vestibulum lacus sit amet mauris dictum hendrerit.</li>
                    <li>Donec dictum orci vitae quam semper mollis.</li>
                </ul>`},
                    {
                        "id": "2", "title": "Membership 3", "desc": "Lot of facilities",
                        "details": dedent`<span textStyle="bold">THE MEMBERSHIP FEE FOR ACQUIRING MEMBERSHIP 1 IS 100 INR INCLUSIVE OF GST</span>
                <br><br>
                <ul>
                <li>Proin quis magna ac est facilisis scelerisque sit amet at erat.</li>
                <li>Etiam quis tortor eget ligula bibendum porta.</li>
                <li>Aenean sollicitudin dolor vel magna cursus, vitae mollis ante mollis.</li>
                <li>Praesent volutpat orci eu purus consectetur, et congue turpis vestibulum.</li>
                </ul>`}
                ],
            "favDrinks": [{ "id": "", "value": "" }, { "id": "1", "value": "Sprite" }, { "id": "2", "value": "Coco-cola" }, { "id": "3", "value": "Mango Juice" }],
            "favStarters": [{ "id": "", "value": "" }, { "id": "1", "value": "Finger Chips" }, { "id": "2", "value": "Tomato Soup" }],
        },
        "allocatedItems": [
            { id: "1", name: "Kingfisher", "desc": "Kingfisher isn't just a beer, it’s a religion in itself", "noOfItems": 1, "category": "Drinks", memPrice: 80, menuPrice: 100 },
            { id: "2", name: "Carlsberg", "desc": "Probably The Best in The World", "noOfItems": 10, "category": "", memPrice: 50, menuPrice: 100 },
            { id: "3", name: "Sweet potato tikki", "desc": "Boiled, mashed sweet potatoes", "noOfItems": 2, "category": "Food", memPrice: 20, menuPrice: 200 },
            { id: "4", name: "Sabudana Tikki", "desc": "Crispy from the outside and soft, melt-in-your-mouth kind from the inside", "noOfItems": 2, "category": "", memPrice: 20, menuPrice: 200 },
            { id: "5", name: "Indian Onion Salad", "desc": "A quick side dish for your North Indian meal or tandoori appetizers", "noOfItems": 2, "category": "", memPrice: 20, menuPrice: 200 },
            { id: "6", name: "Bread Roll Recipe", "desc": "Stuffed with spiced potato-peas mixture and shaped into roll.", "noOfItems": 2, "category": "", memPrice: 20, menuPrice: 200 },
        ],
        "tradedItems": [
            { "item": { id: "1", name: "Kingfisher", "desc": "Kingfisher isn't just a beer, it’s a religion in itself", "category": "Drinks", menuPrice: 100 }, "noOfItems": 1, memPrice: 80, "tokenNumber": "TOK1234567890", "tradePrice": 100, "pointsEarned": 20, "contactNumber": "1234567890", "dateOfVisit": "01/01/2000", "store": { "name": "Test Store - Jayanagar" } }
        ],
        "bookedItems": [
            { "item": { id: "1", name: "Kingfisher", "desc": "Kingfisher isn't just a beer, it’s a religion in itself", "category": "Drinks", menuPrice: 100, memPrice: 80 }, "noOfItems": 1, "tokenNumber": "TOK1234567890", "expiryDate": "01/01/2000", "dateOfBooking": "01/01/2000", "store": { "name": "Test Store - Jayanagar" } }
        ]


    };

    public async login(username: string, password: string): Promise<User> {
        await sleep(1000);
        const user: User = plainToClass(User, this.mockData.user);
        if (username === '1') {
            user.status = "Registered";
        } else {
            user.status = "Complete";
        }
        return user;
    }

    public async getAllocatedItems(): Promise<Item[]> {
        await sleep(1000);
        return plainToClass(Item, this.mockData.allocatedItems as Object[]);
    }

    public async getStores(): Promise<Store[]> {
        await sleep(1000);
        return plainToClass(Store, this.mockData.stores as Object[]);
    }

    public async getRegScreenData(): Promise<RegistrationScreenData> {
        await sleep(1000);
        return plainToClass(RegistrationScreenData, this.mockData.registrationScreenData);
    }

    public async getNotifications(): Promise<Notification[]> {
        await sleep(1000);
        return plainToClass(Notification, this.mockData.notifications as Object[]);
    }

    public async bookItem(bookedItem: BookedItem): Promise<void> {
        await sleep(1000);
        bookedItem.createdOn = new Date();
        bookedItem.expiryDate = bookedItem.dateOfBooking;
        bookedItem.tokenNumber = "TOK" + new Date().getTime();
    }

    public async sendOtp(mobileNumber: string): Promise<void> {
        await sleep(1000);
    }

    public async register(registration: Registration): Promise<void> {
        await sleep(1000);
        registration.id = "MEM" + new Date().getTime();
    }

    public async tradeItem(tradedItem: TradeItem): Promise<void> {
        await sleep(1000);
        tradedItem.createdOn = new Date();
        tradedItem.tokenNumber = "TOK" + new Date().getTime();
    }

    public async updateUser(user: User): Promise<void> {
        await sleep(1000);
    }

    public async getTradedItems(): Promise<TradeItem[]> {
        await sleep(1000);
        return plainToClass(TradeItem, this.mockData.tradedItems as Object[]);
    }

    public async getBoughtItems(): Promise<BookedItem[]> {
        await sleep(1000);
        return plainToClass(BookedItem, this.mockData.bookedItems as Object[]);
    }

    public async getConfirmedTransactions(page: number, pageSize: number): Promise<Earning> {
        await sleep(1000);
        let earning: Earning = this.mockData.earning;
        if (page >= 4) {
            earning.transactions = [];
            return earning;
        }
        let transactions: Transaction[] = [];
        for (let i = 0; i < 10; i++) {
            transactions.push(plainToClass(Transaction, {
                id: (i + 1) + ((page - 1) * pageSize),
                points: page * 100 * (i + 1),
                createdDate: "01/01/202" + i,
                noOfItems: 1,
                item: { id: "1", name: "Kingfisher", "desc": "Kingfisher isn't just a beer, it’s a religion in itself", "noOfItems": 1, "category": "Drinks", memPrice: 80, menuPrice: 100 },
            }));
        }
        earning.transactions = transactions;
        return plainToClass(Earning, this.mockData.earning);
    }

    public async getRedeemTransactions(page: number, pageSize: number): Promise<RedeemTransaction[]> {
        await sleep(1000);
        if (page >= 4) {
            return [];
        }

        let redeems: any = [];
        for (let i = 0; i < 10; i++) {
            redeems.push({
                id: (i + 1) + ((page - 1) * pageSize),
                points: page * 100 * i,
                createdDate: "01/01/2022",
                billNumber: "TKS00938380303"
            });
        }

        return plainToClass(RedeemTransaction, redeems as Object[]);
    }


    public async getBoughtTransactions(page: number, pageSize: number): Promise<BoughtTransaction[]> {
        await sleep(1000);
        if (page >= 4) {
            return [];
        }
        let boughtItems: any = [];
        for (let i = 0; i < 10; i++) {
            boughtItems.push(plainToClass(BoughtTransaction, {
                id: (i + 1) + ((page - 1) * pageSize),
                createdDate: "01/01/202" + i,
                noOfItems: 1,
                item: { id: "1", name: "Kingfisher", "desc": "Kingfisher isn't just a beer, it’s a religion in itself", "noOfItems": 1, "category": "Drinks", memPrice: 80, menuPrice: 100 },
            }));
        }
        return plainToClass(BoughtTransaction, boughtItems as Object[]);
    }

    public async updatePassword(model: PasswordUpdate): Promise<void> { 
        await sleep(1000);
    }
}