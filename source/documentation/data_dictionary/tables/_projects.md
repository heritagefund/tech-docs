## projects

Records details of a project for an application. 


as is table:

```
id: UUID <<PK>>
project_title: String
user_id: bigint
start_date: date
end_date: date
description: String
line1: String
line2: String
line3: String
townCity: String
county: String
postcode: String
difference: String
matter: String
heritage_description: String
best_placed_description: String
involvement_description: String
permission_type: integer
permission_description: String
capital_work: boolean
outcome_2: boolean
outcome_3: boolean
outcome_4: boolean
outcome_5: boolean
outcome_6: boolean
outcome_7: boolean
outcome_8: boolean
outcome_9: boolean
outcome_2_description: String
outcome_3_description: String
outcome_4_description: String
outcome_5_description: String
outcome_6_description: String
outcome_7_description: String
outcome_8_description: String
outcome_9_description: String
is_partnership: boolean
partnership_details: text 
keep_informed_declaration: boolean
user_research_declaration: boolean
declaration_reasons_description: text
funding_application_id: uuid
created_at: Timestamp
updated_at: Timestamp

```

to be table: 

```
id: UUID <<PK>>
funding_application_id: UUID <<FK>>
title: String                       Applicant's project title e.g. new roof
difference_description: Text        Q) What difference will your project make?
community_description: Text         Q) Why is your project important to your community?
best_placed_description: Text       Q) Why is your organisation best placed to deliver this project?     
capital_work: Boolean               Q) Will capital work be part of your project?
heritage_description: Text          Q) The heritage of your project: how do you plan to make it available once the project is over?
description: Text                   Q) Describe your idea?
start_date: Date                    Date the project starts       
end_date: Date                      Date the project ends
is_partnership: Boolean             Q) Are you applying on behalf of a partnership?
partnership_details: Text           Q) Please tell us the organisation(s) you will be delivering your project in partnership...
permission_type: id                 Q) Do you need permission from anyone else to do your project?
permission_description: Text        Q) Please provide more information about who you need permission from to do your project.
created_at: Timestamp               
updated_at: Timestamp
```