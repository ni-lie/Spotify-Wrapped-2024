SELECT UNNEST(albums, recursive:=true) 
FROM {{ ref('my_library') }}