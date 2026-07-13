SELECT 
actor_id    
, director_id 
FROM ActorDirector 
-- WHERE actor_id = director_id
GROUP BY 1, 2
HAVING COUNT(*) >= 3