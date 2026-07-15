# IAM Users & Groups – Short Notes

## Root Account
- Created automatically when an AWS account is created.
- Has **full access** to all AWS services and resources.
- **Do not use** the root account for everyday tasks.
- Keep root account credentials secure and use only for critical account-level tasks.

## IAM Users
- Represents an **individual person or service**.
- Each user has:
  - Unique login credentials
  - Individual permissions
- Recommended to create IAM users instead of sharing the root account.

## IAM Groups
- Used to **organize IAM users**.
- Permissions are assigned to the **group**, not each user individually.
- Example groups:
  - Developers
  - Operations
  - Audit Team
  - Admin

## Important Points
- Groups **only contain users**.
- Groups **cannot contain other groups**.
- A user:
  - Can belong to **multiple groups**.
  - Can belong to **no group**.
- Users inherit permissions from their groups.

## Demo Summary

### Create a User Group
1. Open **IAM Console**.
2. Go to **User Groups**.
3. Click **Create Group**.
![alt text](image-2.png)
4. Give the group a name (e.g., `Admin`).
5. Attach a permission policy (e.g., `AdministratorAccess`).
6. Create the group.
![alt text](image-3.png)

### Create an IAM User
1. Go to **Users**.
2. Click **Create User**.
![alt text](image.png)
3. Enter a username.
5. Set a password.
6. Add the user to a group (recommended).
![alt text](image-1.png)
7. Create the user.

### Verify Permissions
- Open the user details.
- Check:
  - **Group permissions** (Inherited)
  - **Direct permissions** (Attached directly to the user)

### Sign in as IAM User
1. Use the **IAM User Sign-in URL**.
2. Optionally create an **Account Alias** for an easier login URL.
3. Enter:
   - Account Alias (or Account ID)
   - IAM Username
   - Password
4. Sign in.