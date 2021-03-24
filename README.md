# get-changed-files-action

**get-changed-files-action**  is a Github Action which returns the absolute path of the changed files in current branch from the target branch (on Pull Requests)

Currently supporting:
 - SQL files (.sql)
 - Python files (.py)
 - Text files (.txt)

#### Inputs:
 - No inputs is required

#### Outputs:
 -   Changed .sql files		(outputs.sql_changed_files) 
 -   Changed .py files		(outputs.python_changed_files)
 -  Changed .txt files		(outputs.txt_changed_files)
