## gp_hef_loans_plans_for_loans

Link table between gp_hef_loans and plans_for_loans

```
id: UUID <<PK>>
gp_hef_loan : UUID <<FK>>
plans_for_loan : UUID <<FK>>
created_at: Timestamp
updated_at: Timestamp
```