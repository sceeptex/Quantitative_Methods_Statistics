[![Knit Output](https://github.com/uni-mannheim-qm-2021/team09-hw06/workflows/Knit%20Output/badge.svg)](https://github.com/uni-mannheim-qm-2021/team09-hw06/actions?query=workflow:%22Knit%20Output%22)


[![Allowed Files](https://github.com/uni-mannheim-qm-2021/team09-hw06/workflows/Allowed%20Files/badge.svg)](https://github.com/uni-mannheim-qm-2021/team09-hw06/actions?query=workflow:%22Allowed%20Files%22)


# Homework Assignment 6

This repository contains all the relevant materials for your sixth homework assignment. To work on the assignment, you have open the repository as a new project in RStudio on your computer. In this file you can find instructions as well as some advice on how to organize your workflow when collaborating. 

<details>
 <summary>How to <i>open the assignment</i> in RStudio</summary>

<p>
*Get the URL of the repo for homework assignment*

Go to [https://github.com/uni-mannheim-qm-2021](https://github.com/uni-mannheim-qm-2021) and click on the repository for the sixth homework (this week, this is is a combination of `hw06` and your `team`). On GitHub if you click on the repository, you can see the other team members. Now, click on the green **Clone or download** button and select **Use HTTPS** (this might already be selected by default, and if it is, you’ll see the text Clone with HTTPS as in the image below). Click on the clipboard icon to copy the repo URL.

<p align="center">
  <img width="30%" src="images/github_clone.png">
</p>


*Import the repository in RStudio*

  1. Open RStudio.
  2. Click on `File` on the top bar and select `New Project...`.

<p align="center">
  <img width="100%" src="images/new_project.png">
</p>


  3. Select `Version Control`. 
  4. In the next window, select `Git`.
  5. In the final window, paste the repo URL you grabbed from GitHub in the `Repository URL` window. Click on `Browse` to select the folder on your computer where you want to store the project.
  6. Click on `Create Project`.
  
</p>
</details>  
  
<details>
 <summary>How to <i>work with RMarkdown</i></summary> 

<p>

The repository for your homework contains the file `hw06.Rmd`. This is a so called "R Markdown"-file. We will work with `.Rmd`-files both in the lab sessions and in homework assignments. Working with R Markdown is super handy because you can combine text and code and you can export your results as a nice write-up in `.html` or `.pdf` format. You can find useful information about R Markdown [here](https://rmarkdown.rstudio.com/lesson-1.html), but you won't need much more than the following:

In `.Rmd` files, you can type R-code in so called chunks. They look like this:

<p align="center">
  <img width="80%" src="images/chunk.png">
</p>

You can write R-code within these chunks and answers to the questions outside. For the first homework, we already set up all chunks you need. If you however want to add more chunks, you can do so by clicking in `Insert` > `R` or by using the shortkey <code>Ctrl + Alt + I</code> (on Windows) or <code>Cmd + Option + I</code> (on MacOS). To run code, you can simply click on the green play icon. If you only want to run parts of your code, you can highlight the respective code and press  <code>Ctrl + Enter</code> (on Windows) or `Cmd + Enter` (on MacOS).

Your answer to an exemplary assignment question could look like this:

<p align="center">
  <img width="80%" src="images/example_answer.png">
</p>

</p>
</details>


<details>
  <summary>How to <i>collaborate</i> with GitHub?</summary>
  <p>

GitHub is excellent to collaborate, especially on code. To work together you just need to make sure to integrate regular `Pulls` into your workflow. While most of the time, *if you follow advice below*, everything will go smoothly and git will update the files with the newest changes without complaining, once in a while there will be merge conflicts. 

### Merge conflicts

A **merge conflict** is a result of multiple people editing the same lines of the document simultaneously (or one person having edit the lines yesterday and another person not `pull`ing before editing the same lines). In such a case, `git` needs human help to decide which lines to keep and/or how to merge them. If this is happening to you, `git` will refuse to merge files smoothly and will ask you to intervene and do some extra steps. Dealing with merge conflicts is most often not too complicated, but it's better to prevent them from happening and/or to make them easier to resolve.

This how a merge conflict looks like in your files:

<img src="images/merge-conflict-identifiers.png" alt="drawing" width="350"/>

To **resolve the merge conflict**:

- open the file with merge conflict in Rstudio editor panel
- decide if you want to keep only your text or the text on GitHub or incorporate changes from both texts
- delete the conflict markers <<<<<<<, =======, >>>>>>> and make the changes you want in the final merge

For more info on merge conflicts, and if you need to consolidate a document please have a look [at this guide](https://happygitwithr.com/) in Particular [Section 28](https://happygitwithr.com/pull-tricky.html#git-pull-with-local-commits).

#### General Advice 

Here is some advice on how you can minimize the chance of merge conflicts to occur:

- *Commit as often as you can, also intermediate progress. Push less often, once you have finished some step.*
- *Pull changes every time you come back to the project*:  make it a habit for yourself, once you go back to working on any project that you already have cloned to your local machine, to go to Git panel and `pull`, in case there are any changes made in the shared project by your collaborators. Doing this will save you time (and nerves) dealing with merge conflicts.
- *Do not beautify the document outside of your changes*: this decreases the probability of editing the same line of code at the same time as your collaborator.
- *Keep your changes localized*: there is higher probability that you will encounter a merge conflict if you work on multiple parts of the document in a single commit.


#### Two Workflows

In general, there are different ways to organize  collaboration on Github. We think that the following two would be the most clear and helpful for you at this point when you are starting to work with Git:

##### Option 1: Work in the *master* branch and modify solutions of one another. 

This is a more simplistic approach. Like in the individual homework, you all work in the same *master* branch on the same `Rmd` document and update the files together with regular pushing and pulling. This would be like working on Google Docs on the very same document, but with the extra steps of `pull`, `commit` and `push`. This can be done in Rstudio easy as before. You can also [set up Slack notifications for  your teams' updates in the *master*](https://qm2021.slack.com/archives/C02D4CYHWBX/p1632808803018500), so that you know when to `pull` to prevent future conflicts. This will also show you the benefit of informative commit messages. 

##### Option 2: Create individual branches to work on your own first, then merge to *master* branch. 

When working individually, you were only using one branch - the one called *master* (sometimes it's also called *main*). All the changes that you committed ended up in *master* by default. 

Branching means that you take a detour from the *master* stream and work without changing the *master* branch. It allows one or many people to work in parallel without overwriting each others' work. This setup, with individual branches first, still requires you to push and pull your changes regularly, but instead of your answers all showing up by default in everyone's solution, you get to keep your own version of code separate and afterwards, you can merge and compile final document making more deliberate decisions about what to put into the final document and what not. This setup requires a couple more steps at the very start, but it also allows you to prevent unnecessary merge conflicts. 

If the branch workflow is what you want to try out, [this video](https://www.youtube.com/watch?v=97m0N4zIvOs) contains both an explanation of how to set up an individual branch, and how to deal with merge conflicts between branches should they occur. 

</p>
</details>



<details>
  <summary>How to <i>upload the finished assignment</i> to GitHub</summary>
  <p>

Once you are done with the assignment, you need to save it on GitHub. This works exactly as with your individual assignments. Just make sure that one person in your team is responsible to upload the final version. You can actually do this at any time. For example, if you have a specific question for us, push your current version to GitHub so we can see where you're at. This is how you do it:

  1. Click on `Git` in the environment panel on the upper right.
  2. Click on `Commit`.
  3. Check all boxes that appear in the upper left panel.
  4. Write a Commit Message in the upper right window. This is should describe the work you did since your last commit so that at a later point in time, you can easily keep track of your process. A message could be "Finished exercises 1 to 3.".
  5. Click on *commit*.
  6. **Important**: Click on `Push` to push the new version to GitHub.
  7. Now you can go to the repository on GitHub and check whether it is updated to the most current version of your assignment.</p>
</details>

<details>
  <summary>Badges and Run Failed Mails</summary>
  <p>

You are now required to submit the PDF as well as the `Rmd` file for your assignment. Still, on Tuesday morning, you may get an email saying *"Run failed: Allowed Files"* or *"Run failed: Knit Output"*. In addition, the badges on top of this Readme file will be red and say "failing". These badges are there for you to receive early feedback from us and to make sure that your code is reproducible and you follow the good coding practice from the start. For your convenience, the checks will only be performed when you include the word *final* into your commit message.  

This is how the badges should look like by the time you hand in the assignment:

<img src="images/github-badges.png" alt="badges" width="750"/>

- If you got *"Run failed: Knit Output"* mail (or the respective badge on top of this Readme is red), this means your `hw04.Rmd` does not knit correctly. Please see here for more advice: <https://qm2021.netlify.app/misc/check-repo-mail/>.

- If you got *"Run failed: Allowed Files"* mail on Tuesday (or the respective badge on top of this Readme is red), this means your repo now contains files that should not be there. You should not add any extra files beyond what we provide you with when submitting the file. Common reasons for this problem would be that you have renamed the `.Rmd` file or you have add another copy of an `.Rmd` with a modified name (e.g., `hw06_final.Rmd`). Make sure that by the time you submit the assignment, all your answers are in the `hw06.Rmd` file. This check is scheduled to be performed 12 hours before the deadline as well as right after the deadline.  


*Make sure that by the deadline, both "Knit Output" and "Allowed Files" badges on top of this document are green (i.e., passing).* 

</p>

</details>

<br>


**NOTE:** The deadline for the assignments is on **Tuesday October 26, 23:59**. You have to push your assignment before that deadline. The evaluation of your assignment will be based on the last version you pushed to GitHub before the deadline.

If you need our help, you are welcome to come to the online office hours on Monday or Thursday. Don't forget to sign up by 17:00 on the day before: <https://qm2021.netlify.app/#help>.
