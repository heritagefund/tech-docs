# Useful information

This section contains useful information relating to our Salesforce integration.

## `isAlsoApplicant` payload flag handling

Salesforce uses the `isAlsoApplicant` flag to determine whether or not it needs 
to use the existing Contact object for a legal signatory which has the same 
email address as the user submitting the application.

For example, where two legal signatories are submitted within a payload with 
the first having an `isAlsoApplicant` flag value of `false` and the second 
having an `isAlsoApplicant` flag value of `true`, Salesforce will create 
two Contact objects - one for the first legal signatory, and the second for 
the user/main contact. The user will have a field set to state that they 
are also an authorised signatory.

This logic lives within `PortalApplication.apxc` in Salesforce, and looks 
similar to the following pseudocode:

```
if (contact.email == legal_signatory.email && signatory.isAlsoApplicant) {
    contact.is_authorised_signatory = true
} else {
    // Populate second contact details using legal signatory details
    // Add to list of Contact objects
}
```
