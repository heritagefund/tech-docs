##non_cash_contributions

records details of non cash contributions.

```
id: UUID <<PK>>
application_id: UUID <<FK>>
amount: Float                       the value in pounds and pence
description: Text                   a description for the contribution
created_at: Timestamp
updated_at: Timestamp
```