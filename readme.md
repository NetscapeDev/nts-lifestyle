
# Framework
This lifestyle choice system has been designed to be adaptable to any type of server & framework, for now the version in ESX Legacy is available, a version for QbCore will be implemented soon.

# Config & SQL
Refer to the documentation setting your [config](https://app.gitbook.com/o/VU48gAOQ4jpQWkaNwQgG/s/FntAdaW2turge3bhlAYX/). 
```sql
ALTER TABLE `users` ADD COLUMN `lifestyle` VARCHAR(50) NULL DEFAULT;
```

# Features
* ability to create as many characters as you want
* ability to give money, items, vehicles and weapons
* state bags integrations
