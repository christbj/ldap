version: 1
dn: cn=schema
changetype: modify
add: attributetypes
attributetypes: ( 1.3.6.1.4.1.18010.1.1.1.1 
 NAME 'EWUeduPersonPrivacy' 
 DESC 'FERPA privacy exclusion' 
 EQUALITY caseIgnoreString 
 SYNTAX '1.3.6.1.4.1.1466.115.121.1.15' SINGLE-VALUE)
attributetypes: ( 1.3.6.1.4.1.18010.1.1.1.2 
 NAME 'EWUeduPersonStatus' 
 DESC 'Active or Inactive account status' 
 EQUALITY caseIgnoreString 
 SYNTAX '1.3.6.1.4.1.1466.115.121.1.15' SINGLE-VALUE)
attributetypes: ( 1.3.6.1.4.1.18010.1.1.1.3 
 NAME 'EWUeduPersonEntitlements' 
 DESC 'entitlements' 
 EQUALITY caseIgnoreString 
 SYNTAX '1.3.6.1.4.1.1466.115.121.1.15')
attributetypes: ( 1.3.6.1.4.1.18010.1.1.1.4 
 NAME 'EWUeduPersonAccountType' 
 DESC 'Account type' 
 EQUALITY caseIgnoreString 
 SYNTAX '1.3.6.1.4.1.1466.115.121.1.15')
attributetypes: ( 1.3.6.1.4.1.18010.1.1.1.5 
 NAME 'EWUeduPersonAccountAdmin' 
 DESC 'Administrator of shared email account' 
 EQUALITY caseIgnoreString 
 SYNTAX '1.3.6.1.4.1.1466.115.121.1.15')
-
add: objectclasses
objectclasses: ( 1.3.6.1.4.1.18010.1.1.2 
 NAME 'EWUeduPerson' 
 DESC 'EWUeduPerson for additional attributes'
 AUXILIARY 
 MAY ( EWUeduPersonPrivacy $ EWUeduPersonStatus $ EWUeduPersonEntitlements $ EWUeduPersonAccountType $ EWUeduPersonAccountAdmin 
 ))
-
