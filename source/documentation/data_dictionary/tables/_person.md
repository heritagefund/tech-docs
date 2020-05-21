##person

Contains information about a person that is not necessarily related
to a user of the service.

```
id: UUID <<PK>>
name: String                        
date_of_birth: Date
email: String
phone_number: String
address_link_id: UUID <<FK>>        See address_link table.  A person can have more than one address.
legal_signatory: Boolean            Whether the person is a legal signatory
created_at: Timestamp
updated_at: Timestamp
```