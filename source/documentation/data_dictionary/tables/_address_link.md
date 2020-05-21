##address_link

Link table that enables other tables to have a relationship
with more than one address.

```
id: UUID <<PK>>             
address_id: UUID <<FK>>     Contains the unique id for the row on the address table.
owner_id: UUID <<FK>>       Contains the unique id for the row on the table representating the domain that holds the address.
```