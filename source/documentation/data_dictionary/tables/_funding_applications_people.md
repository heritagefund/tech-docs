## funding_applications_people

Records the links between an application and a person.  Relationship isn't migrated for use at the moment.  But could be used to describe how a person fits into a funding application.

```
  id: UUID <<PK>>
  funding_application_id: UUID <<FK>>
  person_id: UUID <<FK>>
  relationship: string
  created_at: Timestamp
  updated_at: Timestamp
```
