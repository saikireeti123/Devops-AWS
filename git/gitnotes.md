# Git Interview Notes

** Git is a distributed version control system (VCS) designed to track changes in source code and other files during software development
** Git is different from other version control systems like sSVN & CVS beacuse pof git is a dvcs and other are relay on centeral server.
** you can initialize a repository with git init or clone an existing one with git clone <url>. For more advanced usage, commands like git add, git commit, git push, and git pull are fundamental. 
## concepts to learn in git
1.Branching and Merging

Creating, switching, and deleting branches
Merge strategies (fast-forward, recursive, squash, rebase)
Resolving merge conflicts
Staging and Commit History

2.Staging area (git add)
Amending commits (git commit --amend)
Viewing history (git log, git reflog)
Reverting and resetting (git revert, git reset)

3.Remote Repositories
Adding/removing remotes
Fetching, pulling, and pushing changes
Tracking branches

4.Collaboration Workflows
Forking and pull requests
Rebasing vs. merging in team settings
Cherry-picking commits

5.Advanced Features
Stashing changes (git stash)
Tagging releases (git tag)
Submodules

6.Troubleshooting
Undoing changes
Resolving detached HEAD state
Recovering lost commits

7.Configuration and Hooks
.gitignore and .gitattributes
Git hooks for automation

## 1. Branching and Merging:
- **Branching**: Create isolated environments for features/bug fixes (`git branch <name>`, `git checkout <name>`).
- **Merging**: Combine changes from different branches (`git merge <branch>`).
- **Merge strategies**: 
    - **Fast-forward**: A simple pointer move when there are no divergent commits.
    - **Recursive**: The default strategy for merges, creates a new merge commit.
    - **Squash**: Combines all commits from a feature branch into a single commit on the target branch.
    - **Rebase**: Moves the entire feature branch to begin on the tip of the target branch, creating a linear history.
- **Merge conflicts**: Occur when changes in different branches overlap. You must manually edit the conflicted files to resolve the differences.

## 2. Staging and Commit History
- **Staging area (Index)**: A file that stores information about what will go into your next commit. Use `git add <file>` to stage changes.
- **Amending commits**: Modify the most recent commit with `git commit --amend`. Useful for fixing typos or adding forgotten files.
- **Viewing history**: 
    - `git log`: Shows the commit history.
    - `git reflog`: Shows a log of where your HEAD and branch references have been. It's useful for recovering lost commits.
- **Reverting & Resetting**:
    - `git revert <commit>`: Creates a new commit that undoes the changes from a specified commit, preserving the project history.
    - `git reset <commit>`: Moves the current branch tip backward to a specified commit, potentially altering history. It has three modes: `--soft`, `--mixed` (default), and `--hard`.

## 3. Remote Repositories:
- **Remotes**: A pointer to another copy of the repository. Use `git remote add <name> <url>` to add a new remote.
- **Fetch**: Downloads commits, files, and refs from a remote repository into your local repo (`git fetch <remote>`).
- **Pull**: Fetches from a remote and immediately tries to merge it into your current branch (`git pull <remote> <branch>`). It's a shortcut for `git fetch` followed by `git merge`.
- **Push**: Uploads your local branch commits to the remote repository (`git push <remote> <branch>`).
- **Tracking branches**: A local branch that has a direct relationship to a remote branch.

## 4. Collaboration Workflows
- **Forking**: A personal copy of someone else's repository that lives on your account.
- **Pull requests (PRs)**: A way to propose your changes to the original repository.
- **Rebasing vs. Merging**: 
    - **Rebasing** creates a cleaner, linear history.
    - **Merging** preserves the exact history of what happened.
- **Cherry-picking**: The act of picking a commit from a branch and applying it to another (`git cherry-pick <commit-hash>`).

## 5. Advanced Features
- **Stashing**: Temporarily shelves (or stashes) changes you've made to your working copy so you can work on something else (`git stash`, `git stash pop` 'git stash clean').
- **Tagging**: Marks a specific point in history as important, typically used for releases (`git tag <tag-name>`).
- **Submodules**: Allows you to keep a Git repository as a subdirectory of another Git repository (`git submodule add <repository-url> <path>`).

## 6. Troubleshooting
- **Undoing changes**: Use `git checkout -- <file>` to discard changes in the working directory, `git reset` to unstage, or `git revert` to undo a commit.
- **Detached HEAD**: This state occurs when you check out a commit that is not the tip of a branch. To save your work, create a new branch with `git checkout -b <new-branch-name>`.
- **Recovering lost commits**: Use `git reflow` to find the hash of the lost commit and then restore it.

## 7. Configuration and Hooks
- **`.gitignore`**: A text file that tells Git which files or folders to ignore in a project.
- **`.gitattributes`**: Defines attributes per path. For example, you can manage line endings.
- **Hooks**: Scripts that Git executes before or after events such as: commit, push, and receive. They are stored in the `.git/hooks` directory.

## Git commands
------------------------
1. Setup & Initialization
`git config --global user.name "[name]"`
Explanation: Sets the name that will be attached to your commits and tags. This is a one-time setup on a new machine.
`git config --global user.email "[email address]"`
Explanation: Sets the email address that will be attached to your commits.
`git init`
Explanation: Initializes a new Git repository in the current directory. This creates a hidden .git folder to track changes.
`git clone [url]`
Explanation: Creates a local copy of a remote repository, including all its history and branches.

2. The Daily Workflow
`git status`
Explanation: Shows the current state of your working directory and staging area. It lets you see which changes have been staged, which haven't, and which files aren't being tracked by Git.
`git add [file] or git add .`
Explanation: Adds file changes from your working directory to the staging area. This prepares them to be included in the next commit. git add . stages all modified and new files in the current directory.
`git commit -m "[descriptive message]"`
Explanation: Takes the staged snapshot and saves it permanently to the project history with a descriptive message.
`git pull`
Explanation: Fetches the latest changes from the remote repository and merges them into your current local branch. It's a combination of git fetch and git merge.
`git push`
Explanation: Uploads your committed changes from your local branch to the corresponding remote branch.

3. Branching & Merging
`git branch`
Explanation: Lists all of the branches in your repository. The current branch will be highlighted with an asterisk.
`git branch [branch-name]`
Explanation: Creates a new branch, but does not switch to it.
git checkout [branch-name]
Explanation: Switches your current working directory to the specified branch.
`git checkout -b [branch-name]`
Explanation: A shortcut command that creates a new branch and immediately switches to it.
`git merge [branch-name]`
Explanation: Combines the history of the specified branch into the current branch.
`git rebase [branch-name]`
Explanation: Takes the commits from your current branch and reapplies them on top of another branch. This creates a cleaner, more linear history than merging.

4. Inspecting History
`git log`
Explanation: Displays the commit history for the current branch.
`git log --oneline --graph`
Explanation: A useful variation that shows a condensed, one-line summary of each commit along with a graph of the branch structure.
`git diff`
Explanation: Shows the differences between your working directory and the staging area.
`git diff --staged`
Explanation: Shows the differences between the staging area and your last commit.

5. Undoing Changes
`git checkout -- [file]`
Explanation: Discards the changes in a specific file in your working directory, reverting it to the version from the last commit. Use with caution, as this is destructive.
`git reset [file]`
Explanation: Unstages a file, but preserves its contents in the working directory.
`git commit --amend`
Explanation: Lets you modify the most recent commit. You can change the commit message or add more files to it.
`git revert [commit-hash]`
Explanation: Creates a new commit that undoes the changes from a specified commit. This is the safest way to undo changes that have already been pushed to a remote repository.
`git stash`
Explanation: Temporarily saves your uncommitted changes so you can switch branches or work on something else. git stash pop restores the stashed changes.

6. Working with Remotes
`git remote -v`
Explanation: Lists all the remote repositories you have configured, along with their URLs.
`git fetch [remote]`
Explanation: Downloads all the history from the remote repository but does not merge it. This allows you to review changes before integrating them.
git push [remote] --delete [branch-name]
Explanation: Deletes a branch on the specified remote repository.

## Rebase && Merge:

Rebase is the concept that changes the base commit commit of a branch,instead of merging the the two branches together.
the primary goal of the this concept is to maintain clean and liner project history.
To understand rebase, it's best to compare it to a standard git merge.

Imagine this scenario:

The main branch has some commits.
You create a feature branch from main and add new commits (C3, C4).
Meanwhile, someone else adds new commits to main (C5).
     ` C3---C4  (feature)`
     /
`A---C1---C2---C5  (main)`
Now, you want to incorporate the new changes from main (C5) into your feature branch. You have two options:

1. git merge main
This creates a new merge commit (C6) in your feature branch that ties the two histories together.

      `C3---C4-------C6  (feature)`
     /             /
`A---C1---C2---C5--'   (main)`
Pro: Preserves the exact history of what happened. It's non-destructive.
Con: Creates a "noisy" history with lots of merge commits, making the project log harder to read.

2. git rebase main
This moves your entire feature branch to begin on the tip of main. Git does this by:

Temporarily saving your commits (C3, C4) as patches.
Resetting your feature branch to the latest commit on main (C5).
Re-applying your saved commits one by one (now as C3' and C4').

                 ` C3'--C4'  (feature)`
                 /
`A---C1---C2---C5--         (main)`

Pro: Creates a clean, straight-line history. It's as if you did all your work after the latest changes were made to main.
Con: It rewrites history. The original commits (C3, C4) are gone, and new commits (C3', C4') with different IDs are created.

## Merge:
Git merge, which is the most common way to integrate changes from one branch into another.
The Concept of git merge
Merging takes the commits from a source branch and integrates them into a target branch. The primary goal is to combine work that was done in parallel.
Unlike rebase, which rewrites history, merge preserves history as it happened. It creates a special new commit, called a merge commit, that ties the two separate histories together.

## How git merge Works
Let's use a common scenario:

The main branch has some commits.
You create a feature branch from main to work on something new.
While you are working, other developers push new commits to main.
  `    C3---C4  (feature)`
     /
`A---C1---C2---C5  (main)`

Now, you've finished your work on the feature branch and want to bring those changes into main.

You would run:
`git checkout main`
`git merge feature`

    `C3---C4-- (feature)`
     /         \
`A---C1---C2---C5--C6  (main)`
The feature branch history remains untouched, and the main branch now contains all the work from both branches.

## Types of Merges
1. Three-Way Merge (Non-Fast-Forward)
This is the standard merge described above. It happens when the two branches have diverged (i.e., both have new commits since they split). It always creates a merge commit.
Pros:
Preserves the complete, accurate history of the project.
It's non-destructive and easy to understand.
Cons:
Can lead to a cluttered and complex commit history, especially in busy repositories.
2. Fast-Forward Merge
This is a simpler type of merge that can happen if the target branch has no new commits since the feature branch was created.

Imagine this history:
`A---C1---C2 (main)`
           \
            `C3---C4 (feature)`
 this case, main hasn't changed. To merge feature into main, Git can simply move the main pointer forward to point to C4. No merge commit is needed.
 `A---C1---C2---C3---C4 (main, feature)`
 Pros: Creates a perfectly linear and clean history.
Cons: You lose the context of where a feature branch started and ended.
You can force Git to create a merge commit even when a fast-forward is possible by using `git merge --no-ff`.

## When to Use Rebase vs. Merge
Use Rebase When:
You want a clean, linear history.
You are working on a feature branch and want to incorporate the latest changes from main before merging back.
You are working alone or in a small team where rewriting history is manageable.
Use Merge When:
You want to preserve the exact history of how changes were made.
You are working in a larger team where rewriting history could cause confusion.
You want to maintain the context of feature branches in the project history.
## Visual Representation
Here’s a visual representation of both processes:
         C3---C4--
      /         \
A---C1---C2---C5--C6  (main)
     / --- IGNORE ---
In this diagram:
- The left side shows the feature branch with commits C3 and C4.
- The right side shows the main branch with commits C1, C2, and C5
- The merge commit C6 combines the histories of both branches.
- The dashed line indicates that the feature branch is no longer needed after the merge.
- The "IGNORE" section indicates that the feature branch can be deleted if it's no longer needed.
- In a rebase scenario, C3 and C4 would be reapplied on top of C5, resulting in a linear history without a merge commit.
  
## merge conflict
A merge conflict occurs when Git is unable to automatically resolve differences between two branches during a merge or rebase operation. This typically happens when the same lines in a file have been modified in both branches, or when one branch deletes a file that the other branch has modified.
When a merge conflict occurs, Git will pause the merge process and mark the conflicted files in your working directory. The files will contain special markers that indicate the conflicting sections.  You will need to manually edit these files to resolve the conflicts. After resolving the conflicts, you can stage the changes and complete the merge or rebase operation.
