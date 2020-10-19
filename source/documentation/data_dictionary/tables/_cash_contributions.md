## cash contributions

details about cash contributions

```
id: UUID <<PK>>
application_id: UUID <<FK>>         Currently called project Id.
amount: Float                       value in pounds and pence
description: Text                   description of the contribution
secured_type_id: Integer            link to more data on the secured_type table.  
created_at: Timestamp
updated_at: Timestamp
```