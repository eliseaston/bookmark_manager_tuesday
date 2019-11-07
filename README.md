# Bookmark Manager

User stories:
```
As a user,
So I can see my most visited websites,
I want to see a list of bookmarks.
```
Domain model:
(from walkthrough)
![model](https://github.com/makersacademy/course/blob/master/bookmark_manager/images/bookmark_manager_1.png)

```
As a user,
So I can save my favourite site for future
I want to add a new bookmark.
```

### setting up the database and test database:
1. Connect to psql
2. Create the database using the psql command `CREATE DATABASE bookmark_manager;`
3. Connect to the database using the pqsl command `\c bookmark_manager;`
4. Run the query we have saved in the file 01_create_bookmarks_table.sql
5. Create a test database using the psql command `CREATE DATABASE bookmark_manager_test;`
6. Create a table using the psql command `CREATE TABLE bookmarks(id SERIAL PRIMARY KEY, url VARCHAR(60));`
