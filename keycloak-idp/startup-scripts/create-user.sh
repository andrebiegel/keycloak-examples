export PATH=$PATH:$JBOSS_HOME/bin
#kcadm.sh config credentials --server http://localhost:8080/auth --realm shibboleth-realm --user admin --password password
kcadm.sh create users -r shibboleth-realm -s username=test -s enabled=true -s email=test@example.com --no-config --server http://localhost:8080/auth --realm master --user admin --password password
kcadm.sh set-password -r shibboleth-realm --username test --new-password test --no-config --server http://localhost:8080/auth --realm master --user admin --password password