# MCA Viva Quick Revision Sheet

---

## 🖥️ Computer Hardware Basics

- **Major Components of a Computer**: Motherboard, CPU, RAM, SMPS, Storage (HDD/SSD), I/O Ports, Daughter Card, Bus Slots.
- **Motherboard**: Main circuit board connecting all hardware components.
- **SMPS**: Switched-Mode Power Supply – converts AC to DC for internal components.
- **CPU**: Central Processing Unit – performs all instructions and logic.
- **RAM**: Temporary memory for active processes.
- **Daughter Card**: Plug-in board (e.g., sound card, graphics card).
- **Bus Slot**: Connector for expansion cards like PCIe, AGP.

---

## 🧠 RAM & Storage Technologies

- **Types of RAM**: SRAM (Static), DRAM (Dynamic).
- **SRAM vs DRAM**:
  - SRAM: Faster, expensive, no refresh needed.
  - DRAM: Slower, cheaper, needs refresh cycles.

- **Storage Types**:
  - **HDD**: Magnetic storage, slower, cheaper.
  - **SSD**: Flash storage, faster, no moving parts.
  - **PATA/SATA/SCSI**: Interfaces for connecting storage drives.
  * **PATA** – **Parallel Advanced Technology Attachment**
  * **SATA** – **Serial Advanced Technology Attachment**

  These are interfaces used to connect storage devices like hard drives and optical drives to the computer's motherboard.

* PATA uses **parallel communication**, older and bulkier.
* SATA uses **serial communication**, faster and more efficient.

  - **IDE**: Integrated Drive Electronics – controls drive and data transfer.

---

## 🧩 Servers & OS Concepts

- **Server**: A system that provides resources/services over a network.
- **Kernel**: Core of OS, manages hardware and system processes.

---

## 🧾 Linux & File Handling

- **File Permissions**: `r` (read), `w` (write), `x` (execute) for user/group/others.
- **Commands**:
  - `ls -a`: List all including hidden.
  - `cat`: View file.
  - `more/less`: Paginated view.
  - `head/tail`: Show top/bottom lines.
  - `grep`: Search using regex (global regular expression print).
  - `wc`: Word count.
  - `cut/paste`: Column extraction/insertion.
  - `find`: Search files.
  - `chmod/chown`: Change permission/ownership.
  - `df`: Disk space.
  - `top/ps`: Monitor processes.

- **Redirection & Pipes**:
  - `>` `>>` `<` `|`

---

## ✏️ `vi`/`vim` Editor

- **Created by**: `vi` by Bill Joy; `vim` = Vi IMproved.
- **Modes**: Command, Insert, Visual.
- **Commands**:
  - `i`: Insert mode
  - `:wq`: Save and quit
  - `:%s/old/new/g`: Replace all
  - `:1,2s/a/b/g`: Replace in lines 1–2
  - `cgn`: Change next match of current word

---

## 🗂️ Linux File System Hierarchy

- `/` – Root
- `/bin` – Essential binaries
- `/etc` – Config files
- `/home` – User directories
- `/var` – Variable data
- `/tmp` – Temporary files
- `/usr` – User programs

---

## 🌐 Networking Concepts

- **ARPANET**: First internet prototype.
- **IPv4**: 32-bit address, includes subnet ID and host ID.
- **IPv6**: 128-bit, supports more devices.
- **Classes**: A (1.0.0.0), B (128.0.0.0), C (192.0.0.0).
- **Private IPs**:
  - Class A: 10.0.0.0
  - Class B: 172.16.0.0
  - Class C: 192.168.0.0

- **VLSM**: Variable Length Subnet Masking – efficient IP usage.
- **CIDR**: IP addressing method using suffix like `/24`.
- **NAT**: Translates private IP to public IP.
- **Firewall**: Blocks unauthorized access.
- **LAN**: Local Area Network.
- **Proxies (L7)**: Application-level traffic filtering.

---

## 📡 Networking Commands

- `ping`: Test connectivity.
- `traceroute`: Show path to host.
- `nslookup`: DNS query.
- `ip a`: Show IP config.
- `route`: Show routing table.

- **Static IP**: Manually assigned.
- **Dynamic IP**: Given by DHCP.

- **iptables**: Manage Linux firewall rules.

---

## 🔐 SSH and Secure Communication

- `ssh user@host`: Secure remote login (port 22, uses TCP/IP).
- `ssh-keygen`: Generate SSH keys.
- `ssh-copy-id user@host`: Enable key-based login.
- `scp file user@host:/path`: Secure file copy.

---

## 📦 Protocol Layers (TCP/IP & OSI)

- **OSI Layers**: Physical, Data Link, Network, Transport, Session, Presentation, Application.
- **TCP/UDP**:
  - TCP: Reliable, ordered (e.g., HTTP, FTP).
  - UDP: Fast, no guarantees (e.g., DNS, streaming).

- **Packet Analysis**: Wireshark, tcpdump for analyzing network traffic.


##  Notes: TCP, UDP, and Network Layers

### OSI Model (7 Layers)

1. **Physical** – Transmits raw bit stream over physical medium (cables, signals)
2. **Data Link** – Handles MAC addressing and error detection (Ethernet, switches)
3. **Network** – Responsible for IP addressing and routing (IP, ICMP)
4. **Transport** – Ensures end-to-end communication (**TCP**, **UDP**)
5. **Session** – Manages sessions between applications
6. **Presentation** – Translates, encrypts, compresses data
7. **Application** – Interfaces for end-user processes (HTTP, FTP, DNS)

### TCP/IP Model (4 Layers)

| TCP/IP Layer   | Corresponding OSI Layers | Protocol Examples    |
| -------------- | ------------------------ | -------------------- |
| Application    | OSI Layers 5–7           | HTTP, FTP, DNS, SMTP |
| Transport      | OSI Layer 4              | **TCP**, **UDP**     |
| Internet       | OSI Layer 3              | IP, ICMP             |
| Network Access | OSI Layers 1–2           | Ethernet, ARP        |

### TCP (Transmission Control Protocol)

* Connection-oriented
* Reliable and ordered delivery
* Uses acknowledgment and retransmission
* Slower due to overhead but secure
* Example protocols: HTTP, HTTPS, FTP, SMTP

**Key Features:**

* 3-way handshake (SYN, SYN-ACK, ACK)
* Flow control, congestion control
* Guaranteed delivery

### UDP (User Datagram Protocol)

* Connectionless
* Unreliable, no guaranteed delivery/order
* Minimal overhead, fast
* Example protocols: DNS, VoIP, streaming, games

**Key Features:**

* No handshakes
* No retransmission
* Used where speed is more critical than reliability

### TCP vs UDP

| Feature     | TCP                             | UDP                   |
| ----------- | ------------------------------- | --------------------- |
| Connection  | Yes (handshake)                 | No                    |
| Speed       | Slower                          | Faster                |
| Reliability | High (error checking, ordering) | Low (no guarantees)   |
| Use Cases   | Web, file transfer              | Streaming, games, DNS |

---

### Packet Structure

* **Header** – Contains metadata like source/destination IP, protocol, sequence number
* **Payload** – Actual data being transmitted

### Packet Analysis Tools

* **tcpdump** – Command-line packet analyzer for capturing and inspecting network traffic
* **Wireshark** – GUI-based tool for deep packet inspection, filtering, and analysis

**Difference:**

* `tcpdump` is lightweight and scriptable, good for quick tasks
* `Wireshark` provides detailed GUI-based analysis with visualization

### nc (netcat)

* Tool for reading/writing data over network connections using TCP/UDP
* Common use: port scanning, file transfers, testing open ports

### make / cmake

* **make** – Automates build process using `Makefile`
* **cmake** – Cross-platform tool that generates Makefiles or build files for IDEs

### LAMP / Laravel

* **LAMP** – Linux, Apache, MySQL, PHP stack for web development
* **Laravel** – Popular PHP web framework based on MVC pattern

### Virtualization

* **Virtual Machine (VM)** – Emulates a full computer system (e.g. VirtualBox, KVM)
* **Xen** – Hypervisor used to run multiple OSs on a single physical machine
* **KVM** – Kernel-based Virtual Machine for Linux-based virtualization

### Ansible and VMs

* **Ansible** – Automation tool for configuration management and application deployment
* **Linux VM using Ansible Playbook** – Automate VM provisioning, package installs, firewall setup, etc.

---

