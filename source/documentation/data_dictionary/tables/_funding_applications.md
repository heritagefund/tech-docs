##applications

Table that contains details specific to an application.

```
id: UUID <<PK>>                         
declaration: Boolean                        records that decalration has been accepted
declaration_description: Text               records applicant's permission to use certain info.
declaration_keep_informed: Boolean          records that we can inform applicant
declaration_user_research: Boolean          Agreed to User Research
project_reference_number: String            Salesforce project reference number
salesforce_case_id: String                  Case ID in Salesforce
salesforce_case_number: String              Case Number is Salesforce
submitted_on: String                        Date the application was submitted
organisation: UUID <<FK>>                   Link to organisation table
created_at: Timestamp
updated_at: Timestamp
```