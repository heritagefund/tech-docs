## supporting_evidence

Records the evidence that supports an application.  Called "Evidence of Support" in the current code.

```
id: UUID <<PK>>                     
application_id: UUID <<FK>>       Referred to as project_id on the current migration
description: Text                
created_at: Timestamp
updated_at: Timestamp
```