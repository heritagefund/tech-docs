## users

Records details about the service user.  The Devise
rubygem depends on some of this information (detailed below).

```
id: UUID <<PK>>
person_id: UUID <<<FK>>                 link to additional person data
organisation_id: UUID <<FK>             link to organisation    
email: String
encrypted_password: String
reset_password_token: String
reset_password_sent_at: Timestamp
remember_created_at: Timestamp          required for Devise    
confirmation_token: String              required for Devise    
confirmed_at: Timestamp                 required for Devise    
confirmation_sent_at: Timestamp         required for Devise    
unconfirmed_email: String               required for Devise
created_at: Timestamp
updated_at : Timestamp
```