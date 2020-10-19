## organisations

Records details about an organisation.

Current table is called organisation.  Some migration
will be necessary.

```
id: UUID <<PK>
name: String                        name of organisation
org_type: Integer                   old reference to an organisation type.  Now the organisations_org_types link table is used.
company_number: String              
charity_number: String
charity_number_ni: String           charity number specific for Northern Ireland
salesforce_account_id: String           
created_at: Timestamp
updated_at Timestamp
```