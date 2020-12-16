## payment_details

Records account details for payments in regard to an application. 

```
    id: UUID <<PK>>
    account_name: String
    account_number: String
    sort_code: String
    funding_application_id_id: UUID <<FK>>
    created_at: Timestamp
    updated_at: Timestamp
```
