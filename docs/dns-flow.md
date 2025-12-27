# DNS Request → Response Flow

1. The user opens a browser on the Windows system and enters the domain name
   (for example: mywebapp.com).

2. The Windows system checks its DNS settings and finds that the DNS server
   is manually configured to the Ubuntu VM IP address.

3. The browser sends a DNS query to the Ubuntu VM where the BIND9 DNS server
   is running.

4. BIND9 receives the query and checks whether the requested domain belongs
   to its configured zone file.

5. Since mywebapp.com is defined in the zone file, BIND9 acts as an
   authoritative DNS server and prepares the response.

6. BIND9 returns the mapped IP address (VM IP) for mywebapp.com to the
   Windows client.

7. The Windows system receives the DNS response and passes the IP address
   to the browser.

8. The browser now knows the IP address of the domain. If no web server is
   running on that IP, the connection stops at DNS resolution.

9. For any public domain (example: google.com), BIND9 does not resolve the
   request because recursion is disabled.

10. This flow proves that the DNS server is private, authoritative, and fully
    controlled by the user.
```
