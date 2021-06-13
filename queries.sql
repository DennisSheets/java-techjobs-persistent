## Part 1: Test it with SQL

        SHOW COLUMNS FROM job

        -- id int
        -- name varchar(255)

## Part 2: Test it with SQL

        SELECT *
        FROM employer
        WHERE location="St. Louis City"

## Part 3: Test it with SQL

         -- Had to drop the job_skills table first (foreign key constraint on table job_skills)

        DROP TABLE job_skills;
        DROP TABLE job

## Part 4: Test it with SQL

        SELECT skill.name, skill.description
        FROM job_skills
        INNER JOIN skill ON job_skills.jobs_id = skill.id
        GROUP BY job_skills.jobs_id
        ORDER By name ASC


## APP SETUP

DROP TABLE job_skills;
DROP TABLE job;
DROP TABLE skill;
DROP TABLE employer;

INSERT skill (name, description)
VALUES  ("Dog Walking", "Ability to Walk");

INSERT skill (name, description)
VALUES  ("Reverse Engineering","Ability to quickly reduce an object/project to it's smallest units");

INSERT skill (name, description)
VALUES  ("Dream Big","The Ability to identify stretch goals and push the limitations");

INSERT skill (name, description)
VALUES  ("Listen","The Ability to calm your mind and hear what's being spoken before evaluating what is said");

INSERT skill (name, description)
VALUES  ("Self Starter", "THe Ability to create a plan and hold yourself to it without supervision or oversight");

INSERT skill (name, description)
VALUES ("Being Unprepared","The ability to sit on your ass and do nothing, along with an inability to ever come prepared")

INSERT employer (name, location)
VALUES  ("Sarah's Pony Petters","Wildwood, MO");

INSERT employer (name, location)
VALUES  ("Lulu's Pizazz","Clayton, MO");

INSERT employer (name, location)
VALUES  ("Lance and Sons Destructo R US, Inc","St. Louis City");

INSERT employer (name, location)
VALUES  ("Lily's Wilderness Survival Camps","Hamilton, NY");

INSERT employer (name, location)
VALUES  ("Will's Conservatory","St. Louis City");


INSERT job (name, employer_id)
VALUES  ("Part time Dog Walker",1);

INSERT job (name, employer_id)
VALUES  ("Image consultant",2);

INSERT job (name, employer_id)
VALUES  ("Building Demolition Expert",3);

INSERT job (name, employer_id)
VALUES  ("Wilderness Guide",4);

INSERT job (name, employer_id)
VALUES  ("Jazz Hands Specialist",5);

INSERT job_skills
VALUES (1,2),(1,5),(2,3),(3,4),(3,1),(3,5),(4,4),(5,1),(5,2),(5,3),(5,4),(5,5);