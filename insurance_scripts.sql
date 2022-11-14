-- to get affected customers
select * from insurancesubscription i where lastpaymentdate is null;

update insurancesubscription set lastpaymentdate = '2021-08-23 00:00:00' where lastpaymentdate is null;

update notificationtemplate set message = 'Hello ${customerFirstName}, your monthly insurance premium of KSh ${premiumAmount} for the month of ${premiumMonth} has been deducted from your Timiza account. We are happy to be of service.'
where notificationtemplatecode = 'INAMS_SMS';

update notificationtemplate set message = '<html>
  <body>
    Hello ${customerFirstName}, <br /><br />
    your monthly insurance premium of Ksh $(premiumAmount) for the month of ${premiumMonth} has been deducted from your Timiza account. We are happy to be of service. <br /><br />
    Regards, <br /><br />

    <font face="calibri" size="4" color="RED"><b>Timiza</b></font
    ><br /><br />
    <font face="calibri" size="3"><b>T</b> +254 709 213 000</font><br />
    <font face="calibri" size="3"><b>M</b> +254 204 265 000</font><br />
    <font face="calibri" size="3"><b>E</b> Timiza.KE@absa.africa</font
    ><br /><br />
    <font face="calibri" size="3">Absa HQ, Waiyaki Way - Nairobi</font
    ><br /><br />
  </body>
</html>'
where notificationtemplatecode = 'INAMS_EMAIL';

update notificationtemplate set message = 'Hello ${customerFirstName}, your annual premium of KSh ${premiumAmount} has been deducted from your Timiza account. We are happy to be of service.'
where notificationtemplatecode = 'INAYS_SMS';

update notificationtemplate set message = '<html>
  <body>
    Hello ${customerFirstName}, <br /><br />
    your annual premium of Ksh ${premiumAmount} has been deducted from your Timiza account. We are happy to be of service. <br /><br />
    Regards, <br /><br />

    <font face="calibri" size="4" color="RED"><b>Timiza</b></font
    ><br /><br />
    <font face="calibri" size="3"><b>T</b> +254 709 213 000</font><br />
    <font face="calibri" size="3"><b>M</b> +254 204 265 000</font><br />
    <font face="calibri" size="3"><b>E</b> Timiza.KE@absa.africa</font
    ><br /><br />
    <font face="calibri" size="3">Absa HQ, Waiyaki Way - Nairobi</font
    ><br /><br />
  </body>
</html>'
where notificationtemplatecode = 'INAYS_EMAIL';

update notificationtemplate set message = 'Hello ${customerFirstName}, your Timiza insurance policy has not been renewed due to insufficient funds in your Timiza account. Kindly fund your Timiza account within the next 2 days with KSh ${premiumAmount}, to facilitate payment for your insurance cover.'
where notificationtemplatecode = 'INAF_SMS';

update notificationtemplate set message = '<html>
  <body>
    Hello ${customerFirstName}, <br /><br />
    Your Timiza insurance policy has not been renewed due to insufficient funds in your Timiza account. <br /> Kindly fund your Timiza account within the next 2 days with KSh ${premiumAmount}, to facilitate payment for your insurance cover. <br /><br />
    Regards, <br /><br />

    <font face="calibri" size="4" color="RED"><b>Timiza</b></font
    ><br /><br />
    <font face="calibri" size="3"><b>T</b> +254 709 213 000</font><br />
    <font face="calibri" size="3"><b>M</b> +254 204 265 000</font><br />
    <font face="calibri" size="3"><b>E</b> Timiza.KE@absa.africa</font
    ><br /><br />
    <font face="calibri" size="3">Absa HQ, Waiyaki Way - Nairobi</font
    ><br /><br />
  </body>
</html>'
where notificationtemplatecode = 'INAF_EMAIL';


update notificationtemplate set message = 'Hello ${customerFirstName}, Kindly note that your Timiza insurance cover has lapsed due to non-payment of the insurance premium. To reinstate the Personal accident cover of KSh ${personalAccidentAmount} and Funeral Expense cover of KSh ${funeralExpenseAmount}, dial *848# or access the Timiza app and subscribe afresh.'
where notificationtemplatecode = 'INAL_SMS';

update notificationtemplate set message = '<html>
  <body>
    Hello ${customerFirstName}, <br /><br />
    Kindly note that your Timiza insurance cover has lapsed due to non-payment of the insurance premium.<br /> To reinstate the Personal accident cover of KSh ${personalAccidentAmount} and Funeral Expense cover of KSh ${funeralExpenseAmount}, dial *848# or access the Timiza app and subscribe afresh. <br /><br />
    Regards, <br /><br />

    <font face="calibri" size="4" color="RED"><b>Timiza</b></font
    ><br /><br />
    <font face="calibri" size="3"><b>T</b> +254 709 213 000</font><br />
    <font face="calibri" size="3"><b>M</b> +254 204 265 000</font><br />
    <font face="calibri" size="3"><b>E</b> Timiza.KE@absa.africa</font
    ><br /><br />
    <font face="calibri" size="3">Absa HQ, Waiyaki Way - Nairobi</font
    ><br /><br />
  </body>
</html>'
where notificationtemplatecode = 'INAL_EMAIL';
