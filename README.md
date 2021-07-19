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
    - git clone <url/to/projectname.git> [localprojectname] # Example: git clone https://github.com/me/repoa.git
- Add a remote repository
    - git remote add <alias-name> <url> # Example: git remote add origin https://github.com/me/repob.git
- Display information about remote repositories associated with the local repository
    - git remote -v # -v means --verbose
- Adds untracked of modified files to the staging area
    - git add <file-or-directory> # Example git add README.md or git add DirA
    - git add . # all files into directory
- View the status of files in the working tree and staging area
    - git status
    - git status -s # -s means short status
- Creates a snapshot of the current project
    - git commit –m "Comment." # -m means message
- View the commit history
    - git log
    - git log --oneline # --oneline condensed versions of the log
    - git log -10 # limit the log to the most recent # commits
- Writes commits for a branch to a remote repository
    - git push [-u] [<repository>] [<branch>] # Example: git push origin master, use this form to first push
    - git push [<repository>] [<branch>]
