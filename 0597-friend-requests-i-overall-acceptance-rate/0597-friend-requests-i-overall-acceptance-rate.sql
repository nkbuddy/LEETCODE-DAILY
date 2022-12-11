# Write your MySQL query statement below
WITH accepted AS
(
SELECT DISTINCT
    requester_id, accepter_id
FROM
    RequestAccepted
)
, request AS
(
SELECT DISTINCT
    sender_id , send_to_id 
FROM
    FriendRequest
)
SELECT
    IFNULL(ROUND((SELECT COUNT(*)FROM accepted)/(SELECT COUNT(*)FROM request),2),0) AS 'accept_rate'
