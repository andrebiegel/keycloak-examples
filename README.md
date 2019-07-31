# Jboss Keycloak Playground

This repository contains the following comomn scenarios with Jboss Keycloak.

*  direct Shibboleth Service Provider inside of an Apache Httpd 2.4
*  Shibboleth Service Provider inside of an Apache Httpd 2.4 as an Authentication Proxy (planned)

## Shibboleth Service Provider
Within Authentication SAML is a mature variant to choose from. Shibboleth installs as an operation system service and runs byside the apache processs.

## Direct Shibboleth Service Provider

![Shibboleth SP](/images/shibbo-sp.png "Shibboleth SP")

 The scenario is based upon a docker compose setup. It depends upon RFC 6761 (https://tools.ietf.org/html/rfc6761), which Chrome follows. Therefore the hostnames are set to *.localhost domains, which will automatically be resolved against the local loop back device. This eliminates the need of declaring the services as entries in /etc/hosts


Extracted keys and certs with : https://serverfault.com/questions/715827/how-to-generate-key-and-crt-file-from-jks-file-for-httpd-apache-server 


### Single Sign On
SSO is triggered when visiting http://shibboleth.localhost/secured
### Single Logout
 The Service Provoder initiated Logout can be triggered by visiting http://shibboleth.localhost/Shibboleth.sso/Logout
 Keycloak itself does not support backchannel SLO with SAML (see https://www.keycloak.org/docs/latest/server_admin/index.html#logout-all-limitations). Even a IDP initiated frontchannel logout is not supported.

> 13.1.1. Logout All Limitations
> Any SSO cookies set will now be invalid and clients that request authentication in active browser > sessions will now have to re-login. Only certain clients are notified of this logout event,   specifically clients that are using the Keycloak OIDC client adapter. Other client types (i.e. 
> SAML) will not receive a backchannel logout request.
>It is important to note that any outstanding access tokens are not revoked by clicking Logout all. >They have to expire naturally. You have to push a revocation policy out to clients, but that also >only works with clients using the Keycloak OIDC client adapter.



