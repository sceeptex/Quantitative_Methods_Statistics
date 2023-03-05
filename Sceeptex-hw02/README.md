[![Allowed Files](https://github.com/uni-mannheim-qm-2021/Sceeptex-hw02/workflows/Allowed%20Files/badge.svg)](https://github.com/uni-mannheim-qm-2021/Sceeptex-hw02/actions?query=workflow:%22Allowed%20Files%22) [![Knit Output](https://github.com/uni-mannheim-qm-2021/Sceeptex-hw02/workflows/Knit%20Output/badge.svg)](https://github.com/uni-mannheim-qm-2021/Sceeptex-hw02/actions?query=workflow:%22Knit%20Output%22)





# Homework Assignment 2

This repository contains all the relevant materials for your second homework assignment. To work on the assignment, you have open the repository as a new project in RStudio on your computer. Note that we already did that with the material for the first lab sessions and it works in exactly the same way for this homework assignment. Nevertheless, we once more add instructions on how to open the project in RStudio below, just in case you still struggle with the process. You also a detailed instruction on how to write up this first assignment and on how to upload your finished assignment on GitHub. If you have any problems regarding this process, as always, DM us on Slack or come to the office hours and we are happy to help.


## 1. How to **open the assignment in RStudio**

#### Get the URL of the repo for homework assignment

Go to [https://github.com/uni-mannheim-qm-2021](https://github.com/uni-mannheim-qm-2021) and click on the repository for the second homework (this week, this is is a combination of `qm2021`, your username and `hw02`). Now, click on the green **Clone or download** button and select **Use HTTPS** (this might already be selected by default, and if it is, you’ll see the text Clone with HTTPS as in the image below). Click on the clipboard icon to copy the repo URL.

<p align="center">
  <img width="30%" src="images/github_clone.png">
</p>


#### Import the repository in RStudio

  1. Open RStudio.
  2. Click on `File` on the top bar and select `New Project...`.

<p align="center">
  <img width="100%" src="images/new_project.png">
</p>


  3. Select `Version Control`. 
  4. In the next window, select `Git`.
  5. In the final window, paste the repo URL you grabbed from GitHub in the `Repository URL` window. Click on `Browse` to select the folder on your computer where you want to store the project.
  6. Click on `Create Project`.
  
## 2. How to **work with RMarkdown**

The repository for your homework contains the file `hw02.Rmd`. This is a so called "R Markdown"-file. We will work with .Rmd-files both in the lab sessions and in homework assignments. Working with R Markdown is super handy because you can combine text and code and you can export your results as a nice write-up in .html or .pdf format. You can find useful information abour R Markdown [here](https://rmarkdown.rstudio.com/lesson-1.html), but you won't need much more than the following:

In .Rmd files, you can type R-code in so called chunks. They look like this:

<p align="center">
  <img width="80%" src="images/chunk.png">
</p>

You can write R-code within these chunks and answers to the questions outside. For the first homework, we already set up all chunks you need. If you however want to add more chunks, you can do so by clicking in `Insert` > `R` or by using the shortkey <code>Ctrl + Alt + I</code> (on Windows) or <code>Cmd + Option + I</code> (on MacOS). To run code, you can simply click on the green play icon. If you only want to run parts of your code, you can highlight the respective code and press  <code>Ctrl + Enter</code> (on Windows) or `Cmd + Enter` (on MacOS).

Your answer to an exemplary assignment question could look like this:

<p align="center">
  <img width="80%" src="images/example_answer.png">
</p>

## 3. How to **upload the finished assignment to GitHub**

Once you are done with the assignment, you save it on GitHub. You can actually do this at any time. For example, if you have a specific question for us, push your current version to GitHub so we can see where you're at. This is how you do it:

  1. Click on `Git` in the environment pane on the upper right.
  2. Click on `Commit`.
  
  <p align="center">
    <img width="80%" src="images/github_push_1.png">
  </p>

  
  3. Check all boxes that appear in the upper left pane.
  4. Write a Commit Message in the upper right window. This is should describe the work you did since your last commit so that at a later point in time, you can easily keep track of your process. If you are completely done with the assignment, the message could be "Final assignment", but that's fully up to you.
  5. Click on commit.
  
  <p align="center">
    <img width="80%" src="images/github_push_2.png">
  </p>
  
  6. **Important**: _After clicking on Commit_, close the dialogue window and click on `Push` in order to push the new version to GitHub.
  
  <p align="center">
    <img width="40%" src="images/github_push_3.png">
  </p>
  
  7. Now you can go to the repository on GitHub and check whether it is updated to the most current version of your assignment.


**NOTE:** The deadline for the assignments is on **Tuesday 23:59**. You have to push your assignment before that deadline. The evaluation of your assignment will be based on the last version you pushed to GitHub before the deadline.

If you need our help, you are welcome to come to the online office hours on Monday. Don't forget to sign up here by Sunday 17:00: https://qm2021.netlify.app/#help. 



