##declarations

Records a declaration as JSONB, so it is searchable.  
When a declaration is revised, or a new declaration added, 
then a new row will be added to this table.

```
  id: UUID <<PK>>
  declaration_type: String      The type of declaration
  json: JSONB                   A structured version of a declaration
  version: Integer              The version of the declaration
```