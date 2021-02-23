#!/bin/sh -l

# $1 - token
# $2 - head_branch
# $3 - target_branch
# $4 - files

format_py=.py
format_sql=.sql
MODIFIED_FILES_python=$(git diff --name-only $2 $3 | grep -E "(${format_py})")
MODIFIED_FILES_sql=$(git diff --name-only $3 $3 | grep -E "(${format_sql})")

echo "Modified python files: "$MODIFIED_FILES_python
echo "Modified sql files: "$MODIFIED_FILES_sql

echo "::set-output name=python_changed_files::${MODIFIED_FILES_python}"
echo "::set-output name=sql_changed_files::${MODIFIED_FILES_sql}"
