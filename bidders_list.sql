SELECT
u.umember_id,
u.bidder_num,
CONCAT(p.first_name, ' ' , p.last_name) as full_name,
ii.item_name,
ii.item_category,
ii.item_quality,
ai.aiauction_id,
ai.amount_bid,
i.iitem_id
FROM users u
LEFT JOIN personal_information p on u.umember_id = p.pimember_id
LEFT JOIN bidders b on u.bidder_num = b.bbidder_id
LEFT JOIN auctions a on a.access_bidder_id = b.bbidder_id
LEFT JOIN items i on a.item_id = i.iitem_id
LEFT JOIN item_info ii on i.iitem_id = ii.iiitem_id
LEFT JOIN auctions_info ai on a.aauction_id = ai.aiauction_id
WHERE auction_status = 0 AND item_name IS NOT NULL AND aiauction_id IS NOT NULL;