# Git overview

Working Tree > Staging Area > Local Repository > Remote Repository

Remote repository
- Professionally managed
- Source of truth
- Integrates with other systems

---

Hosted options
- Bitbucket
- GitHub

On-premise options
- Bitbucket Server
- GitHub Enterprise
- Open source software

---

## Two scenarios starting with a remote repository
| Have a local repository | Task             |
| ----------------------- | ---------------- |
| No                      | Clone the remote |
| Yes                     | Add the remote   |

Have a local repository? **YES**  
git init  
git add README.md  
git commit -m "first commit"  
git branch -M main  ??????  
git remote add origin https://github.com/jeftegoesdev/GitOverviewAndCommands.git  
git push -u origin main  
  
Have a local repository? **NO**  
git remote add origin https://github.com/jeftegoesdev/GitOverviewAndCommands.git  
git branch -M main  
git push -u origin main  

---

## Git legends
- U or ?? - Untracked
- A - Staged
- M - Modified
- AM - Staged and Modified

## Graph Model
---
## Git IDs
---
### Git objects
1. **Commit object** - A small text file, that contains informations such as the commit user informatiom, commit message, a reference to the commit's parent of parents, and a reference to the root tree of the project.
2. **Annotated tags** - A reference to a specific commit
3. **Tree** - Directories and filenames in the project
4. **Blob** - The content of a file in the project

### Git's graph model
#### Graphs
- Graph
    - A way to model connected things
    - Contain nodes connected by lines (edges)
- Directed graph
    - Nodes are connected in a certain direction
    - Arrow direction
        - Direction depends on how you define  the relationship
- Acyclic
    - Acyclic means
#### Directed acyclic graph (DAG)

### Git IDs
- The **name** of a Git object
- 40-character hexadecimal string
- Also know as object ID, SHA-1, hash and checksum
- Example: e189613221afc1e1c50f84f8ee92e9899bc55735 (HEAD -> master, origin/master)

### Shortening Git IDs
- Four or more characters of the beginning of a Git ID
- Example: **e189613**221afc1e1c50f84f8ee92e9899bc55735 (HEAD -> master, origin/master)

## Git references
### Overview of references
User-friendly name that points to:
- A commit SHA-1 hash
- Another reference, known as a symbolic reference

### Branch labels and HEAD
#### Branch label
- Points to the most recent commit in the branch, the "tip of the branch"
- Implemented as a referentece
#### Head
- A referebce to the current commit
- Usually points to the branch label of the current branch
- One HEAD per repository
### Tags
Reference/label attached to a specific commit
Tags can be used instead of branchs labels or Git IDs in Git commands
#### Types of tags
- Lightweight
    - A simple reference to a commit
- Annotated
    - A full Git object that references a commit
    - Includes tag author information, tag date, tag message, the commit ID
    - Optionally can be signed and verified with GNU Privacy Guard (GPG)

## Branches
### Benefits of branches
- Fast and easy to create
- Enable experimentation
- Enable team development
- Support multiple project versions

### Topic and long-running branches
- Topic
    - A feature, a bug fix, a hotfix, a configuration change, etc.
- Long-lived
    - master, velop, release, etc.

### Checkout
1. Updates the HEAD reference
2. Updates the working tree with tree with the commit's files

## Merging
Main types of merges:
1. Fast-forward merge
2. Merge commit
3. Squash merge
4. Rebase

### Merge commit
1. Combines the commits at the tips of the merged branches
2. Places the result in the merge commit

### Fast-forward (FF) merge
- Moves the base branch label to the tip of the topic branch
    - Conditions for a fast-forward merge
        - Possible if no other commits have been made to the base branch since branching

## Resolving merge conflicts
### Merge conflict overview
- Merge conflicts occur when a person needs to make a decision
- Merge conflicts can only occur if the same file is changed
- A merge conflict occurs when two branches change the same hunk in different ways.
- When a conflict occurs:
  - Fit will create files in the working tree containing conflict markers
  - Fix, add, and commit the conflicted files
- Git automatically merges changes to different parts (hunks) of files
  - Avoiding merge conflicts
    - Git merges are usually quite easy
    - Small, frequent merges are the easiest
  
### Resolving a merge conflict
- Involves three commits
    1. The tip of the current branch (B) - "ours" or "mine"
    2. The tip of the branch to be merged (C) - "theirs"
    3. A common ancestor (A) - "merge base"
- Basic steps to resolve a merge conflict
    1. Checkout master
    2. Merge featureA
       1. CONFLICT - Both modified FileA.txt
    3. Fix FileA.txt
    4. Stage FileA.txt
    5. Commit the merge commit
    6. Delete the featureA branch label
When attempting a merge, files with conflicts are modified by Git and placed in the working tree.
- Conflicted hunks
  - Conflicted hunks are surrounded by conflict markers <<<<<<< and >>>>>>> 
- Reading conflict markers
  - Text form the `HEAD`  commit is between <<<<<<< and =======
  - Text from the branch to be merged is between ======= and >>>>>>>

--- 
## Git principal commands
- Set user name and email
    - git config --global user.name "your_username"
    - git config --global user.email "your_email_address@example.com"
    - git config --global --list
- Get user name
    - git config user.name
- Get user email
    - git config user.email
- Initialize an empty local git repository into selected project
    - git init
- Create a local copy of a remote repository
    - git clone `<url/to/projectname.git> [localprojectname]` # Example: git clone https://github.com/me/repoa.git
- Add a remote repository
    - git remote add `<alias-name> <url>` # Example: git remote add origin https://github.com/me/repob.git
- Display information about remote repositories associated with the local repository
    - git remote -v # -v means --verbose
- Adds untracked of modified files to the staging area
    - git add `<file-or-directory>` # Example git add README.md or git add DirA
    - git add . # all files into directory
- View the status of files in the working tree and staging area
    - git status
    - git status -s # -s means short status
- Creates a snapshot of the current project
    - git commit –m "Comment." # -m means message
	- git commit --allow-empty -m "My empty commit" # --allow-empty force commit without files
	- git commit --amend -m "test message" # Replace the tip of the current branch
- View the commit history
    - git log
    - git log --oneline # --oneline condensed versions of the log
    - git log -10 # limit the log to the most recent # commits
    - git log --oneline --graph
- Writes commits for a branch to a remote repository
    - git push `[-u] [<repository>] [<branch>]` # Example: git push origin master, use this form to first push
    - git push `[<repository>] [<branch>]`
- Create an SHA-1 for any content
    - git hash-object `<file>` # Example: git hash-object FilaA.txt
- Create a lightweight tag
    - git tag `<tagname> [<commit>]` # `<commit>` defailts to HEAD
- Creating an annotated tag
    - git tag -a `[-m <msg> | -F <file>] <tagname> [<commit>]`
- Delete tag
    - git tag -d `<tagname>`
- View all tags in the repository
    - git tag
    - git show v0.1 # Shows information about the commit associated with the version 0.1 tag
- See a list of branches local repository
    - git branch
    - git branch -a # -a see remote and local repositories
- Create a branch
    - git branch `<name>`
- Delete a branch
    - git branch -d `<name>`
    - git push origin  -- delete `<name>`
- Checkout a branch or commit
    - git checkout `<branch_or_commit>`
    - git checkout -b `<branch_or_commit>` # The -b option combines two commands (git branch and git checkout)
- Returns a local list of recent HEAD commits (Accidental branch delete)
    - git reflog
- Join two or more development histories together Fast-forward (FF)
    - Steps:
        1. git checkout `<branch_or_commit>`
        2. git merge `<branch_or_commit>`
        3. git branch -d `<branch_or_commit>`
    - Ex:
        1. git checkout master
        2. git merge feature/a
        3. git branch -d feature/a # optional
- Join two or more development histories together Merge Commit (NO FAST-FORWARD)
    - Steps:
        1. git checkout `<branch_or_commit>`
        2. git merge --no-ff `<branch_or_commit>`
        3. git branch -d `<branch_or_commit>`
    - Ex:
        1. git checkout master
        2. git merge --no-ff feature/a
        3. git branch -d feature/a # optional
