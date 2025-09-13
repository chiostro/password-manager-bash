# Password Manager

**password_manager.bash** is a simple Bash script that helps you securely store service passwords using GPG encryption. It uses symmetric key encryption to encrypt and save passwords into a file, ensuring your sensitive data stays protected.

### Features:

* **Secure Password Storage**: Save your service passwords in an encrypted file.
* **GPG Encryption**: Uses GPG (GNU Privacy Guard) for encrypting and decrypting passwords.
* **Termux Compatibility**: Works on Android via Termux.

### Important:

* **Service Password**: The password for your service (e.g., Gmail, Facebook).
* **GPG Passphrase**: The passphrase used to encrypt and decrypt the password file is **different** from your service password.

---

## How It Works:

1. **Save a Password**: Adds a password for a specific service and encrypts it with GPG using a passphrase.
2. **Retrieve a Password**: Decrypts the password file using the GPG passphrase and retrieves the saved password.
3. **Delete a Password**: Deletes a specific password from the encrypted file.
4. **List Serives Password**: List all saved services
5. **Quit**:  

---

## Prerequisites:

1. **GPG**: GPG is preinstalled in Termux. Install it in need with:

   ```bash
   pkg install gnupg
   ```

2. **Termux**: If you're using Android, install **Termux** from the Google Play Store.

---

## Installation:

1. **Clone the repository**:

   ```bash
   git clone https://github.com/chiostro/password-manager-bash.git
   cd password-manager-bash
   ```

2. **Make the script executable**:

   ```bash
   chmod +x password_manager.bash
   ```

---

## Usage:

```bash
./password_manager.bash
```

### 1. **Save a password**:
### 2. **Retrieve a password**:
### 3. **Delete a password**:
### 4. **List password**:
### 5. **Quit**:

---

## Security

* **GPG** ensures your passwords are securely encrypted using AES256 encryption.
* The **GPG passphrase** is **different** from the service password. It protects the encrypted password file.

---

## Project Structure:

* `password_manager.bash`: Main script for adding, retrieving, and deleting passwords.
* `password_store.servicename.gpg`: Encrypted file containing your passwords.

---

## Contributions

Feel free to fork this project and submit pull requests. If you encounter issues, open an issue on GitHub.

---

## License

This project is licensed under the MIT License. See the `LICENSE` file for more details.

---

## GPG Passphrase

Remember, the **GPG passphrase** is essential for decrypting the password file. **Don't forget it**, or you won't be able to access your stored passwords!

---

Happy password management! 

---

