SELECT UNNEST(tracks, recursive:=true) 
FROM {{ ref('my_library') }}