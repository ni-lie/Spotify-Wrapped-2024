SELECT UNNEST(artists, recursive:=true) 
FROM {{ ref('my_library') }}