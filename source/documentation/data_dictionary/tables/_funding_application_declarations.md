## funding_application_declarations

Records the links between an application and its declarations.
In some cases the declarations can be linked to an application 
using the implicit 'person' links.  However, this becomes
complicated if the User spans applications.

```
  id: UUID <<PK>>
  application_id: UUID <<FK>>
  declaration_id: UUID <<FK>>
```
