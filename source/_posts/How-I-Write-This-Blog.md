---
title: How I write this blog
date: 2020-07-29 05:22:21
tags:
---

# Introduction

At the time of this writing, I use a a static site generator called Hexo ([https://hexo.io](https://hexo.io)) to manage this site.  

Hexo is a fairly simple *NodeJS* application that allows me to take my *markdown* files and easily turn them into my super cool **hacker tech blog**.

# Creating a new post

To make a new post I just run the `hexo new post` command:

```bash
hexo new post "How I Write This Blog"
```

Now I have a new file in my `source/_posts` directory called `How-I-Write-This-Blog.md`. 

At this point in the writing the file contents look something like this:
```markdown
---
title: How I write this blog
date: 2020-07-29 05:22:21
tags:
---

# Introduction

# Hexo

At the time of this writing, I use a a static site generator called Hexo ([https://hexo.io](https://hexo.io)) to manage this site.  

Hexo is a fairly simple *NodeJS* application that allows me to take my *markdown* files and easily turn them into my super cool **hacker tech blog**.

# Creating a new post

To make a new post I just run the `hexo new post` command:

'''bash
hexo new post "How I Write This Blog"
'''

Now I have a new file in my `source/_posts` directory called `How-I-Write-This-Blog.md`. 
```
**Note:** *Enclosed code block ticks have been changed to single quotes.*

# Publishing

When it comes time to actually publish a post, I use a custom shell script to generate the static files and move them into my web root. 

**build.sh**
```bash
#! /bin/bash
echo "Running Custom Build Script"
hexo generate
cp -r public/* /var/www/html/
echo "Copied Generated Content To:"
echo "/var/www/html/"
```
