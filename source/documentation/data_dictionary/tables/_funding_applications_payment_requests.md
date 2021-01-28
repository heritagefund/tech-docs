## funding_applications_payment_requests

Captures the link between funding applications and payment requests.

A single funding application can have *many* payment requests.

A payment request can **only** be linked to one funding application.

```
id                             UUID <<PK>>
funding_application_id         UUID <<FK>>
payment_request_id             UUID <<FK>>
created_at                     Timestamp
updated_at                     Timestamp
```
