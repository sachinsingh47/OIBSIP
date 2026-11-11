                               Security Analyst Internship - Task 2: Basic Firewall Configuration with UFW
What is a Firewall ?
A firewall is a network securtiy system that monitors, filters and controls incoming and outcoming network traffic based on predefine rules .

Configured Rules & Objectives
In this task, UFW (Uncomplicated Firewall) was installed, enabled, and configured with the following rules:

- **`sudo ufw allow ssh` (Port 22):** 
  - *What it achieves:* Permits secure remote command-line login and system administration.
  - *Why it was chosen:* Essential for maintaining administrative access to the Linux system or VM without locking out the administrator.
- **`sudo ufw deny http` (Port 80):** 
  - *What it achieves:* Blocks unencrypted HTTP web traffic.
  - *Why it was chosen:* Mitigates security risks associated with cleartext data transmission (such as credential sniffing) by forcing secure alternatives.
- **`sudo ufw allow https` (Port 443):** 
  - *What it achieves:* Allows encrypted web traffic using SSL/TLS protocols.
  - *Why it was chosen:* Enables secure web browsing and service communication while keeping plaintext traffic restricted.
- **`sudo ufw deny from 192.168.29.200 to any`:** 
  - *What it achieves:* Blocks all incoming connection attempts from a specific untrusted IP address (`192.168.29.200`).
  - *Why it was chosen:* Demonstrates how to isolate or restrict suspicious hosts or unauthorized devices on the local subnet.

## 3. Verification & Testing
The firewall rules were applied, and the active configuration was verified using:
```bash
sudo ufw status verbose
                               
