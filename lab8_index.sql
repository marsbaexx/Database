CREATE INDEX test1 ON countries(name);
CREATE INDEX test2 ON employees(name, surname);
CREATE UNIQUE INDEX test3 ON employees(salary) WHERE salary < value1 AND salary > value2;
CREATE INDEX test4 ON employees(substring(name, 1, 4));
CREATE INDEX test5 ON employees(department_id, salary) WHERE salary < value2;
CREATE INDEX test6 ON departments(department_id, budget) WHERE budget > value2;
