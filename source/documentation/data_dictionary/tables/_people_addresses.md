##people_addresses

Link table that enables people to have a relationship
with more than one address.

```
id: UUID <<PK>>             
address_id: UUID <<FK>>     Contains the unique id for the row on the address table.
person_id: UUID <<FK>>       Contains the unique id for the person.
```