## organisation

Records details about an organisation

```
id: UUID <<PK>
name: String                        name of organisation
org_type: Integer                   link to organisation_type table
company_number: String              
charity_number: String
charity_number_ni: String           charity number specific for Northern Ireland
salesforce_account_id: String           
address_link_id: UUID <<FK>>        link to address_link table
created_at: Timestamp
updated_at Timestamp
```