## outcomes

Table that records the outcome of an application.

```
id: UUID <<PK>>                     
application_id: UUID <<FK>>         Link to application table
outcome_type: Integer <<FK>>        Link to outcome_type table
description: Text                   Description of the outcome
created_at: Timestamp
updated_at: Timestamp
```