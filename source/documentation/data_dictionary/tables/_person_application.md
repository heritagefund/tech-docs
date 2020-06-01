## person_application

Links an application to a person.  Also records the purpose of that
relationship, such as legal signatory.  

```
  id: Integer <<PK>>
  person_id: UUID <<FK>>        ID on the person table.
  application_id: UUID <<FK>>   ID on the application_id.
  relationship: Integer <<FK>>  Link to the relationship table.
```