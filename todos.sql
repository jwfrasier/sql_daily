todoDb=# select * from todos;
 id |       title       |   details   | priority |         created_at         |        completed_at
----+-------------------+-------------+----------+----------------------------+----------------------------
  3 | Complete Homework | Math 101    |        1 | 2017-09-05 14:01:05.982051 |
  4 | Complete Homework | Math 101    |        1 | 2017-09-05 14:01:05.982051 |
  5 | Complete Homework | Math 101    |        1 | 2017-09-05 14:01:05.982051 |
  6 | Complete Homework | Math 101    |        1 | 2017-09-05 14:01:05.982051 |
  9 | Complete Homework | Science 201 |        3 | 2017-09-05 14:01:05.982051 |
  8 | Complete Homework | Math 201    |        5 | 2017-09-05 14:01:05.982051 |
  7 | Complete Homework | Math 101    |        1 | 2017-09-05 14:01:05.982051 | 2017-09-05 14:32:50.452596
(7 rows)

todoDb=# select * from todos where completed_at is null;
 id |       title       |   details   | priority |         created_at         | completed_at
----+-------------------+-------------+----------+----------------------------+--------------
  3 | Complete Homework | Math 101    |        1 | 2017-09-05 14:01:05.982051 |
  4 | Complete Homework | Math 101    |        1 | 2017-09-05 14:01:05.982051 |
  5 | Complete Homework | Math 101    |        1 | 2017-09-05 14:01:05.982051 |
  6 | Complete Homework | Math 101    |        1 | 2017-09-05 14:01:05.982051 |
  9 | Complete Homework | Science 201 |        3 | 2017-09-05 14:01:05.982051 |
  8 | Complete Homework | Math 201    |        5 | 2017-09-05 14:01:05.982051 |
(6 rows)

todoDb=# select * from todos where priority > 1;
 id |       title       |   details   | priority |         created_at         | completed_at
----+-------------------+-------------+----------+----------------------------+--------------
  9 | Complete Homework | Science 201 |        3 | 2017-09-05 14:01:05.982051 |
  8 | Complete Homework | Math 201    |        5 | 2017-09-05 14:01:05.982051 |
(2 rows)

todoDb=# update todos set completed_at = current_timestamp where id = 5;
UPDATE 1
todoDb=# select * from todos;
 id |       title       |   details   | priority |         created_at         |        completed_at
----+-------------------+-------------+----------+----------------------------+----------------------------
  3 | Complete Homework | Math 101    |        1 | 2017-09-05 14:01:05.982051 |
  4 | Complete Homework | Math 101    |        1 | 2017-09-05 14:01:05.982051 |
  6 | Complete Homework | Math 101    |        1 | 2017-09-05 14:01:05.982051 |
  9 | Complete Homework | Science 201 |        3 | 2017-09-05 14:01:05.982051 |
  8 | Complete Homework | Math 201    |        5 | 2017-09-05 14:01:05.982051 |
  7 | Complete Homework | Math 101    |        1 | 2017-09-05 14:01:05.982051 | 2017-09-05 14:32:50.452596
  5 | Complete Homework | Math 101    |        1 | 2017-09-05 14:01:05.982051 | 2017-09-05 14:40:43.576169
(7 rows)

todoDb=# delete from todos where completed_at < current_timestamp;
DELETE 2
todoDb=# select * from todos;
 id |       title       |   details   | priority |         created_at         | completed_at
----+-------------------+-------------+----------+----------------------------+--------------
  3 | Complete Homework | Math 101    |        1 | 2017-09-05 14:01:05.982051 |
  4 | Complete Homework | Math 101    |        1 | 2017-09-05 14:01:05.982051 |
  6 | Complete Homework | Math 101    |        1 | 2017-09-05 14:01:05.982051 |
  9 | Complete Homework | Science 201 |        3 | 2017-09-05 14:01:05.982051 |
  8 | Complete Homework | Math 201    |        5 | 2017-09-05 14:01:05.982051 |
(5 rows)

todoDb=#
