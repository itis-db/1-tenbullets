INSERT INTO ActivityType (ActivityTypeId, Name)
VALUES
    (1, 'Program'),
    (2, 'Sub Program'),
    (3, 'Project'),
    (4, 'Contract'),
    (5, 'Point');

INSERT INTO Activity (ActivityId, ParentId, ActivityTypeId, Name, AreaId)
VALUES
    (1, NULL, 1, 'Program 1', NULL),
    (2, NULL, 1, 'Program 2', NULL),
    (3, 1, 2, 'Subprogram 1', NULL),
    (4, 1, 2, 'Subprogram 2', NULL),
    (5, 3, 3, 'Project 1', NULL),
    (6, 3, 3, 'Project 2', NULL),
    (7, 5, 5, 'КТ', NULL);

INSERT INTO Program (ActivityId)
VALUES (1),(2),(3),(4);

INSERT INTO SubProgram (ActivityId)
VALUES (3),(4);

INSERT INTO Project (ActivityId)
VALUES (7),(8),(9),(10);

INSERT INTO Point (ActivityId)
VALUES (1),(2),(3),(4),(5),(6);

INSERT INTO Contract (ActivityId, AreaId)
VALUES (3, 2),(9, 2),(7, 4);


