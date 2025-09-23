---
title: Useful Resources
date: 2025-05-24
description: "Thing's I've read and found insightful / useful."
tags:
  - programming
  - golang
---


## Learning Golang 
- [Go by Example](https://gobyexample.com/): General Go syntax and standard library.
- [Learn Go with tests](https://quii.gitbook.io/learn-go-with-tests): Test Driven Development with Go. A little opinionated (which is all  of go tbf). In general, Go's built in testing library is really solid.
- [Go's Standard Library  Docs](https://pkg.go.dev/std): The Go team does a great job with their stdlib docs.

### More "advanced" Go stuff
- [Go Proverbs with Rob Pike](https://youtu.be/PAAkCSZUG1c?si=b_zjiQ_bAe6enDoG)

<!-- more -->


## Q & A (Obviously my opinion)

> What’s a good reason to learn Go if you already know Python?

- Go provides compile-time type checking. (I have seen bugs in production Python code bases that the Go compiler would have caught before the code was even committed).
- You get closer to C performance out of the box. Sure libraries lots of libraries like NumPY are C-bindings, but there is a lot of power in being able to write an add instruction and not have it be 27 lines of asssembly
- A lot of cloud stuff is written in Go (See previous reasons), so interacting with them using Go is super easy.
- Not Object Oriented
