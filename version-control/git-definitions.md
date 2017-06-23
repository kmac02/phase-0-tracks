# Git Definitions

**Instructions: ** Define each of the following Git concepts.

* What is version control?  Why is it useful?

Version control allows a user to view the entire history of revisions to a project (1 or more files) and merge revisions made by different people. If there is a problem in the code, it allows the user(s) to go back to any revision point and also see who made each change, rather than starting from scratch.

* What is a branch and why would you use one?

A branch is a copy of the local master repository and allows you to experiment or test features locally without editing the master.

* What is a commit? What makes a good commit message?

A commit is a save point in the project. It can be viewed with ````git log```` and includes a unique ID, timestamp, the author, and a description or message. A good commit message is specific, concise, and written in present tense.

* What is a merge conflict?

A merge conflict comes in two forms: with a competing line change and file deletion. A competing line change is when two branches are to be merged but the same line is changed in both. A user must resolve the merge conflict by making a new commit before the branches can be merged (i.e. select one of the two or make a new one). A merge conflict also occurs when a file is deleted by someone while another person is in the midst of editing it.

GO GIT GO!!