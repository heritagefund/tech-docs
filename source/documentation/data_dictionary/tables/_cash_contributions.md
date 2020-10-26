## cash contributions

details about cash contributions

```
id: UUID <<PK>>
application_id: UUID <<FK>>         Currently called project_id.
amount: Integer                     value in pounds (not pence)
description: Text                   description of the contribution
secured_type_id: Integer            link to more data on the secured_type table.  On the currently migrated database, this shows as "secured" and is an integer.
created_at: Timestamp
updated_at: Timestamp
```