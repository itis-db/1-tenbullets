WITH RECURSIVE HierarchicalActivity AS (

    SELECT
        A.ActivityId,
        A.Name AS ActivityName,
        A.AreaId,
        AT.Name AS ActivityTypeName,
        1 AS Level
    FROM Activity A
    JOIN ActivityType AT ON A.ActivityTypeId = AT.ActivityTypeId
    WHERE A.ParentId IS NULL


    UNION ALL

    SELECT
        A.ActivityId,
        A.Name AS ActivityName,
        A.AreaId,
        AT.Name AS ActivityTypeName,
        HA.Level + 1
    FROM Activity A
    JOIN ActivityType AT ON A.ActivityTypeId = AT.ActivityTypeId
    JOIN HierarchicalActivity HA ON A.ParentId = HA.ActivityId
    
)

SELECT
    HA.ActivityName,
    HA.AreaId AS Territory,
    HA.ActivityTypeName
FROM HierarchicalActivity HA
WHERE HA.Level IN (3, 5, 7);
