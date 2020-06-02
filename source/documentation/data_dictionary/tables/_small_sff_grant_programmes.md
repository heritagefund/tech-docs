## small_sff_grant_programmes

Table told hold information specific to
"small strategic funding framework grant programmes".

```
id: UUID <<PK>>
application_id: UUID <<FK>>
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