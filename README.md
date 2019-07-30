# Jboss Keycloak  Playgrounf

## Shibboleth Service Provider

Within Authentication SAML is a mature variant to choose from. Shibboleth a


Extracted keys and certs with : https://serverfault.com/questions/715827/how-to-generate-key-and-crt-file-from-jks-file-for-httpd-apache-server 

## Shibboleth SP SLO
 The Service Provoder initiated Logout can be triggered by visiting http://shibboleth.localhost/SHibboleth.sso/Logout
 Keycloak itself does not support backchannel SLO (see https://www.keycloak.org/docs/latest/server_admin/index.html#logout-all-limitations)

> 13.1.1. Logout All Limitations
> Any SSO cookies set will now be invalid and clients that request authentication in active browser > sessions will now have to re-login. Only certain clients are notified of this logout event,   specifically clients that are using the Keycloak OIDC client adapter. Other client types (i.e. 
> SAML) will not receive a backchannel logout request.



