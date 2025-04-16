# User Management Bash Script

## Script Name: `user_manage.sh`

This script provides a simple interactive interface for managing local Linux users. It supports adding users, deleting users, and deleting users along with their home directories.

---

## Features

- ✅ Add a new user with a home directory
- 🗑️ Delete an existing user
- 🏠🗑️ Delete a user along with their home directory
- 🧑‍💻 Uses `sudo` for privileged operations

---

## Usage

### 1. Clone the repository (or copy the script)

```bash
git clone https://github.com/yourusername/user-manage-script.git
cd user-manage-script
```

### 2. Make the script executable

```bash
chmod +x user_manage.sh
```

### 3. Run the script

```bash
./user_manage.sh
```

> 💡 Make sure you have `sudo` privileges when running this script.

---

## Example Run

```text
Choose an option:
1) Add User
2) Delete User
3) Delete User and Home Directory
Enter choice [1-3]: 1
Enter username to add: john
User 'john' added successfully.
```

---

## Notes

- This script is intended for **Linux systems**.
- Always double-check usernames before deletion—especially when removing the home directory.
