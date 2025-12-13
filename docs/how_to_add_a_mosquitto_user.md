# Mosquitto Broker Management

Access control is managed by a password file stored in this repository, which is automatically deployed to the server via GitHub Actions.

## 📋 Prerequisites

* **Docker** installed on your local machine.
* Access to this repository.

> **Note:** You do **not** need to install Mosquitto tools locally. The helper script uses Docker to generate compatible password hashes.

---

## 🚀 How to Add or Update a User

We use a helper script to ensure passwords are hashed correctly (using PBKDF2-SHA512) before being committed.

### 1. Make the script executable (First time only)
If you have just cloned this repo or created the script, you need to give it execution permissions:

```bash
chmod +x ./scripts/add_mosquitto_user.sh
```

### 2. Run the script
Run the following command from the root of the repository

```bash
# Syntax: ./scripts/add_mosquitto_user.sh <username> <password>
./scripts/add_mosquitto_user.sh new_user secure_password_123
```

- New User: Will be appended to the file.
- Existing User: The password will be updated/overwritten.

### 3. Verify the change
You can verify that the user was added by checking the git diff. You should see a new line with the username and a long hash string (starting with $7$ or $6$).

```bash
git diff configuration/mosquitto/config/password_file
```

### 3. Commit and Push (Deploy)
Once the user is added locally, trigger the deployment:
```bash
git add configuration/mosquitto/config/password_file
git commit -m "Add MQTT user: new_user"
git push
```

## 🗑️ How to Remove a User
1. Open configuration/mosquitto/config/password_file in a text editor.
2. Delete the line corresponding to the user you want to remove.
3. Commit and push the change.

## ⚠️ Security Notes

Password File: The password_file stored in this repo contains hashed passwords. It is safe to store in a private repository, but **never** commit plain text passwords.
