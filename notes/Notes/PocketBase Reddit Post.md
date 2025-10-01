---
title: PocketBase backend
summary: Neat idea from a reddit post
tags:
  - golang
  - programming
---
From [This reddit post](https://www.reddit.com/r/pocketbase/comments/1nuefsq/building_lightweight_backends_efficiently/) talking about using [[PocketBase]] to make apps quickly
## Original Post

Trying to figure out how small teams handle backend setup for quick apps. What approaches made development smoother and what mistakes would you warn others to avoid?
## Comment I liked

> Mistakes to avoid:
> - Roll your own auth. Use something like keycloak instead.
> - NOT developing a prototype first. This wastes weeks if not months. I use pocketbase and a bare minimum UI to build a POC for anything before really diving in and building the full solution.
> - Using paid solutions when free ones cover the requirement. For instance, you don’t need SQL Server Enterprise when PostgreSQL or SQLite is good enough.
> 
> Things to do:
> - Live updates, continuous feedback
> - Shortest amount of time to start providing value. For example, when building a weather api, start with your [hardcoded] city, push to production, then go back and add more cities
> - Communicate effectively. People always appreciate it when they understand you, and that includes knowing your audience. A presentation to someone in business is very different than the one to the CTO.
> 