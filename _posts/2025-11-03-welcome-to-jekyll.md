---
layout: post
title: "Creating a new github pages site!"
date: 2025-11-03 10:00:00 -0500
categories: starting out
---

This is my first TIL post. I am trying to get into a habit of writing more, and getting better at writing. Hence, I have decided to post any new thing that I learned in the area of technology.

Today I learned how to create a website using jekyll framework, and publish to github pages for free. I use neovim for writing, as I can use markdown locally to write all my posts, jekyll was a perfect fit for me. And what beats free :).

1. Setting Up Jekyll

I have already created the necessary files and installed the dependencies for you. To run the site locally, you'll need to have ruby and
bundler installed on your machine.

- Install Ruby and Bundler: Follow the official Jekyll installation guide (<https://jekyllrb.com/docs/installation/>). I am on a mac, i would highly recommend using brew for installation.
- Install Dependencies: Run `bundle install`
- Run the local server: To preview your site, run the following command in project directory:
  `bundle exec jekyll serve`
  Then, open your web browser and go to <http://localhost:4000>.

2. How the Site is Organized

I've set up a standard Jekyll site structure for you:

- \_config.yml: This is the main configuration file for the site. You can edit this to change the title, author, and other settings.
- \_posts: This is where blog posts live. To create a new post, create a new file in this directory with the filename format YYYY-MM-DD-your-post-title.md.
- \_layouts: These are the HTML templates for site. default.html is the main template, and post.html is the template for individual blog
  posts.
- index.html: This is the homepage of your blog, which lists your recent posts.
- assets: This directory is for your static assets. I've created a css subdirectory for your stylesheets. You can also create an images
  subdirectory to store your images.

3. Creating a Site on GitHub

To publish your blog on GitHub Pages, you'll need to create a new GitHub repository and push your files to it.

- Create a new repository on GitHub:
  1. Go to GitHub (<https://github.com>) and create a new repository.
  2. Name the repository your-github-username.github.io. This is a special name that tells GitHub to treat this repository as a personal
     website.
- Push your files to the repository:
  In your project directory, run the following commands to push your files to your new GitHub repository. Replace your-github-username with
  your actual GitHub username.

1 git init
2 git add .
3 git commit -m "Initial commit"
4 git branch -M main
5 git remote add origin <https://github.com/your-github-username/your-github-username.github.io.git>
6 git push -u origin main

After you've pushed your files, your blog will be live at <https://your-github-username.github.io> within a few minutes

Check out the [Jekyll docs][jekyll-docs] for more info on how to get the most out of Jekyll. File all bugs/feature requests at [Jekyll’s GitHub repo][jekyll-gh]. If you have questions, you can ask them on [Jekyll Talk][jekyll-talk].

[jekyll-docs]: https://jekyllrb.com/docs/
[jekyll-gh]: https://github.com/jekyll/jekyll
[jekyll-talk]: https://talk.jekyllrb.com/
