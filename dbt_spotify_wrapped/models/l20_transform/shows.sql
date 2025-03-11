SELECT UNNEST(shows, recursive:=true) 
FROM {{ ref('my_library') }}