WITH unnested_tracks AS (
    SELECT 
        UNNEST(tracks) AS unnestedTracks
    FROM {{ ref('my_library') }}
)

SELECT 
    UNNEST(unnestedTracks)    
FROM unnested_tracks