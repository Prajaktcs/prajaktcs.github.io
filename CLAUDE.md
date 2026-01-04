# CLAUDE.md

This file provides guidance to Claude Code (claude.ai/code) when working with code in this repository.

## Project Overview

This is a Jekyll-based GitHub Pages blog called "Today I Learned" - a collection of short TIL (Today I Learned) posts. The site uses the Minima theme and is published at https://prajaktcs.github.io.

## Development Commands

### Local Development
```bash
# Install dependencies (first time setup)
bundle install

# Run local development server
bundle exec jekyll serve
# Site will be available at http://localhost:4000

# Build the site (generates _site/ directory)
bundle exec jekyll build

# Create a new post with today's date
./new_post.sh "Your Post Title"
# Or run without arguments to be prompted for title
./new_post.sh
```

## Site Architecture

### Content Structure
- **_posts/**: Blog posts in Markdown format
  - Filename format: `YYYY-MM-DD-title.md`
  - Front matter required: `layout`, `title`, `date`, `categories`
  - Posts use the `post` layout which wraps content in `default` layout

- **_layouts/**: HTML templates
  - `default.html`: Base template with includes for head, header, footer (provided by Minima theme)
  - `post.html`: Template for individual blog posts, extends default layout

- **index.html**: Homepage that lists all posts chronologically with excerpts

- **_config.yml**: Site configuration
  - Site metadata: title, author, email, description
  - Theme: minima
  - GitHub username for social links (do not include @ symbol)

### Styling
- **assets/css/main.scss**: Custom styles (if needed to override Minima theme)
- Primary styling comes from the Minima theme gem

### Theme Integration
The site uses the Minima theme (v2.5), which provides:
- Header/footer includes
- Default styling and layout structure
- The actual include files are in the gem, not this repository

## Creating New Posts

Posts must follow this structure:
```markdown
---
layout: post
title: "Your Post Title"
date: YYYY-MM-DD HH:MM:SS -TIMEZONE
categories: category1 category2
---

Post content here in Markdown...
```

File naming convention: `_posts/YYYY-MM-DD-post-title.md`

## Deployment

This site auto-deploys via GitHub Pages when pushed to the `main` branch. The built site is served from the repository root (not a `docs/` folder).
