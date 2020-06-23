## gp_hef_loans_repayment_freq

Link table between gp_hef_loans and repayment_frequencies

```
id: UUID <<PK>>
gp_hef_loan : UUID <<FK>>
repayment_frequency : UUID <<FK>>
created_at: Timestamp
updated_at: Timestamp
```