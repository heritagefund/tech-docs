## funding_applications

Table that contains details specific to a funding application.

```
id: UUID <<PK>>                         
project_reference_number: String            Salesforce project reference number
salesforce_case_id: String                  Case ID in Salesforce
salesforce_case_number: String              Case Number in Salesforce
submitted_on: String                        Date the application was submitted
organisation: UUID <<FK>>                   Link to organisation table
created_at: Timestamp
updated_at: Timestamp
```
