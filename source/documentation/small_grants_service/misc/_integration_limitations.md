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

## Total costs claimed
We include total costs claimed in the completion report payload. e.g. in 
[https://github.com/heritagefund/salesforce-poc/blob/baac42d9c52de5c90d0b0f4a67efb11abb4ea86f/payloads/CompletionReport.json#L93](https://github.com/heritagefund/salesforce-poc/blob/baac42d9c52de5c90d0b0f4a67efb11abb4ea86f/payloads/CompletionReport.json#L93) 
ideally this would be computed on Salesforce side but is not done currently due 
to limitations on Salesforce side.

## Address fields 
Our frontend address provider includes 3 lines of address details. However, 
Salesforce only has one field for Street so we concatenate it. The 
'Billing Country' field in Salesforce is re-purposed to store the address County.

## Name fields

As per best practice discussed in [this section of the GOV.UK Design System](https://design-system.service.gov.uk/patterns/names/), 
we capture names within the funding-frontend application using a single text 
input field.

Salesforce contact objects have fields for different parts of a name (e.g. first 
and last names), where 'surname' is a mandatory field. As we can't reliably 
extract a surname from the single text input field we use to capture names in 
the funding-frontend application, we have chosen to populate the surname field 
in Salesforce with the entire name captured in the funding-frontend application.

## Webhook mechanism
We use a webhook style mechanism (known within Salesforce as a 'Callout') to send payloads from Salesforce to the frontend upon certain workflow change triggers. This mechanism is documented more fully [on Sharepoint](https://hfund365.sharepoint.com/:w:/r/sites/DigitalServiceDesignTeam/Shared%20Documents/development/Webhook%20consumer%20mechanism.docx?d=waa0eeaa527ef4838b4aff05d89ed46d0&csf=1&web=1&e=RAZcJI).

The current mechanism has limited reliability, as it is 'fire and forget' i.e. the event is sent once and there is no check of success (i.e. of 2xx response) and no ability to replay the event from Salesforce side. This means for example if the frontend were to go down events sent during that period would be lost, with no automated mechanism to replay.

We could mitigate this in future by implementing a failure detection mechanism on the webhook with either an automated or manual retry mechanism, or switching to a [streaming API](https://developer.salesforce.com/docs/atlas.en-us.api_streaming.meta/api_streaming/intro_stream.htm) mechanism which offers built in replay capability.