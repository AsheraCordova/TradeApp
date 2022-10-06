package com.ashera;

import org.teavm.classlib.ResourceSupplier;
import org.teavm.classlib.ResourceSupplierContext;

public class ResourcesSupplier implements ResourceSupplier {
	@Override
	public String[] supplyResources(ResourceSupplierContext context) {
		String[] result = { "www/css/styles.css", "res/xml/config.xml",
				//start - body
"www/layout/activity_main.xml",
"www/layout/allocated_items.xml",
"www/layout/change_password.xml",
"www/layout/dashboard.xml",
"www/layout/datepicker.xml",
"www/layout/error.xml",
"www/layout/erroritem.xml",
"www/layout/error_detail.xml",
"www/layout/faq.xml",
"www/layout/forgot_password.xml",
"www/layout/forgot_password_otp.xml",
"www/layout/index.xml",
"www/layout/item_booking.xml",
"www/layout/item_booking_summary.xml",
"www/layout/item_trading_confirmation.xml",
"www/layout/item_trading_confirmation_summary.xml",
"www/layout/login.xml",
"www/layout/membership_details.xml",
"www/layout/membership_profile_intrests.xml",
"www/layout/membership_profile_personal.xml",
"www/layout/membership_profile_summary.xml",
"www/layout/membership_template.xml",
"www/layout/my_weekly_transaction_bookeditem.xml",
"www/layout/my_weekly_transaction_tradeditem.xml",
"www/layout/my_week_transaction.xml",
"www/layout/notification_list.xml",
"www/layout/notification_list_item.xml",
"www/layout/redeem_points.xml",
"www/layout/redeem_points_bought.xml",
"www/layout/redeem_points_bought_footer.xml",
"www/layout/redeem_points_earnings.xml",
"www/layout/redeem_points_earnings_footer.xml",
"www/layout/redeem_points_redeems.xml",
"www/layout/redeem_points_redeems_footer.xml",
"www/layout/register_membership.xml",
"www/layout/register_membership_details.xml",
"www/layout/register_membership_otp.xml",
"www/layout/register_membership_payment.xml",
"www/layout/register_membership_personal.xml",
"www/layout/timepicker.xml",
"www/layout/toolbar.xml",
"www/layout/webview.xml",
"www/layout/welcome.xml",
//end - body
		};
		return result;
	}
}