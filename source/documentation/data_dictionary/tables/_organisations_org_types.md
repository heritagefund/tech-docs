## organisations_org_types

Link table between organisations and organisation types.

```
id: UUID <<PK>>
organisation_id: UUID <<FK>>
org_type_id: UUID <<FK>>
created_at: Timestamp
updated_at: Timestamp
```