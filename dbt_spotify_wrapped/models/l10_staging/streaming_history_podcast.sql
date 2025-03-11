SELECT 
    endTime::TIMESTAMP AS endTime,
    podcastName,
    episodeName,
    msPlayed
FROM '../Spotify-Account-Data/StreamingHistory_podcast_0.json'