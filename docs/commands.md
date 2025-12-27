
# DNS Project – Complete Command List (Ubuntu + Windows)

This document contains **all commands used from start to end** for setting up and verifying a **private BIND9 DNS server** and testing it from a Windows client.  
This can be used for **lab record / viva explanation**.

---

## 🔹 Ubuntu (BIND9 DNS Server)

### 1️⃣ Update system & install BIND9
```bash
sudo apt update
sudo apt install bind9 -y
````

### 2️⃣ Start and enable DNS service

```bash
sudo systemctl start bind9
sudo systemctl enable bind9
sudo systemctl status bind9
```

---

## 🔹 DNS Configuration Files

### 3️⃣ Edit main options file

```bash
sudo nano /etc/bind/named.conf.options
```

### 4️⃣ Add custom zone

```bash
sudo nano /etc/bind/named.conf.local
```

### 5️⃣ Create forward zone file

```bash
sudo nano /etc/bind/db.mywebapp.com
```

---

## 🔹 Validation & Restart

### 6️⃣ Check configuration syntax

```bash
sudo named-checkconf
```

### 7️⃣ Check zone file

```bash
sudo named-checkzone mywebapp.com /etc/bind/db.mywebapp.com
```

### 8️⃣ Restart DNS service

```bash
sudo systemctl restart bind9
```

---

## 🔹 Verify DNS on Ubuntu

### 9️⃣ Test DNS resolution

```bash
dig mywebapp.com
dig mywebapp.com @127.0.0.1
```

### 🔟 Confirm DNS port listening

```bash
ss -lntup | grep :53
```

### 1️⃣1️⃣ Check server IP address

```bash
ip a | grep inet
```

---

## 🔹 Firewall Configuration

### 1️⃣2️⃣ Allow DNS traffic

```bash
sudo ufw allow 53
sudo ufw reload
```

---

## 🔹 Windows Client Machine

### 1️⃣3️⃣ Flush DNS cache

```cmd
ipconfig /flushdns
```

### 1️⃣4️⃣ DNS testing

```cmd
nslookup mywebapp.com
nslookup mywebapp.com 10.240.154.4
nslookup google.com
```

### 1️⃣5️⃣ Network information

```cmd
ipconfig
ipconfig /all
```

---

## 🔹 Browser Verification

```text
http://mywebapp.com
http://www.mywebapp.com
```

---

## 🔹 FINAL CONFIRMATION (IMPORTANT)

```bash
dig mywebapp.com @127.0.0.1
```

✅ Output shows:

```
mywebapp.com → 10.240.154.4
```

✔ Confirms DNS server is working correctly
✔ Confirms private DNS setup (custom domain only)

---

## 🔹 Project Proof Summary

* Custom DNS server using BIND9
* Private IP resolution
* Controlled recursion
* Only configured domain resolves
* External domains blocked intentionally
* Windows client uses custom DNS server

---

**End of Commands Document**
