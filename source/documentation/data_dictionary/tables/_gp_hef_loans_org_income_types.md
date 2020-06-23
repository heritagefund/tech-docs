## gp_hef_loans_org_income_types

Link table between gp_hef_loans and org_income_types

```
id: UUID <<PK>>
gp_hef_loan  : UUID <<FK>>
org_income_type  : UUID <<FK>>
created_at: Timestamp
updated_at: Timestamp
```