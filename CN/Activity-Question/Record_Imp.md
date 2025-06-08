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

