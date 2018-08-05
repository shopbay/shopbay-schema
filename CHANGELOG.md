# Change Log (shopbay-schema)

## Version 0.25 - Aug 5, 2018

This release contains enhancements such as supporting many guest account of each shop separately, and conversion of guest accounts into customer account when they sign up.
as well as some bug fixes.
 
### Enhancements:

 - Enh: Added new system config at table `s_config` for 'repo_source_link' to indicate the url of repository source code where it is stored. 
Update default system config `facebook_link' and 'twitter_link'
 - Enh: Add support for table s_customer to allow storing column `customer_id` as email address for guest account (unique id rather than sharing common Account::GUEST id)

### Bug fixes:

 - Bug: Bug fix for invalid status code for s_subscription cancellation workflow (id 180)


## Version 0.24 - Jun 24, 2017

This is the initial release of `shopbay-schema`, part of Shopbay.org open source project. 

It includes code re-architecture and refactoring to separate the `data` component out from old code.
All existing functions and features remain same as inherited from previous code base (v0.23.2).

For full copyright and license information, please view the [LICENSE](LICENSE.md) file that was distributed with this source code.


## Version 0.23 and before - June 2013 to March 2017

Started since June 2013 as private development, the beta version (v0.1) was released at September 2015. 

Shopbay.org open source project was created by forking from beta release v0.23.2 (f4f4b25). 
