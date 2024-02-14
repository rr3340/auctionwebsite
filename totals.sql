CREATE VIEW Totals AS
SELECT
i1.full_name,
i1.item_category,
i1.amount_bid - i1.item_base_price as Profit
FROM (SELECT
u.umember_id,
u.seller_num,
CONCAT(p.first_name, ' ' , p.last_name) as full_name,
ii.item_name,
ii.item_category,
ii.item_base_price,
ai.amount_bid
FROM users u
LEFT JOIN personal_information p on u.umember_id = p.pimember_id
LEFT JOIN seller s on u.seller_num = s.sseller_id
LEFT JOIN items i on s.sseller_id = i.access_seller_id
LEFT JOIN item_info ii on i.iitem_id = ii.iiitem_id
LEFT JOIN auctions a on i.iitem_id = a.item_id
LEFT JOIN auctions_info ai on a.aauction_id = ai.aiauction_id
WHERE seller_num > 0 AND item_name IS NOT NULL AND aiauction_id IS NOT NULL) i1;