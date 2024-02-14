CREATE VIEW TOTAL_COST AS
SELECT
bi.full_name,
bi.item_name,
bi.amount_bid+bi.shipping_price as total_price
FROM (SELECT
u.bidder_num,
CONCAT(p.first_name, ' ' , p.last_name) as full_name,
ii.item_name,
ai.amount_bid,
si.shipping_type,
si.shipping_price,
wi.account_balance
FROM users u
LEFT JOIN personal_information p on u.umember_id = p.pimember_id
LEFT JOIN wallet w on u.umember_id = w.access_user_id
LEFT JOIN wallet_information wi on wi.wiwallet_id = w.wallet_id
LEFT JOIN bidders b on u.bidder_num = b.bbidder_id
LEFT JOIN auctions a on a.access_bidder_id = b.bbidder_id
LEFT JOIN items i on a.item_id = i.iitem_id
LEFT JOIN item_info ii on i.iitem_id = ii.iiitem_id
LEFT JOIN auctions_info ai on a.aauction_id = ai.aiauction_id
LEFT JOIN shipping s on s.bidder_id = a.access_bidder_id
LEFT JOIN shipping_info si on si.sishipping_id = s.shipping_id
WHERE auction_status = 0 AND item_name IS NOT NULL AND aiauction_id IS NOT NULL) bi;

CREATE VIEW TOTAL_BALANCE AS
SELECT
bi.full_name,
bi.account_balance
FROM (SELECT
u.bidder_num,
CONCAT(p.first_name, ' ' , p.last_name) as full_name,
ii.item_name,
ai.amount_bid,
si.shipping_type,
si.shipping_price,
wi.account_balance
FROM users u
LEFT JOIN personal_information p on u.umember_id = p.pimember_id
LEFT JOIN wallet w on u.umember_id = w.access_user_id
LEFT JOIN wallet_information wi on wi.wiwallet_id = w.wallet_id
LEFT JOIN bidders b on u.bidder_num = b.bbidder_id
LEFT JOIN auctions a on a.access_bidder_id = b.bbidder_id
LEFT JOIN items i on a.item_id = i.iitem_id
LEFT JOIN item_info ii on i.iitem_id = ii.iiitem_id
LEFT JOIN auctions_info ai on a.aauction_id = ai.aiauction_id
LEFT JOIN shipping s on s.bidder_id = a.access_bidder_id
LEFT JOIN shipping_info si on si.sishipping_id = s.shipping_id
WHERE auction_status = 0 AND item_name IS NOT NULL AND aiauction_id IS NOT NULL) bi;

CREATE VIEW Total_Transaction AS
SELECT
full_name,
SUM(total_price) as Cart,
Count(item_name) as total_items
FROM
	TOTAL_COST
	group by full_name;

SELECT * FROM Total_Transaction;

CREATE VIEW Prototype1 AS
SELECT
bi.full_name,
bi.item_name,
bi.amount_bid+bi.shipping_price as total_price,
bi.account_balance
FROM (SELECT
u.bidder_num,
CONCAT(p.first_name, ' ' , p.last_name) as full_name,
ii.item_name,
ai.amount_bid,
si.shipping_type,
si.shipping_price,
wi.account_balance
FROM users u
LEFT JOIN personal_information p on u.umember_id = p.pimember_id
LEFT JOIN wallet w on u.umember_id = w.access_user_id
LEFT JOIN wallet_information wi on wi.wiwallet_id = w.wallet_id
LEFT JOIN bidders b on u.bidder_num = b.bbidder_id
LEFT JOIN auctions a on a.access_bidder_id = b.bbidder_id
LEFT JOIN items i on a.item_id = i.iitem_id
LEFT JOIN item_info ii on i.iitem_id = ii.iiitem_id
LEFT JOIN auctions_info ai on a.aauction_id = ai.aiauction_id
LEFT JOIN shipping s on s.bidder_id = a.access_bidder_id
LEFT JOIN shipping_info si on si.sishipping_id = s.shipping_id
WHERE auction_status = 0 AND item_name IS NOT NULL AND aiauction_id IS NOT NULL) bi;


CREATE VIEW Total_cost3 AS
SELECT 
full_name,
sum(total_price) as Total
FROM Prototype1
group by 
	full_name;
  
CREATE VIEW Remaining_Bal AS
SELECT 
Total_cost3.full_name,
account_balance - Total as Remaining_Balance
FROM Prototype1
JOIN Total_cost3;

SELECT
full_name,
Remaining_Balance
from Remaining_Bal
group by
	full_name;
    
    
CREATE VIEW Wallet_Gain4 AS
SELECT
si.full_name,
si.amount_bid as withdrawal_amount,
si.account_balance
FROM (SELECT
u.umember_id,
u.seller_num,
CONCAT(p.first_name, ' ' , p.last_name) as full_name,
ii.item_name,
ii.item_category,
ii.item_quality,
ai.aiauction_id,
ii.item_base_price,
ai.amount_bid,
i.iitem_id,
wi.account_balance
FROM users u
LEFT JOIN personal_information p on u.umember_id = p.pimember_id
LEFT JOIN wallet w on u.umember_id = w.access_user_id
LEFT JOIN wallet_information wi on wi.wiwallet_id = w.wallet_id
LEFT JOIN seller s on u.seller_num = s.sseller_id
LEFT JOIN items i on s.sseller_id = i.access_seller_id
LEFT JOIN item_info ii on i.iitem_id = ii.iiitem_id
LEFT JOIN auctions a on i.iitem_id = a.item_id
LEFT JOIN auctions_info ai on a.aauction_id = ai.aiauction_id
WHERE seller_num > 0 AND item_name IS NOT NULL AND aiauction_id IS NOT NULL AND auction_status = 0) si;

CREATE VIEW Total_With4 AS
SELECT 
full_name,
sum(withdrawal_amount) as Total_Withdrawal
FROM Wallet_Gain4
group by
	full_name;
    
CREATE VIEW Cont_Bal3 AS
SELECT 
Total_With4.full_name,
account_balance + Total_Withdrawal as Current_Balance
FROM Wallet_Gain4
JOIN Total_With4
group by
	full_name;
    
select * from Cont_Bal3
