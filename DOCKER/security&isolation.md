
## ✅ SECURITY AND ISOLATION 

---

### 🔒 **Why Security is Important in Docker:**

* Docker containers share the **host OS kernel**, unlike VMs.
* This **increases risks** if something goes wrong—one container can affect others and even the host.

---

### ⚠️ **Major Security Issues to Watch For:**

1. **Kernel Exploits**

   * All containers share the same Linux kernel.
   * If one container crashes the kernel, the whole system can go down.

2. **Denial of Service (DoS) Attacks**

   * One container can **overuse system resources** (CPU, memory, etc.).
   * This can **starve** other containers, making them unusable.

3. **Container Breakouts**

   * An attacker inside one container might escape to access the host or other containers.
   * If the container runs as **root**, the attacker gets **root access** on the host too.

4. **Privilege Escalation**

   * Vulnerabilities in app code may allow users to gain **higher access rights** (like root).

5. **Poisoned Images**

   * Using **untrusted or outdated images** can bring in malware.
   * Always use **verified** and **up-to-date** images.

6. **Leaked Secrets**

   * API keys, passwords, and tokens in containers can be **stolen by attackers**.
   * Microservice architectures increase this risk due to frequent container restarts.

---

### 🧱 Docker vs. VMs in Security:

* VMs are **more mature** and **battle-tested** in terms of security.
* Containers are newer and **don’t provide the same level of isolation** as VMs.

---

## 🔐 Security Best Practices

---

### 🛡️ **Defence-in-Depth Strategy**

* Use **multiple security layers** to protect the system.
* Example: Run Docker containers inside **VMs** to isolate them better.
* Use **monitoring tools** to detect unusual behavior.
* Use **firewalls** to limit container network access.

---

### 👮‍♂️ **Least Privilege Principle**

* Containers should have **only the minimum permissions** needed.

**Tips:**

1. Don’t run containers as **root**.
2. Use **read-only** filesystems.
3. Reduce **kernel calls** (Syscalls) made by containers.
4. **Limit resource usage** (CPU, memory) to avoid DoS attacks.

---

### 🧱 **Segregate Containers by Host**

* In **multi-user environments**, place each user's containers on **separate hosts or VMs**.
* This prevents:

  * Breakouts affecting other users
  * Access to other users' data
  * One user's app from crashing the system for others

**Examples:**

* Keep **sensitive apps** (like payment processing) away from less sensitive ones (like frontend UI).
* Place credit card handling containers on a **separate host** from public-facing ones.

---

### ⚠️ Summary Points:

* **Misuse of Docker** can increase system risks.
* **Proper use** (isolation, least privilege, monitoring) **improves system security**.
* Always be cautious of **attack vectors**—ways hackers try to break into your systems.

---
