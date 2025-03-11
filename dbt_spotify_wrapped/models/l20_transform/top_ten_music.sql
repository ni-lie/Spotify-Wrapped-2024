{{ config(materialized='table') }}

SELECT 
    trackName,
    artistName,
    SUM(msPlayed) / 60000 AS totalMinutesPlayed
FROM {{ ref('streaming_history_music') }}
GROUP BY trackName, artistName
ORDER BY totalMinutesPlayed DESC
LIMIT 10