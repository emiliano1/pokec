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

## Answers

1. A Search Engine would allow for better searches and filtering.
2. I would integrate the system with Elastic Search to allow for optmized retrieval of the data, as we have many string fields in the table structure.
