---
title: MySQL Update Breaks 'mysqldump'
date: 2020-08-05 23:49:14
tags:
---

# Introduction

Today I was trying to make a manual database backup like I do from time to time, by running a command like:

```bash
mysqldump -u {username} -p {db} > {name}.sql
```

Which resulted in the error:
```bash
mysqldump: Error: 'Access denied; you need (at least one of) the 
PROCESS privilege(s) for this operation' when trying to dump tablespaces
```

# MySQL Version 5.7

It turns out that my problem was that the system had automatically updated MySQL to version **5.7**.

https://dev.mysql.com/doc/relnotes/mysql/5.7/en/news-5-7-31.html

> This change affects users of the mysqldump command, which accesses tablespace information in the FILES table, and thus now requires the PROCESS privilege as well. Users who do not need to dump tablespace information can work around this requirement by invoking mysqldump with the --no-tablespaces option. (Bug #30350829)

# Solution

So, adding the `--no-tablespaces` option allows `mysqldump` to work with the exception that it will not preserve table spaces. For more information of what tablespace is see [What is a tablespace and why is it used? On StackOverflow.](https://stackoverflow.com/questions/37805316/what-is-a-tablespace-and-why-is-it-used)

The following command will run with no errors:
```bash
mysqldump --no-tablespaces -u {username} -p {db} > {name}.sql
```

# Thoughts

I do want to recognize that it's important to be aware of which packages are being updated on your system. If I had been paying closer attention or perhaps did not relied so heavily on automated updates this issue could have been avoided. It's also important to make sure that you read the release notes on system critical packages **before** they get installed. 

That all being said, this wasn't a huge issue for me but I'm sure it caused quite the headache for a lot of people. The real issue here is that this is what I would consider to be a breaking change. According to the opinion of most software developers and users that I've met an incremental update ('x.y') should never contain a breaking change like this. 