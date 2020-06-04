## costs

Different types of cost that make up the grant applicant is asking for.

e.g. Staff costs

```
id: UUID <<PK>>
application_id: UUID <<FK>>     links to application
cost_type: Integer <<FK>>       links to cost_type table
amount: Float                   Cost in pounds and pence
description: Text               
created_at : Timestamp
updated_at : Timestamp
```