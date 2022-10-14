import Index from './Index';
import ErrorFragment from './ErrorFragment';
import ErrorDetailFragment from './ErrorDetailFragment';
import Login from './Login';
import Register from './Register';
import Dashboard from './Dashboard';
import ItemBooking from './ItemBooking';
import ForgotPassword from './ForgotPassword';
import ItemTrading from './ItemTrading';
import ChangePassword from './ChangePassword';
import NotificationList from './NotificationList';
import Profile from './Profile';
import WeeklyTransactions from './WeeklyTransactions';
import RedeemPoints from './RedeemPoints';
import WebView from './WebView';

export const fragmentMapper : any = {
  'layout/error.xml': ErrorFragment,
  'layout/error_detail.xml': ErrorDetailFragment,
  'layout/index.xml': Index,
  'layout/login.xml': Login,
  'layout/register_membership.xml': Register,
  'layout/register_membership_details.xml': Register,
  'layout/register_membership_personal.xml': Register,
  'layout/register_membership_otp.xml': Register,
  'layout/register_membership_payment.xml': Register,
  'layout/dashboard.xml': Dashboard,
  'layout/item_booking.xml': ItemBooking,
  'layout/item_booking_summary.xml': ItemBooking,
  'layout/item_trading.xml': ItemTrading,
  'layout/item_trading_confirmation.xml': ItemTrading,
  'layout/item_trading_confirmation_summary.xml': ItemTrading,
  'layout/forgot_password.xml': ForgotPassword,
  'layout/forgot_password_otp.xml': ForgotPassword,  
  'layout/change_password.xml': ChangePassword,
  'layout/notification_list.xml': NotificationList,
  'layout/membership_profile_summary.xml': Profile,
  'layout/membership_profile_personal.xml': Profile,
  'layout/membership_profile_intrests.xml': Profile,
  'layout/my_week_transaction.xml': WeeklyTransactions,
  'layout/redeem_points.xml': RedeemPoints,
  'layout/webview.xml': WebView,
  'layout/faq.xml': WebView
  
};
