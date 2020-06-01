## person_declaration

Records the relationship between a person and their declarations, 
such as agreeing to user research.

```
  id: UUID <<FK>>
  person_id: UUID <<FK>>
  declaration_id: UUID <<FK>>
```