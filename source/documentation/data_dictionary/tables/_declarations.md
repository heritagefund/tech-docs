## declarations

Records a declaration as JSONB.  
When a declaration is revised, or a new declaration added, 
then a new row will be added to this table.

```
  id: UUID <<PK>>
  grant_programme: String       The type of grant programme
  declaration_type: String      The type of declaration
  json: JSONB                   A structured version of a declaration
  version: Integer              The version of the declaration
  created_at : Timestamp
  updated_at : Timestamp
```