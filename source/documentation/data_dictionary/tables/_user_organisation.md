## user_organisation

A table to create a one to many relationship between a 
user and an organisation

```
id: UUID <<PK>>
user_id: UUID <<FK>>               link to the user table
organisation_id: UUID <<FK>>       link to organisation table     
```