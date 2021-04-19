## funding_applications_spend

Captures the link between funding applications and where spend has happened against a funding application.

A single funding application can have *many* items of spending.

An item of spending can **only** be linked to one funding application.

```
id                             UUID <<PK>>
funding_application_id         UUID <<FK>>
spend_id                       UUID <<FK>>
created_at                     Timestamp
updated_at                     Timestamp
```
