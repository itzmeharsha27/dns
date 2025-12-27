$TTL 604800
@ IN SOA mywebapp.com. root.mywebapp.com. (
1 604800 86400 2419200 604800 )

@   IN NS mywebapp.com.
@   IN A  10.240.154.4
www IN A  10.240.154.4
