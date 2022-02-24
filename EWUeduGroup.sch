version: 1
dn: cn=schema
changetype: modify
add: attributetypes
attributetypes: ( 1.3.6.1.4.1.18010.1.2.2.1 
 NAME 'EWUeduGroupEntitlements' 
 DESC 'entitlements' 
 EQUALITY caseIgnoreString 
 SYNTAX '1.3.6.1.4.1.1466.115.121.1.15')
attributetypes: ( 1.3.6.1.4.1.18010.1.2.2.2 
 NAME 'EWUeduGroupType' 
 DESC 'Type of group' 
 EQUALITY caseIgnoreString 
 SYNTAX '1.3.6.1.4.1.1466.115.121.1.15') 
attributetypes: ( 1.3.6.1.4.1.18010.1.2.2.3 
 NAME 'EWUeduGroupAdmin' 
 DESC 'Administrator of group' 
 EQUALITY caseIgnoreString 
 SYNTAX '1.3.6.1.4.1.1466.115.121.1.15')
-
add: objectclasses
objectclasses: ( 1.3.6.1.4.1.18010.1.2.2 
 NAME 'EWUeduGroup' 
 DESC 'EWUeduGroup for additional attributes'
 AUXILIARY 
 MAY ( EWUeduGroupEntitlements $ EWUeduGroupType $ EWUeduGroupAdmin
 ))
-
