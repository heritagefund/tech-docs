## organisations

Records details about an organisation.

Some migration is still necessary (`mission`, `org_type`, etc.)

```
id: UUID <<PK>

name: String                            Name of organisation

org_type: Integer                       Old reference to an organisation type.
                                        Now the organisations_org_types link
                                        table is used.

mission: String                         Contains organisation missions in the
                                        form of {female_led,young_people_led},
                                        etc.

custom_org_type: String                 Captures a custom organisation type
                                        entered by a user.

company_number: String                  Company number of an organisation.

charity_number: String                  Charity number of an organisation.

charity_number_ni: String               Charity number specific to
                                        organisations based in
                                        Northern Ireland.

salesforce_account_id: String           External reference to the
                                        corresponding record in Salesforce.

main_purpose_and_activities: Text       Description of an organisation's main
                                        purpose and activities.

spend_in_last_financial_year: Float     The amount of spend an organisation
                                        reported in the last financial year.

unrestricted_funds: Float               The amount of unrestricted funds
                                        available to an organisation.

board_members_or_trustees: Integer      Number of board members or trustees
                                        that the organisation has.

vat_registered: Boolean                 Is this organisation VAT registered?

vat_number: String                      If an organisation is VAT registered,
                                        the organisation's VAT number.

social_media_info: Text                 A description of an organisation's
                                        social media presence, such as links,
                                        account names, etc.

created_at: Timestamp

updated_at Timestamp
```