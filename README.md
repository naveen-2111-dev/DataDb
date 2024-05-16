# CRUD backend

This backend code is used for performing CRUD operations(create, read, update, Delete) on user data or other data

## Tech Stack

- typescript
- prisma
- postgreSQL

## How To use

**1.** _clone the Repo_:

```
git clone <repo-url>
```

**2.** _install node_modules_:

```
npm install
or
yarn
```

this will install all the needed dependencies

**3.** _connect to your database_
create an '.env' file and add your database_url:
' DATABASE_URL = "postgresql://<username>:<password>@localhost:5432/<database-name>" '

**4.** _Migrate_:

```
npm run migrate
or
yarn migrate
```

**5.** _generate prisma client-js_:

```
npm run generate
or
yarn generate
```

**6.** _to formate code_:

````
npm run format
or
yarn format
```
format the code whenever its needed to organize the code and increase the code readablity


**7.** *start project*:
````

npm run dev
or
yarn dev

```
