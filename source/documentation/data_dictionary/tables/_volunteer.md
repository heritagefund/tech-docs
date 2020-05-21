##volunteer

Records details of volunteers included in an application. 

```
id: UUID <<PK>>
application_id: UUID <<FK>>
hours: Integer                      hours that the volunteer works (per...)
description: Text                   describes the work of the volunteer
created_at: Timestamp
updated_at: Timestamp
```