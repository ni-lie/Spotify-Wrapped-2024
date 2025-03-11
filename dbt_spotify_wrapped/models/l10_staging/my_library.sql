WITH raw_json AS (
    SELECT * FROM read_json_auto('../Spotify-Account-Data/YourLibrary.json')
)

SELECT * FROM raw_json

