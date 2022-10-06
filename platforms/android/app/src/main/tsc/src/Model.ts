import { Type, Expose, Transform } from 'class-transformer';
import moment from 'moment';

export function DateToString() {
  const toPlain = Transform(({ value }) => moment(value as Date).format('DD/MM/yyyy'), {
    toPlainOnly: true,
  });

  const toClass = Transform(({ value }) => moment(value, "DD/MM/yyyy").toDate(), {
    toClassOnly: true,
  });

  return function (target: any, key: string) {
    toPlain(target, key);
    toClass(target, key);
  };
}

export function BooleanToString() {
  const toPlain = Transform(({ value }) => Boolean(value as boolean) ? "true" : "false", {
    toPlainOnly: true,
  });

  const toClass = Transform(({ value }) => value != null && (value as string).toLowerCase() == 'true', {
    toClassOnly: true,
  });

  return function (target: any, key: string) {
    toPlain(target, key);
    toClass(target, key);
  };
}


const toPlainTransformInt = Transform(({ value }) => (value | 0) + "", {
  toPlainOnly: true,
});

const toClassTransformInt = Transform(({ value }) => parseInt(value), {
  toClassOnly: true,
});

export function StringToIntOnly() {
  return function (target: any, key: string) {
    toClassTransformInt(target, key);
  };
}
export function IntToString() {
  return function (target: any, key: string) {
    toPlainTransformInt(target, key);
    toClassTransformInt(target, key);
  };
}

export class User {
  id: number;
  firstName: string;
  lastName: string;
  @DateToString()
  dob: Date;
  emailId: string;
  mobileNumber: string;
  status: string;
  gender: string;
  city: string;
  state: string;
  officeAddress: string;
  residenceAddress: string;
  primaryFavouriteDrink: string;
  secondaryFavouriteDrink: string;
  favStarter: string;
  preferredMusic: string;
  preferredCuisine: string;
  karokeSinger: string;
  partyFrequency: string;
  favPartyingDays: string[] = [];

  @Expose()
  get membershipComplete() {
    return (this.status === 'Complete');
  }

  @Expose()
  get name() {
    return `${this.firstName} ${this.lastName}`;
  }
}

export class Item {
  id: string;
  name: string;
  desc: string;
  noOfItems: number;
  category: string;
  @IntToString()
  memPrice: number;
  @IntToString()
  menuPrice: number;
  @Expose()
  @IntToString()
  get save() {
    return ((this.menuPrice - this.memPrice) * 100) / this.menuPrice;
  }
}

export class Store {
  id: string;
  name: string;
}

export class BookedItem {
  @StringToIntOnly()
  noOfItems: number;
  @DateToString()
  dateOfBooking: Date;
  @DateToString()
  expiryDate: Date;
  @DateToString()
  createdOn: Date;

  @Type(() => Store)
  store: Store;
  @Type(() => Item)
  item: Item;
  @Type(() => User)
  user: User;
  tokenNumber: string;

  @Expose()
  get itemName(): string {
    if (this.item == null) {
      return '';
    }
    return this.item.name;
  }

  @Expose()
  @IntToString()
  get memPrice(): number {
    if (this.item == null) {
      return 0;
    }
    return this.item.memPrice;
  }

  @Expose()
  @IntToString()
  get save(): number {
    if (this.item == null) {
      return 0;
    }
    return this.item.save;
  }

  @Expose()
  get validAt(): string {
    if (this.store == null) {
      return '';
    }
    return this.store.name;
  }

  @Expose()
  @IntToString()
  get memberShipId(): number {
    if (this.user == null) {
      return 0;
    }
    return this.user.id;
  }

  @Expose()
  @IntToString()
  get pay(): number {
    if (this.item == null) {
      return 0;
    }
    return this.item.memPrice * this.noOfItems;
  }
}

export class Notification {
  @DateToString()
  createdDate: Date;
  title: string;
  desc: string;
  @Expose()
  @IntToString()
  get createdDay(): number {
    return this.createdDate.getDate();
  }

  @Expose()
  get createdMonthYear(): string {
    return moment(this.createdDate).format('MMM yyyy');
  }
}

export class RegistrationType {
  id: string;
  title: string;
  desc: string;
  details: string;
  @Expose()
  get description() {
    return `<span textColor='#000' textSize='16sp'>${this.title}</span><br><span textColor='#000' textSize='14sp'><![CDATA[${this.desc}]]></span>`;
  }
}

export class DropDown {
  id: string;
  value: string;
}

export class RegistrationScreenData {
  @Type(() => RegistrationType)
  regTypes: RegistrationType[];
  @Type(() => DropDown)
  favDrinks: DropDown[];
  @Type(() => DropDown)
  favStarters: DropDown[];
}

export class Registration {
  id: string;
  membershipType: string;
  firstName: string;
  lastName: string;
  @DateToString()
  dateOfBirth: Date;
  gender: string;
  mobileNumber: string;
  email: string;
  password: string;
  confirmPassword: string;
  primaryFavouriteDrink: string;
  secondaryFavouriteDrink: string;
  favStarter: string;
  otp:string;
  terms: boolean;
}

export class TradeItem {
  @IntToString()
  noOfItems: number;
  @IntToString()
  memPrice: number;
  @IntToString()
  tradePrice: number;
  @DateToString()
  dateOfVisit: Date;

  @Type(() => Store)
  store: Store;
  @Type(() => Item)
  item: Item;
  @Type(() => User)
  user: User;
  tokenNumber: string;
  contactNumber: string;
  @DateToString()
  createdOn: Date;

  @Expose()
  get itemName(): string {
    if (this.item == null) {
      return '';
    }
    return this.item.name;
  }

  @Expose()
  @IntToString()
  get save(): number {
    if (this.item == null) {
      return 0;
    }
    return this.item.save;
  }

  @Expose()
  get validAt(): string {
    if (this.store == null) {
      return '';
    }
    return this.store.name;
  }

  @Expose()
  @IntToString()
  get memberShipId(): number {
    if (this.user == null) {
      return 0;
    }
    return this.user.id;
  }

  @Expose()
  @IntToString()
  get pay(): number {
    return this.tradePrice * this.noOfItems;
  }

}

export class Earning {
  totalPoints: number;
  totalSavings: number;
  @Type(() => Transaction)
  transactions: Transaction[];
}

export class Transaction {
  @IntToString()
  id:string;
  @IntToString()
  points: number;
  @IntToString()
  noOfItems: number;
  @Type(() => Item)
  item: Item;
  @DateToString()
  createdDate: Date;

  @Expose()
  get itemName(): string {
    if (this.item == null) {
      return '';
    }
    return this.item.name;
  }

  @Expose()
  @IntToString()
  get createdDay(): number {
    return this.createdDate.getDate();
  }

  @Expose()
  get createdMonthYear(): string {
    return moment(this.createdDate).format('MMM yyyy');
  }

}

export class RedeemTransaction {
  @IntToString()
  id:string;
  @IntToString()
  points: number;
  billNumber: string;
  @DateToString()
  createdDate: Date;

  @Expose()
  @IntToString()
  get createdDay(): number {
    return this.createdDate.getDate();
  }

  @Expose()
  get createdMonthYear(): string {
    return moment(this.createdDate).format('MMM yyyy');
  }

}


export class PasswordUpdate {
  oldPassword:string;
  newPassword:string;
  confirmPassword:string;
}

export class BoughtTransaction {
  @IntToString()
  id:string;
  @IntToString()
  noOfItems: number;
  @Type(() => Item)
  item: Item;
  @DateToString()
  createdDate: Date;

  @Expose()
  get itemName(): string {
    if (this.item == null) {
      return '';
    }
    return this.item.name;
  }

  @Expose()
  @IntToString()
  get createdDay(): number {
    return this.createdDate.getDate();
  }

  @Expose()
  get createdMonthYear(): string {
    return moment(this.createdDate).format('MMM yyyy');
  }

  @Expose()
  @IntToString()
  get save() {
    if (this.item == null) {
      return '';
    }
    return ((this.item.menuPrice - this.item.memPrice) * 100) / this.item.menuPrice;
  }
}