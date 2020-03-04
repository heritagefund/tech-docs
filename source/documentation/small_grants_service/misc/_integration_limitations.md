# Integration limitations

There are a small number of limitations with our current integration between 
the funding-frontend application and the Salesforce backend. Where these exist 
we have added temporary workarounds to the funding-frontend application. These 
are documented here.

## Legal signatories email address

Salesforce currently can't handle a scenario where an application has been 
submitted where the portal user (mapped to the `users` model) has the same 
email address (mapped to the `email` attribute) as a legal signatory (mapped 
to the `legal_signatories` model and `email_address` attribute).

In order to temporarily resolve this situation, we have added validation to 
the `legal_signatories` model to ensure that a legal signatory cannot be added 
which has the same email address as the `user`.

```ruby
class IsNotSameAsMainContactValidator < ActiveModel::EachValidator
  def validate_each(record, attribute, value)
    if value == User.find_by(organisation_id: record.organisation).email
      record.errors[attribute] << (options[:message] || "must be different to your email address")
    end
  end
end
```

When Salesforce has been updated to handle this scenario, this validation 
should be removed from the `legal_signatories` model. This has been referenced 
in [GitHub issue 319](https://github.com/heritagefund/funding-frontend/issues/319).
