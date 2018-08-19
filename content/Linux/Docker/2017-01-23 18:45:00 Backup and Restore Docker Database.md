# Backup and Restore MySQL Docker database

To backup / make a dump of a MySQL / MariaDB database within a Docker container, just run:

```bash
docker exec DATABASECONTAINER /usr/bin/mysqldump -u DATABASEUSER --password=DATABASEPASSWORD DATABASE > backup.sql
```

To restore a MySQL / MariaDB database from the `mysqldump`:

```bash
cat backup.sql | docker exec -i DATABASECONTAINER /usr/bin/mysql -u DATABASEUSER --password=DATABASEPASSWORD DATABASE
```

So a real-world example might look lie this:

```bash
docker exec wordpress-mysql /usr/bin/mysqldump -u root --password=correcthorsebatterystaple wordpressdb > backup.sql
```

And restoring:

```bash
cat backup.sql | docker exec -i wordpress-mysql /usr/bin/mysql -u root --password=correcthorsebatterystaple wordpressdb
```
