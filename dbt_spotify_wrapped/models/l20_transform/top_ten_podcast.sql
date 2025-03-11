SELECT
    podcastName,
    SUM(msPlayed) / 60000 AS totalMinutesPlayed
FROM {{ ref('streaming_history_podcast') }}
GROUP BY podcastName
ORDER BY totalMinutesPlayed DESC
LIMIT 10