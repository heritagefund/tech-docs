## gp_hef_loans

Table told hold information specific to
"Grant programme heritage emergency fund loans".

```
id: UUID <<PK>>
previous_nlhf_funding :  boolean                      
can_legally_take_on_debt : boolean 
any_debt_restrictions : boolean                       
debt_description : text                               if there are debt restrictions (see any_debt_descriptions) what are they?
can_provide_security : boolean                        true if the org can legally provide security for a loan
security_restrictions : boolean                       true if there are restrictions on the type of security an org can provide
security_description : text                           description if applicant answers true to security_restrictions (above)
has_had_an_average_yearly_cash_surplus : boolean      true if org has had a surplus over the last three years
average_yearly_cash_surplus : integer                 amount if the applicant answered true to has_had_an_average_yearly_cash_surplus
has_had_a_surplus_in_last_reporting_year : boolean    true if org has a surplus over the last year
cash_surplus_in_last_year : integer                   amount of surplus, if applicant answers true to has_had_a_surplus_in_last_reporting_year
can_use_direct_bank_transfer : boolean                
bankruptcy_or_administration : boolean                true if the organisation is at risk from bankruptcy, or going into administration
bankruptcy_or_administration_description : text       description if the applicant answers true to bankruptcy_or_administration
considers_state_aid : boolean                         true if the org believes state aid rules wouldn't be broken by this loan
has_applied_for_grant_or_loan :  boolean              true if the organisation has applied for a grant or loan during COVID 19 crisis
other_funding_details : text                          details of the funding - if the applicant answered true to has_applied_for_grant_or_loan 
efforts_to_reduce_borrowing : text                    details on how the applicant has reduced what they need to borrow
plans_for_loan_description : text                     what the org plans to spend the money on
time_to_repay_loan : integer                          time in months that an organisation needs to repay a loan                              
cashflow_understanding : text                         text indicating that an applicant understands what cashflow needs demonstrating
loan_amount_requested : integer                       
gp_hef_loans_org_income_type : UUID <<FK>>
gp_hef_loans_plans_for_loan :UUID <<FK>>
gp_hef_loans_repayment_frequency : UUID <<FK>>
created_at: Timestamp
updated_at: Timestamp
```