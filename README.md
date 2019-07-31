# Jboss Keycloak Playground

This repository contains the following comomn scenarios with Jboss Keycloak.

*  direct Shibboleth Service Provider inside of an Apache Httpd 2.4
*  Shibboleth Service Provider inside of an Apache Httpd 2.4 as an Authentication Proxyn (planned)



## Direct Shibboleth Service Provider

Within Authentication SAML is a mature variant to choose from. Shibboleth a
![Shibboleth SP](/images/shibbo-sp.png "Shibboleth SP")

Extracted keys and certs with : https://serverfault.com/questions/715827/how-to-generate-key-and-crt-file-from-jks-file-for-httpd-apache-server 

### Context 

### Single Sign On
SSO is triggered when visiting http://shibboleth.localhost/secured
### Single Logout
 The Service Provoder initiated Logout can be triggered by visiting http://shibboleth.localhost/Shibboleth.sso/Logout
 Keycloak itself does not support backchannel SLO (see https://www.keycloak.org/docs/latest/server_admin/index.html#logout-all-limitations)

> 13.1.1. Logout All Limitations
> Any SSO cookies set will now be invalid and clients that request authentication in active browser > sessions will now have to re-login. Only certain clients are notified of this logout event,   specifically clients that are using the Keycloak OIDC client adapter. Other client types (i.e. 
> SAML) will not receive a backchannel logout request.
>It is important to note that any outstanding access tokens are not revoked by clicking Logout all. >They have to expire naturally. You have to push a revocation policy out to clients, but that also >only works with clients using the Keycloak OIDC client adapter.



