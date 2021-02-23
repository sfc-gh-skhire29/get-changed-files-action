#!/bin/sh -l

# $1 - token
# $2 - head_branch
# $3 - target_branch
# $4 - files

format_py=.py
format_sql=.sql

echo $2
echo $3
python_changed_files=()

git fetch origin $2:$2
git fetch origin $3:$3
MODIFIED_FILES_python=$(git diff --name-only $2 $3 | grep -E "(${format_py})")
MODIFIED_FILES_sql=$(git diff --name-only $2 $3 | grep -E "(${format_sql})")

# head=$(git branch | sed -n -e 's/^\* \(.*\)/\1/p')
# MODIFIED_FILES_python=$(git diff --name-only $head main | grep -E "(${format_py})")
# MODIFIED_FILES_sql=$(git diff --name-only $head main | grep -E "(${format_sql})")

echo "Modified python files1: "$MODIFIED_FILES_python
echo "Modified sql files: "$MODIFIED_FILES_sql

python_changed_files+=("${MODIFIED_FILES_python}")


echo "::set-output name=python_changed_files::${python_changed_files}"
echo "::set-output name=sql_changed_files::${MODIFIED_FILES_sql}"
