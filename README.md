# Git overview and commands<!-- omit in toc -->

## Contents <!-- omit in toc -->

- [1. DevOps and Git in a nutshell](#1-devops-and-git-in-a-nutshell)
  - [1.1. Continuous improvement](#11-continuous-improvement)
    - [1.1.1. Small batch size](#111-small-batch-size)
    - [1.1.2. Adding a feature](#112-adding-a-feature)
  - [1.2. Managing project versions](#12-managing-project-versions)
    - [1.2.1. Our project](#121-our-project)
    - [1.2.2. Git commits](#122-git-commits)
    - [1.2.3. Project history](#123-project-history)
    - [1.2.4. Is git efficient?](#124-is-git-efficient)
  - [1.3. Branches](#13-branches)
    - [1.3.1. Creating branches](#131-creating-branches)
    - [1.3.2. Teams](#132-teams)
  - [1.4. Pull requests](#14-pull-requests)
    - [1.4.1. Merging](#141-merging)
    - [1.4.2. Pull request](#142-pull-request)
    - [1.4.3. Pull request accepted](#143-pull-request-accepted)
- [2. Version control](#2-version-control)
  - [2.1. What is version control?](#21-what-is-version-control)
  - [2.2. What type of content?](#22-what-type-of-content)
  - [2.3. Distributed version control system (DVCS)](#23-distributed-version-control-system-dvcs)
- [3. Git overview](#3-git-overview)
  - [3.1. What is Git?](#31-what-is-git)
  - [3.2. What is a git repository?](#32-what-is-a-git-repository)
  - [3.3. Command line vs. user interface](#33-command-line-vs-user-interface)
  - [3.4. Should you use the command line?](#34-should-you-use-the-command-line)
- [4. Installation and getting started](#4-installation-and-getting-started)
  - [4.1. Installing Git](#41-installing-git)
  - [4.2. Git syntax](#42-git-syntax)
  - [4.3. Getting help](#43-getting-help)
  - [4.4. Configuring user information and the default editor](#44-configuring-user-information-and-the-default-editor)
- [5. Two scenarios starting with a remote repository](#5-two-scenarios-starting-with-a-remote-repository)
- [6. Git status files legends](#6-git-status-files-legends)
- [7. Graph Model](#7-graph-model)
- [8. Git IDs](#8-git-ids)
  - [8.1. Git objects](#81-git-objects)
  - [8.2. Git's graph model](#82-gits-graph-model)
    - [8.2.1. Graphs](#821-graphs)
    - [8.2.2. Directed acyclic graph (DAG)](#822-directed-acyclic-graph-dag)
  - [8.3. Git IDs](#83-git-ids)
  - [8.4. Shortening Git IDs](#84-shortening-git-ids)
- [9. Git references](#9-git-references)
  - [9.1. Overview of references](#91-overview-of-references)
  - [9.2. Branch labels and HEAD](#92-branch-labels-and-head)
    - [9.2.1. Branch label](#921-branch-label)
    - [9.2.2. Head](#922-head)
  - [9.3. Tags](#93-tags)
    - [9.3.1. Types of tags](#931-types-of-tags)
- [10. Branches](#10-branches)
  - [10.1. Benefits of branches](#101-benefits-of-branches)
  - [10.2. Topic and long-running branches](#102-topic-and-long-running-branches)
  - [10.3. Checkout](#103-checkout)
- [11. Merging](#11-merging)
  - [11.1. Merge commit](#111-merge-commit)
  - [11.2. Fast-forward (FF) merge](#112-fast-forward-ff-merge)
- [12. Resolving merge conflicts](#12-resolving-merge-conflicts)
  - [12.1. Merge conflict overview](#121-merge-conflict-overview)
  - [12.2. Resolving a merge conflict](#122-resolving-a-merge-conflict)
- [13. Tracking branches](#13-tracking-branches)
  - [13.1. Tracking branch overview](#131-tracking-branch-overview)
  - [13.2. Viewing tracking branch names and status](#132-viewing-tracking-branch-names-and-status)
- [14. Fetch, Pull and Push](#14-fetch-pull-and-push)
  - [14.1. Network command overview](#141-network-command-overview)
  - [14.2. Fetch](#142-fetch)
  - [14.3. Pull](#143-pull)
  - [14.4. Push](#144-push)
- [15. Rebasing](#15-rebasing)
  - [15.1. Rebasing overview](#151-rebasing-overview)
  - [15.2. Executing a rebase](#152-executing-a-rebase)
  - [15.3. Rebasing with merge conflicts](#153-rebasing-with-merge-conflicts)
- [16. Rewriting history](#16-rewriting-history)
  - [16.1. Amending a commit](#161-amending-a-commit)
  - [16.2. Interactive rebase](#162-interactive-rebase)
- [17. Pull requests I](#17-pull-requests-i)
  - [17.1. Pull request overview](#171-pull-request-overview)
  - [17.2. Single repository pull requests](#172-single-repository-pull-requests)
- [18. Pull requests II](#18-pull-requests-ii)
  - [18.1. Forking overview](#181-forking-overview)
- [19. Git workflows](#19-git-workflows)
  - [19.1. Centralized workflow](#191-centralized-workflow)
  - [19.2. Feature branch workflow](#192-feature-branch-workflow)
  - [19.3. Forking workflow](#193-forking-workflow)
  - [19.4. Gitflow workflow](#194-gitflow-workflow)
  - [19.5. Squash merges](#195-squash-merges)
- [20. Transfer repo to another repo](#20-transfer-repo-to-another-repo)
- [21. Git principal commands](#21-git-principal-commands)

# 1. DevOps and Git in a nutshell

## 1.1. Continuous improvement

- DevOps has a few fundamental principles that most modern software projects follow. One of the key principles is to continuously plan, build and release small improvements to your product.
- This is contrasted with what might be called the waterfall approach, In which many features are planned, developed and released as one batch.

### 1.1.1. Small batch size

- Small batch size leads to continuous improvement.

### 1.1.2. Adding a feature

- Small batch size also applies to features.

## 1.2. Managing project versions

### 1.2.1. Our project

- Product contains 50 files of code.
  - This is out "project".
- We want to continuously improve it.
- Hot does Git help?

### 1.2.2. Git commits

- Git manages versions of projects.
- Each version of a project is called a _commit_.
- Assuming the bug fix involves a change to only one of the 50 files.
  - Commits A and B only differ by one file.
  - A small improvement in the product.

### 1.2.3. Project history

- The collection of commits contain the history of the project.
  - You can review the history.
  - You can "undo" a change.

### 1.2.4. Is git efficient?

- Each commit is a snapshop of the entire project.
- Behind the scenes, Git is very efficient at storing commits.
  - Each unique file is stored only once.

## 1.3. Branches

- All commits belong to a _branch_.
  - An independent line of development of the project.
- By default, there is a single branch and it is called _master_.

### 1.3.1. Creating branches

- How do you maintain a stable project at the same time that you are working on it?
  - Create a separate branch.
- The _master_ branch does not know about the _featureX_ branch.

### 1.3.2. Teams

- The independence of branches allows teams to scale their work.

## 1.4. Pull requests

### 1.4.1. Merging

- After a _merge_, the _master_ branch contains the new feature.

### 1.4.2. Pull request

- Request to merge your branch into another branch.
  - Team members can discuss, review and approve your changes.
  - Can require passing automated tests.

### 1.4.3. Pull request accepted

- Reviewed
- Tested

# 2. Version control

## 2.1. What is version control?

- Version control enables teams to manage a collecion of files in an agile way.
- Content:
  - Complete history tracked and available.
- Teams:
  - Support many workflows.
  - Collaboration.
  - Quality through team communication and reviews.
- Agility:
  - Manages small changes.
  - Easily test, fix or undo ideas and changes.

## 2.2. What type of content?

- Source code.
- Automated tests.
- Server configuration.
- Documentation.
- A book.
- Web site content.

## 2.3. Distributed version control system (DVCS)

- A DVCS usually has these characteristics:
  - (User A) local repository >>> remore repository <<< local repository (User B).
  - Each user has a local project history (repository).
  - Users can work offline.
  - Can easily synchronize repositories.

# 3. Git overview

## 3.1. What is Git?

- Git is a distributed version control system (DVCS)
- Open source software (OSS)
  - Has a vibrant community and ecosystem
- Adapt to many types of projects and workflows
  - Works well for large or small projects

## 3.2. What is a git repository?

- A series of _snapshots_, or _commits_

## 3.3. Command line vs. user interface

## 3.4. Should you use the command line?

- Command line skills are assumed by the industry
- Command line = automatable
- Fast and easy
- Structure work git: Working Tree > Staging Area > Local Repository > Remote Repository
- Remote repository
  - Professionally managed
  - Source of truth
  - Integrates with other systems
- Hosted options
  - Bitbucket
  - GitHub
- On-premise options
  - Bitbucket Server
  - GitHub Enterprise
  - Open source software

# 4. Installation and getting started

## 4.1. Installing Git

---

## 4.2. Git syntax

---

## 4.3. Getting help

---

## 4.4. Configuring user information and the default editor

---

# 5. Two scenarios starting with a remote repository

| Have a local repository | Task             |
| ----------------------- | ---------------- |
| No                      | Clone the remote |
| Yes                     | Add the remote   |

- Have a local repository? **YES**

  ```
  git init
  git add README.md
  git commit -m "first commit"
  git branch -M main  ??????
  git remote add origin https://github.com/jeftegoesdev/GitOverviewAndCommands.git
  git push -u origin main
  ```

- Have a local repository? **NO**

  ```
  git remote add origin https://github.com/jeftegoesdev/GitOverviewAndCommands.git
  git branch -M main
  git push -u origin main
  ```

# 6. Git status files legends

- Legends:
  - U or ?? - Untracked.
  - A - Staged.
  - M - Modified.
  - AM - Staged and Modified.

# 7. Graph Model

---

# 8. Git IDs

---

## 8.1. Git objects

1. **Commit object** - A small text file, that contains informations such as the commit user informatiom, commit message, a reference to the commit's parent of parents, and a reference to the root tree of the project.
2. **Annotated tags** - A reference to a specific commit.
3. **Tree** - Directories and filenames in the project.
4. **Blob** - The content of a file in the project.

## 8.2. Git's graph model

### 8.2.1. Graphs

- Graph:
  - A way to model connected things.
  - Contain nodes connected by lines (edges).
- Directed graph:
  - Nodes are connected in a certain direction.
  - Arrow direction.
    - Direction depends on how you define the relationship.
- Acyclic:
  - Acyclic means.

### 8.2.2. Directed acyclic graph (DAG)

## 8.3. Git IDs

- The **name** of a Git object.
- 40-character hexadecimal string.
- Also know as object ID, SHA-1, hash and checksum.
- Example: e189613221afc1e1c50f84f8ee92e9899bc55735 (HEAD -> master, origin/master).

## 8.4. Shortening Git IDs

- Four or more characters of the beginning of a Git ID.
- Example: **e189613**221afc1e1c50f84f8ee92e9899bc55735 (HEAD -> master, origin/master).

# 9. Git references

## 9.1. Overview of references

- User-friendly name that points to:
  - A commit SHA-1 hash.
  - Another reference, known as a symbolic reference.

## 9.2. Branch labels and HEAD

### 9.2.1. Branch label

- Points to the most recent commit in the branch, the "tip of the branch".
- Implemented as a referentece.

### 9.2.2. Head

- A referebce to the current commit.
- Usually points to the branch label of the current branch.
- One HEAD per repository.
-

## 9.3. Tags

Reference/label attached to a specific commit.
Tags can be used instead of branchs labels or Git IDs in Git commands.

### 9.3.1. Types of tags

- Lightweight:
  - A simple reference to a commit.
- Annotated:
  - A full Git object that references a commit.
  - Includes tag author information, tag date, tag message, the commit ID.
  - Optionally can be signed and verified with GNU Privacy Guard (GPG).

# 10. Branches

## 10.1. Benefits of branches

- Fast and easy to create.
- Enable experimentation.
- Enable team development.
- Support multiple project versions.

## 10.2. Topic and long-running branches

- Topic
  - A feature, a bug fix, a hotfix, a configuration change, etc.
- Long-lived
  - master, velop, release, etc.

## 10.3. Checkout

1. Updates the HEAD reference.
2. Updates the working tree with tree with the commit's files.

# 11. Merging

- Main types of merges:

1. Fast-forward merge
2. Merge commit
3. Squash merge
4. Rebase

## 11.1. Merge commit

1. Combines the commits at the tips of the merged branches.
2. Places the result in the merge commit (new specific commit).

## 11.2. Fast-forward (FF) merge

- Moves the base branch label to the tip of the topic branch
  - Conditions for a fast-forward merge
    - Possible if no other commits have been made to the base branch since branching

# 12. Resolving merge conflicts

## 12.1. Merge conflict overview

- Merge conflicts occur when a person needs to make a decision.
- Merge conflicts can only occur if the same file is changed.
- A merge conflict occurs when two branches change the same hunk in different ways.
- When a conflict occurs:
  - Fit will create files in the working tree containing conflict markers.
  - Fix, add, and commit the conflicted files.
- Git automatically merges changes to different parts (hunks) of files.
  - Avoiding merge conflicts:
    - Git merges are usually quite easy.
    - Small, frequent merges are the easiest.

## 12.2. Resolving a merge conflict

- Involves three commits:
  1. The tip of the current branch (B) - "ours" or "mine".
  2. The tip of the branch to be merged (C) - "theirs".
  3. A common ancestor (A) - "merge base".
- Basic steps to resolve a merge conflict
  1. Checkout master.
  2. Merge featureA CONFLICT - Both modified FileA.txt.
  3. Fix FileA.txt.
  4. Stage FileA.txt.
  5. Commit the merge commit.
  6. Delete the featureA branch label.
- When attempting a merge, files with conflicts are modified by Git and placed in the working tree.
- Conflicted hunks:
  - Conflicted hunks are surrounded by conflict markers `<<<<<<< and >>>>>>>`.
- Reading conflict markers
  - Text form the `HEAD` commit is between `<<<<<<< and =======`.
  - Text from the branch to be merged is between `======= and >>>>>>>`.

# 13. Tracking branches

## 13.1. Tracking branch overview

- A local branch that represents a remote branchs `<remote>/<branch>`.

## 13.2. Viewing tracking branch names and status

- remotes/origin/HEAD THIS IS A SYMBOLIC REFERENCE.
- Allows `<remote>` to be specified instead of `<remote>/<branch>` in Git commands.

# 14. Fetch, Pull and Push

## 14.1. Network command overview

- **Clone** - Copies a remote repository.
- **Fetch** Retrives new objects and references from the remote repository.
- **Pull** - Fetches and merges commits locally.
- **Push** - Adds new objects and references to the remote repository.

## 14.2. Fetch

- Retrieves new objects and references from another repository.
- Tracking branches are updated.
  - Fetch updates tracking branch information.

## 14.3. Pull

- Combines `git fetch` and `git merge FETCH_HEAD`:
  - If objects are fetched, the tracking branch is merged into the current local branch.
  - This is similar to a topic branch merging into a base branch.
- Git pull merging options:
  - `--ff` (default) - fast-forward if possible, otherwise perform a merge commit.
  - `--no-ff` - always include a merge commit.
  - `--ff-only` - cancel instead of doing a merge commit.
  - `--rebase [--preserve-merges]`.

## 14.4. Push

- Push adds commits to the remote repository.

# 15. Rebasing

## 15.1. Rebasing overview

- Two types of rebase:
  - Rebase.
  - Interactive rebase.
- Moves commits to a new parent (base):
  - The unique commits of the featureA branch (B and C) are reapplied to the tip of the master branch (D).
  - Because the ancestor chain is different, each of the reapplied coomits has a different commit ID (B'and C').
- Diffs:
  - Each commit contains a snapshot of the complete project.
  - Git can calculate the difference between commits.
    - This is known as a diff or a patch.
- Rebasing reapplies commits:
  - When rebasing, Git applies the diffs to the new parent commit.
    - This is called "reapplying commits".
- Rebasing is a merge:
  - Reapplying commits is a form of merge and is susceptible to merge conflicts.
  - For example, commits B and C can change the same file, causing a merge conflict during the rebase.
- Rebasing pros and cons
  - Pros:
    - You can incorporate changes from the parent branch:
      - You can use the new features/bugfixes.
      - Tests are on more currernt code.
      - It makes the eventual merge into master fast-forwardable.
    - Avoids "unnecessary" commits:
      - It allows you to shape/define clean commit histories.
  - Cons:
    - Merge conflicts may need to be resolved.
    - It can cause problems if your commits have been shared.
    - You are not preserving the commit history.

## 15.2. Executing a rebase

## 15.3. Rebasing with merge conflicts

# 16. Rewriting history

## 16.1. Amending a commit

- You can change the most recent commit:
  - Change the commit message.
  - Change the project files.
- This creates a new SHA-1 (Rewrites history).
- You can modify the staging area and amend a commit.
- Optionally use the --no-edit option to reuse the previous commit message.

## 16.2. Interactive rebase

- Interactive rebase lets you edit commits using commands.
  - The commits can belong to any branch.
  - The commit history is changed do not use for shared commits.
  - Interactive rebase options:
    - Use the commit as is
    - Edit the commit message
    - Stop and edit the commit
    - Drop/delete the commit
    - Squash
    - Fixup
    - Reorder commits
    - Execute shell commands
- Squash a commit

1. Applies a newer (squashed) commit to an older commit
2. Combines the commit messages
3. Removes the newer commit

- Squash vs. delete
  - **Squash** - Combine this commit with the older commit, creating a single commit
    - The work of both commits is included
  - **Delete** - No changes from this commit are applied
    - The diff is thrown out
    - The work of this commit is lost
    - Greater change of a merge conflict

# 17. Pull requests I

## 17.1. Pull request overview

- A feature of Git hosting sites.
  - Pull requests are opened using an online Git host such as Bitbucket or GitHub.
- The ultimate goal of a pull request is to merge a branch, but they also facilitate team discussion and approval.
- Enable team communication related to the work of the branch.
  - Notifications sent to team members.
  - Feedback or comments.
  - Approval of the content (code review).
- When do you open a pull request?
  - When the branch is created.
  - When you want comments on the branch.
  - When the branch is ready for review/merging.
- You can open a pull request any time after creating the branch.
- You do not need to edit the pull request if you add a commit to the branch.

## 17.2. Single repository pull requests

- Preparing for pull request (single repository):
  - Create a feature branch.
  - Optionally work on the feature branch.
  - Push the branch to the remote repository.

# 18. Pull requests II

## 18.1. Forking overview

- Forking - copying a remote repository to your own online account
- Both repositories are remote repositories
- The upstream repository is usually the "source of truth"
- What is a fork used for?
  - Experiment with/learn form the upstream repository
  - Issue pull requests to the upstream repository
  - Create a different source of truth
  - A form is created uwing an online GIt hosting provider
  - Pull requests can be made form forks and merged into the upstream repository

# 19. Git workflows

## 19.1. Centralized workflow

- Only a single branch
- no pull requests/discussion

## 19.2. Feature branch workflow

- Work done on feature/topic branches
- Single remote repository
- Pull requests/discussion

## 19.3. Forking workflow

- Multiple remote repositories
- Pull requests/discussion
- Don't need write access on upstream
- Backs up your work in progress
- Can rebase your forked branch
- Must synchronize with upstream

## 19.4. Gitflow workflow

- Enable a continuous train of project releases using multiple types of branches
- Merging "Rules"
  1. Only merge commits on master
  2. Commit to master only from a release or hotfix branch
  3. If you commit to master, also merge into the develop

## 19.5. Squash merges

1. Merges the tip of the feature branch (D) onto the tip of the base branch (C)

- There is a change of a merge conflict

2. Places the result in the staging area
3. The resuilt can then be committed (E)

- What happers to the feature commits?
  - After the featureX label is deleted, commits B and D are no longer part of any named branch
    - Commits B and D will eventually be garbage collected
  - A squash merge rewrites the commit history

# 20. Transfer repo to another repo

1. Mirror the project from repo X to repo Y
   - git clone --mirror `<url/to/projectname.git>`
2. See if exists tag into repo
   - git tag
3. Verif if all branches downloaded
   - git branch -a
4. Remove original reference
   - git remote rm origin
5. Add new remote reference
   - git remote add origin NOME_DO_PROJETO
6. Push all branches to new repository
   - git push origin --all
7. Push all tags into branch
   - git push --tags

# 21. Git principal commands

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
  - git clone --mirror `<url/to/projectname.git> [localprojectname]` # Download all remote branches
- Add a remote repository
  - git remote add `<alias-name> <url/to/projectname.git>` # Example: git remote add origin https://github.com/me/repob.git
- Remove reference of the remote repository
  - git remote rm origin
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
  - git commit --amend -m "test message" # Replace the tip of the current branch (Rename)
- View the commit history
  - git log
  - git log --oneline # --oneline condensed versions of the log
  - git log -10 # limit the log to the most recent # commits
  - git log --oneline --graph
  - git log --all # To see a combined log of all local and tracking branches
- Writes commits for a branch to a remote repository
  - git push `[-u] [<repository>] [<branch>]` # Example: git push origin master, use this form to first push
  - git push `[<repository>] [<branch>]`
  - git push origin --all
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
- Displays local and tracking branch names
  - git branch
  - git branch -a # -a/--all see remote and local repositories
- Create a branch
  - git branch `<name>` `<sha1-of-commit>`
- Delete a branch
  - git branch -d `<name>`
  - git push origin -- delete `<name>`
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
- Join two or more development histories together Merge Commit (NO FAST-FORWARD) (This is force a create a new commit)
  - Steps:
    1. git checkout `<branch_or_commit>`
    2. git merge --no-ff `<branch_or_commit>`
    3. git branch -d `<branch_or_commit>`
  - Ex:
    1. git checkout master
    2. git merge --no-ff feature/a
    3. git branch -d feature/a # optional
- Retrieves new objects and references from another repository
  - git fetch
- Changes the parent of the currently checked out branch to `<upstream>`
  - git rebase `<upstream>`
  - git rebase `<upstream> <branch>`
  - Finished making all your changes
    - git rebase --continue
  - Get back to the pre-rebase state
    - git rebase --abort
- Commits in the current branch after `<after-this-commit>` are listed in an editor and can be modified
  - git rebase -i `<after-this-commit>`
