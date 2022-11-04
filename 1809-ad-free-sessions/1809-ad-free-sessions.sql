# Write your MySQL query statement below
SELECT
    session_id
FROM
    Playback
WHERE
    session_id NOT IN(
        SELECT
            pb.session_id
        FROM
            Playback pb, Ads ad
        WHERE
            ad.timestamp <= pb.end_time
                AND
            ad.timestamp >= pb.start_time
                AND
            pb.customer_id = ad.customer_id
    )