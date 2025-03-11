SELECT UNNEST(episodes, recursive:=true) 
FROM {{ ref('my_library') }}