## organisation_missions

Records the relationship between organisations and their missions.
An organisation may have zero or many missions. The mission
table is a lookup table with a fixed number of mission types.  

```
id : UUID <<PK>>
organisation_id: UUID <<FK>>
created_at: Timestamp
updated_at: Timestamp
```