
# Project Bank Application

## Team Members

Before starting the project, fill in the team members below:

| Role | Name
|--|--|
|Engineer 1|`MD Najmuch Sakib Rahman`
|Engineer 2|`Mohammad Azizur Rahman`
|Engineer 3|`Upsina Nabi`

> **Important:** The engineer assigned to each task is responsible for completing that task and contributing it to the team repository.

----------
## Project Introduction

In this project, you will work as a **team of 3 DevOps engineers** to build a simple command-line **Bank Application using Bash**.
You will work together as a team, but each engineer will be responsible for specific tasks assigned in this document.

The final application should provide basic banking functionality such as:

-   Deposit money
-   Withdraw money
-   Check current balance
-   Exit the application

## Example Input / Output

The following examples show the **expected behavior** of the Bank Application.
> **Important:** These are examples of the application's behavior, not the code you must write. Your team can implement the functionality in your own way.
----------

### Step 1 — Start the Application
When the application starts, it should display a menu.
**Expected output:**
```
-----------------------------
Welcome to Simple Bank
1. Deposit
2. Withdraw
3. Check Balance
4. Exit
-----------------------------
Choose an option:
```

The initial balance should be:

```
1000
```
----------

### Step 2 — Deposit Money

The user selects **option 1**.

**Input:**

```
Choose an option: 1
```

The application asks for the deposit amount.

**Input:**

```
Enter amount to deposit: 500
```

The balance should increase by `500`.

**Expected output:**

```
Deposited 500.
New balance: 1500
```

----------

### Step 3 — Check Balance

The user selects **option 3**.

**Input:**

```
Choose an option: 3
```

**Expected output:**

```
Your current balance: 1500
```

----------

### Step 4 — Withdraw Money

The user selects **option 2**.

**Input:**

```
Choose an option: 2
```

The application asks for the withdrawal amount.

**Input:**

```
Enter amount to withdraw: 300
```

The balance should decrease by `300`.

**Expected output:**

```
Withdrew 300.
New balance: 1200
```

----------

### Step 5 — Check Balance Again

The user selects **option 3**.

**Input:**

```
Choose an option: 3
```

**Expected output:**

```
Your current balance: 1200
```

----------

### Step 6 — Try to Withdraw More Than the Balance

The user selects **option 2**.

**Input:**

```
Choose an option: 2
Enter amount to withdraw: 2000
```

Because the current balance is only `1200`, the withdrawal should not happen.

**Expected output:**

```
Insufficient funds!
```

The balance should remain:

```
1200
```

----------

### Step 7 — Enter an Invalid Option

The user enters an option that is not available in the menu.

**Input:**

```
Choose an option: 9
```

**Expected output:**

```
Invalid option!
Please choose a valid option.
```

The application should continue running and display the menu again.

----------

### Step 8 — Exit the Application

The user selects **option 4**.

**Input:**

```
Choose an option: 4
```

**Expected output:**

```
Goodbye!
```

The application should then terminate.
# Step 1 — GitHub Repository Setup

### 👨‍💻 Assigned to: Engineer 1

Engineer 1 is responsible for setting up the GitHub repository for the team.

### 1. Create a GitHub Account

Create a GitHub account if you do not already have one.

> **Skip this step if you already have a GitHub account.**

----------

### 2. Create the Repository

Engineer 1 must create a **public GitHub repository** with the following name:

```text
bank-project

```

The repository should be owned by Engineer 1.

----------

### 3. Add Team Members as Collaborators

Engineer 1 must add:

-   Engineer 2
    
-   Engineer 3
    

as collaborators to the repository.

After this step, all three engineers should have access to the repository.

----------

### 4. Create `task.md`

Engineer 1 must:

1.  Copy this entire project document.
    
2.  Create a new file named:
    

```text
task.md

```

3.  Paste the project instructions into `task.md`.
4. update the table, add teammates name
5.  Commit the file. (add meaningful message)
6.  Push it to the **`main` branch**.
    

The repository should now look similar to:

```text
bank-project/
└── task.md

```
# Step 2 — Create the Application Structure

### 👨‍💻 Assigned to: Engineer 2

Engineer 2 is responsible for creating the **initial structure of the Bank Application**.

At this stage, you are **not required to implement the Deposit or Withdraw functionality**.

The goal of this step is to create the basic Bash application structure that the other engineers can build upon.

## 1. Create a Branch

First, make sure your local repository is up to date with the `main` branch.

Create a new branch from `main`.

You may use the following branch name:

```
feature/application-structure
```

Switch to the newly created branch and work only on this branch.

----------

## 2. Create the Bash Script

Create the main Bash script for the application.

Suggested filename:

```
bank.sh
```

The script should be executable.

The repository should now look similar to:

```
bank-project/
├── task.md
└── bank.sh
```

----------

## 3. Create the Basic Application Structure

The script should have the basic structure required for the Bank Application.

It should:
-   Start as a Bash script.
-   Define an initial balance of `1000`.
-   Store the initial balance in a variable.
-   Display the Bank Application menu.
-   Allow the user to select an option.
-   Keep displaying the menu until the user chooses **option 4**.
-   Handle all available menu options.
-   Handle invalid options.
### Initial Balance

The application must start with a balance of:
```
1000
```

Store this value in a variable so that the balance can be used and modified by the application later.

> **Hint:** You need a variable to store the balance. Decide the variable name and implementation yourself.

For example, the application should conceptually have:

```
balance → 1000
```

### Option 1 — Deposit

When the user selects `1`, the application should enter the **Deposit** section.

For this step, simply display a message indicating that the Deposit section was selected.

Example:

```
Deposit section
```

No deposit calculation is required yet.

### Option 2 — Withdraw

When the user selects `2`, the application should enter the **Withdraw** section.

For this step, simply display a message indicating that the Withdraw section was selected.

Example:

```
Withdraw section
```

No withdrawal calculation is required yet.

### Option 3 — Check Balance

When the user selects `3`, the application should display the current balance.

At the beginning of the application, this should display:

```
Your current balance: 1000
```

### Option 4 — Exit

When the user selects `4`, the application should terminate.

Example:

```
Goodbye!
```

### Invalid Option

If the user enters anything other than `1`, `2`, `3`, or `4`, display an invalid-option message.

Example:

```
Invalid option!
Please choose a valid option.
```

The application should then display the menu again.
At this stage, the menu can look similar to:

```
-----------------------------
Welcome to Simple Bank
1. Deposit
2. Withdraw
3. Check Balance
4. Exit
-----------------------------
Choose an option:
```

----------

## 4. Do Not Implement the Banking Logic Yet

For this step, Engineer 2 **does not need to implement**:

-   Deposit calculation
-   Withdrawal calculation
-   Insufficient-funds logic
-   Balance management

The purpose of this step is to establish the **application skeleton**.

The other engineers will build functionality on top of this structure in later steps.

----------

## 5. Commit Your Changes

Create a meaningful commit message.
Avoid meaningless commit messages such as:

```
update
test
changes
final
```
----------

## 6. Push the Branch

Push your branch to GitHub:

```
feature/application-structure
```
Do **not** push your work directly to `main`.

Your GitHub repository should now contain:

```
main
│
└── task.md

feature/application-structure
│
├── task.md
└── bank.sh
```
----------
## 7. Create a Pull Request

After pushing your branch, create a **Pull Request (PR) through the GitHub UI**.

The PR should be created from:

```
feature/application-structure
```

into:

```
main
```

Add a clear PR title and description explaining what you implemented.
## 8. Review the Pull Request

**Engineer 1 and Engineer 3** must review the Pull Request.

They should check whether:

-   The application structure follows the task requirements.
    
-   The menu works correctly.
    
-   Option `1` reaches the Deposit section.
    
-   Option `2` reaches the Withdraw section.
    
-   Option `3` displays the initial balance `1000`.
    
-   Option `4` exits the application.
    
-   Invalid options are handled.
    
-   The application continues running where required.
    
-   The implementation is understandable.
    
-   The changes do not unnecessarily modify unrelated files.
    

After reviewing the PR, Engineers 1 and 3 should **leave a comment on the Pull Request**.

If something needs to be changed, explain what needs to be fixed in the PR comments.

If everything looks correct, leave a comment indicating that the implementation has been reviewed.

## 9. Merge the Pull Request

Once Engineers 1 and 3 have reviewed the Pull Request and confirmed that the changes look correct, **Engineer 2 will merge the Pull Request into**  `main` **using the GitHub UI**.

Engineer 2 is responsible for performing the merge.

After the merge, the changes from:

```
feature/application-structure
```

should be available in:

```
main
```

The `main` branch should now contain:

```
bank-project/
├── task.md
└── bank.sh
```

> **Important:** Engineer 2 should not merge the PR before Engineers 1 and 3 have completed their review.






# Step 3 — Implement Deposit and Withdraw

### 👨‍💻 Assigned to: Engineer 3

Engineer 3 is responsible for implementing the **Deposit** and **Withdraw** functionality.

## Requirements

Implement:

-   **Deposit**
    
    -   Accept a deposit amount.
        
    -   Add the amount to the current balance.
        
    -   Display the updated balance.
        
-   **Withdraw**
    
    -   Accept a withdrawal amount.
        
    -   Check whether sufficient balance is available.
        
    -   If sufficient, subtract the amount from the balance.
        
    -   If insufficient, display an appropriate message.
        
    -   Display the updated balance when the withdrawal is successful.
        
-   **Check Balance**
    
    -   Verify that option `3` displays the correct current balance after deposits and withdrawals.
        

> **Important:** Build on the existing application structure created in Step 2. Do not remove or break the existing menu and exit functionality.

## GitHub Workflow
0.  pull the latest changes on main
1.  Create a branch from the latest `main` called `feature/deposit-withdraw`
2.  Implement the required functionality.
    
3.  Test the application.
    
4.  Commit your changes with a meaningful commit message.
    
5.  Push the branch to GitHub.
    
6.  Create a Pull Request through the GitHub UI.
    
7.  Engineer 1 and Engineer 2 review the PR and comment on it.
    
8.  Fix any issues identified during review.
    
9.  Once the review is complete, **Engineer 3 merges the PR into `main` through the GitHub UI**.
    
By the end of this step:

> **The core Bank Application must be fully functional and satisfy all the requirements and expected behaviors described in this project.**

The final application should support:

-   Deposit
    
-   Withdraw
    
-   Insufficient-funds handling
    
-   Check Balance
    
-   Correct balance updates
    
-   Invalid option handling
    
-   Exit
    
-   Complete menu flow
    
-   All functionality tested
    
-   PR reviewed
    
-   Changes merged into `main`










# Step 4 — Implement Account Statement

### 👨‍💻 Assigned to: Engineer 1

Engineer 1 is responsible for implementing the **Account Statement** feature.

The Account Statement should summarize the user's banking activity during the current application session.

## Account Statement

### update the menu section
add `5.Statement`  option to the application menu for viewing the account statement.

```
-----------------------------
Welcome to Simple Bank
1. Deposit
2. Withdraw
3. Check Balance
4. Exit
5. Statement
-----------------------------
Choose an option:
```

When the user selects the Account Statement option, it should display:

```text
-----------------------------
      Account Statement
-----------------------------
Total Deposit   : 500
Total Withdraw  : 300
Current Amount  : 1200
-----------------------------

```

The exact formatting is up to you, but the statement must clearly show these three values:

-   **Total Deposit** — the total amount deposited during the session.
    
-   **Total Withdraw** — the total amount successfully withdrawn during the session.
    
-   **Current Amount** — the user's current balance.
    

### Example

Starting balance:

```text
1000

```

User performs:

```text
Deposit: 500
Withdraw: 300
Deposit: 200
Withdraw: 100

```

The Account Statement should show:

```text
-----------------------------
      Account Statement
-----------------------------
Total Deposit   : 700
Total Withdraw  : 400
Current Amount  : 1300
-----------------------------

```

### Important

The values must be **calculated from the actual transactions** performed by the user.

For example:

-   A failed withdrawal due to insufficient funds should **not** increase Total Withdraw.
    
-   Deposits should increase Total Deposit.
    
-   Successful withdrawals should increase Total Withdraw.
    
-   Current Amount should reflect the actual current balance.
    

Do not use fixed/hard-coded values for the statement.

## GitHub Workflow

1.  Create a branch from the latest `main` called `feature/statement`
    
2.  Implement the Account Statement.
    
3.  Test it with multiple deposits and withdrawals.
    
4.  Commit and push the branch.
    
5.  Create a Pull Request through the GitHub UI.
    
6.  Engineer 2 and Engineer 3 review the PR and comment on it.
    
7.  Fix any issues identified during review.
    
8.  Engineer 1 merges the PR into `main` after the review is complete.
    

## Step 4 Completion

-   Account Statement option is available.
    
-   Total Deposit is correct.
    
-   Total Withdraw is correct.
    
-   Current Amount is correct.
    
-   Failed withdrawals are not counted.
    
-   Statement reflects actual transactions.
    
-   Existing features still work.
    
-   Application tested with multiple transactions.
    
-   PR created.
    
-   PR reviewed by Engineer 2 and Engineer 3.
    
-   PR merged into `main`.
    

> **Final Goal:** After this step, the team should have a complete Bank Application with working banking operations and an Account Statement.

# Final Team Verification

After Step 4 has been merged into `main`, all three engineers must
pull the latest `main` branch and test the complete application.

Verify:

- [ ] Deposit works.
- [ ] Withdraw works.
- [ ] Insufficient funds are handled.
- [ ] Check Balance is correct.
- [ ] Statement shows correct Total Deposit.
- [ ] Statement shows correct Total Withdraw.
- [ ] Statement shows correct Current Amount.
- [ ] Invalid options are handled.
- [ ] Exit works.
- [ ] All menu options work together.
