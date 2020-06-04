## declarations

Records a declaration as JSON.  
When a declaration is revised, or a new declaration added, 
then a new row will be added to this table.

JSONB considered, but no expectations for extensive
searching within the JSON.

```
  id: UUID <<PK>>
  declaration_type: String      The type of declaration
  json: JSON                    A structured version of a declaration
  version: Integer              The version of the declaration
```