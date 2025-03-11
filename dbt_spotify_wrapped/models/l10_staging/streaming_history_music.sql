{{ config(materialized='table') }}

SELECT 
    endTime::TIMESTAMP AS endTime,
    artistName,
    trackName,
    msPlayed
FROM '../Spotify-Account-Data/StreamingHistory_music_0.json'