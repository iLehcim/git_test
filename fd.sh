#!/bin/bash
full-diff() {
    echo "---------------------------"
    echo "-- Diff Unstaged <> HEAD --"
    echo "---------------------------"

    for next in $( git ls-files --others --exclude-standard ); do
        git --no-pager diff --no-index /dev/null "$next"
    done

    echo "---------------------------"
    echo "--- Diff Staged <> HEAD ---"
    echo "---------------------------"

    git --no-pager diff HEAD
}

full-diff
