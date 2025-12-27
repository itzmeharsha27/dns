# Viva Explanation

1. This project is based on setting up a private authoritative DNS server using BIND9.

2. The DNS server is configured to resolve only a custom internal domain and does not allow public DNS recursion.

3. The Windows system is manually configured to use the Ubuntu VM as its DNS server.

4. When a DNS request is made for the configured domain, the server responds using its zone file.

5. Requests for public domains like google.com are not resolved, proving DNS isolation.

6. No web server is intentionally configured to show that DNS resolution and web hosting are separate concepts.

7. This setup is similar to how organizations use internal DNS for private networks.

8. The project demonstrates control, security, and understanding of DNS fundamentals.
