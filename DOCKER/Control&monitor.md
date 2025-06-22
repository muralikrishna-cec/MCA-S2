
## ✅ **Controlling Running Containers in Docker**

---

### 🧰 **Basic Commands to Manage Containers**

Docker lets you manage containers using subcommands to:

* Start
* Stop
* Restart
* Pause
* Unpause

---

### 🟥 **1. `docker stop`**

* Stops a **running container**.
* Sends **SIGTERM (-15)** to the main process for **graceful shutdown**.
* If the process does not stop, Docker waits for a **grace period**, then sends **SIGKILL (-9)** to force stop.

**Example:**

```bash
$ sudo docker stop <container_id>
```

🧪 **Output:**

* Container exits.
* `exit` appears in prompt inside the container.
* Container disappears from `docker ps` list (because it's stopped).

---

### 🔍 **2. View Stopped Containers**

Use `-a` flag to list **all containers**, including stopped ones:

```bash
$ sudo docker ps -a
```

---

### 🟩 **3. `docker start`**

* Starts a **stopped container**.
* Has **no effect** on a container that’s already running.

**Example:**

```bash
$ sudo docker start <container_id>
```

---

### 🔁 **4. `docker restart`**

* Stops and then starts a container.
* Uses same signals as `stop` (SIGTERM → SIGKILL).
* Re-initializes the container cleanly.

**Example:**

```bash
$ sudo docker restart <container_id>
```

---

### ⏸️ **5. `docker pause` & `docker unpause`**

* **`docker pause`**: Freezes all processes in a container.
* **`docker unpause`**: Resumes all paused processes.

**Usage Scenario:**

1. Run a container printing date every 5 secs in one terminal:

   ```bash
   $ sudo docker run -i -t ubuntu:14.04 /bin/bash
   root@container:/# while true; do date; sleep 5; done
   ```

2. In another terminal, pause the container:

   ```bash
   $ sudo docker pause <container_id>
   ```

   * **Effect**: Date printing freezes.
   * **Check status** with `docker ps`: It shows **(Paused)**.

3. Unpause the container:

   ```bash
   $ sudo docker unpause <container_id>
   ```

   * Script resumes printing date.

4. Finally, stop the container:

   ```bash
   $ sudo docker stop <container_id>
   ```

---

## 📝 Summary :

> Docker provides various subcommands to control containers:
>
> * `stop`: Gracefully/forcefully stops a container (SIGTERM → SIGKILL)
> * `start`: Starts a stopped container
> * `restart`: Stops and then restarts a container
> * `pause`: Freezes a container's processes
> * `unpause`: Resumes a paused container
>   Use `docker ps -a` to view stopped containers.

---

