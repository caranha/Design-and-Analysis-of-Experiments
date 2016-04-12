
Specific Notes for the Tsukuba fork of the DoE repository

# DoE: Tsukuba Version -- TODO

List of things to include/modify in the Tsukuba Version of the DoE class

## Essential
-   Modify the GRADING directory to fit Tsukuba Grading
-   Modify the README to reflect that this is a derivative work ** DONE **
-   Add a TSUKUBA directory with information specific to the Tsukuba course ** DONE **

## Important
-   Omake 00 (Information specific to Tsukuba):
    - Manaba Links and codes, Manaba Questionnaries
    - Professor Introduction
    - Calendar
-   Modify Class 00, 01, 02 this week

## Updates to upstream
-   Reference Material: CEC Workshop PDF
-   Data: Earthquakes, Oil Case Study

# How to Fetch from Upstream

1. Save newest upstream to upstream/master branch: git fetch upstream
2. Change to master branch: git checkout master
3. Merge upstream/master branch into local master: git merge upstream/master

Solve conflicts and push the result
- Idea: create a branch for solving merge conflicts before merging into master? 