#!/bin/bash

# Script Name: user_manage.sh

# Function to add a user
add_user() {
    read -p "Enter username to add: " username
    sudo useradd -m "$username"
    if [ $? -eq 0 ]; then
        echo "User '$username' added successfully."
    else
        echo "Failed to add user '$username'."
    fi
}

# Function to delete a user
delete_user() {
    read -p "Enter username to delete: " username
    sudo userdel "$username"
    if [ $? -eq 0 ]; then
        echo "User '$username' deleted successfully."
    else
        echo "Failed to delete user '$username'."
    fi
}

# Function to delete user and home directory
delete_user_with_home() {
    read -p "Enter username to delete (with home directory): " username
    sudo userdel -r "$username"
    if [ $? -eq 0 ]; then
        echo "User '$username' and their home directory deleted successfully."
    else
        echo "Failed to delete user '$username' with home directory."
    fi
}

# Menu
echo "Choose an option:"
echo "1) Add User"
echo "2) Delete User"
echo "3) Delete User and Home Directory"
read -p "Enter choice [1-3]: " choice

case $choice in
    1) add_user ;;
    2) delete_user ;;
    3) delete_user_with_home ;;
    *) echo "Invalid choice." ;;
esac
