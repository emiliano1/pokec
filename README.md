## Commands

Run these commands to create the `pokec` database and the `users` table:

```shell
$ createdb pokec
$ psql pokec < users_table.sql
```

Run this command to import the `soc-pokec-profiles` data into the `users` table:

```shell
$ psql -d pokec -c "COPY users FROM '/path/to/soc-pokec-profiles.tsv'"
```

## Reasoning

The `users` table structure maps the fiels from the `soc-pokec-profiles.txt` file. I didn't include any index, because this would make the import operations slower, and it wasn't clear what kind of indexes would be useful.

This approach allows for a quick importing of a high amount of data, that means it is favorable to a write heavy system. Read operations like ordering or filtering will be slow, due the lack of indexes. We can build a hybrid system to add these features (eg: PostgreSQL + Elastic Search).

We can build a simple `RESTful API` that exposes the `users` table, allowing for the `Create`, `Retrieve`, and `Update` operations.

## Answers

1. A Search Engine would allow for better searches and filtering.
2. I would integrate the system with Elastic Search to allow for optmized retrieval of the data, as we have many string fields in the table structure.
