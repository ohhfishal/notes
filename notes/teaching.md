---
title: How I would teach to code
date: "2025-02-23"
summary: "Perspective on how to encourage learning."
tags:
  - programming
  - teaching
cover:
  alt: "How I would teach to code"
---

# How I would teach to code

Something us technical folk tend to neglect is **how** we go about teaching others our craft. This design is influenced by my time taking and preceptoring Computer Science classes, especially the behaviors I noticed other class structures encouraged in students.

<!-- more -->

As such, here is how I would structure an introductory coding class.

# High-Level Principles
- Assume 0 prerequisite knowledge (outside of basic computer literacy).
- Teach good habits now.
- Emphasis on both reading and writing code.

# [Student Stories](https://www.atlassian.com/agile/project-management/user-stories)
I would use a git-based class organization tool, such as [GitHub Classroom](https://classroom.github.com/) to have students get and submit their assignments. 

Each assignment would be distributed as a repository with a `README.md` that describes what they are to do. Students would then have to fork it and iterate on their own until they pass a suite of tests already in the repository.

The reasoning behind this is to directly mirror how software is developed, which I see as the following:

1. We use some kind of versioning control to host our code. 
2. To make a new change, branch off from the source and make your changes.
3. Once all changes are made and pass a suite of automated tests, merge in your changes.

# Language
I would teach an introductory programming class in [Go](https://go.dev/). Specifically, Go is a good option because it is:

- Feature light
- Compiler-based
- Easy to test

## Feature Light
The motivation behind wanting minimal features, is to make the content we teach more accessible. The intent of a programming course should be to teach **how to think about programming** rather than how to leverage a specific language or tool, as those are subject to change. 

While preceptoring, another preceptor had shown me some Python a student wrote along the lines of:

```python
exec('flag = mode == "single"')
```

In reality, this code most likely was the student trying to show off some cool trick they found, but this is something we have to be careful about. With code like this we need to understand **why** the student wrote it.

If this **was** the student showing off, we need to be careful in how this manifests in the classroom, that is to say we avoid it when possible. Highlighting solutions that leverage niche features in the language add ones more thing struggling students have thrown in their lap. If one is struggling with the concept of using a boolean flag, seeing that code is going to further confuse them and may contribute to feelings of [imposter syndrome](https://en.wikipedia.org/wiki/Impostor_syndrome).


In the case that the student **was not** showing off, code like this communicates that they are lost and are probably using code they don't undestand. When students struggle, they often go to others for guidance, who don't have the context of the class in mind. As such, they may encounter solutions that work but they don't understand it and there is no incentive since the code they copied works.

By using a language that is feature light, we can encourage clarity in the solutions student write and read. While plenty of features in a langauage may be useful, there is importance in everyone in the class working with a common subset.

## Compilers

By using a compiler-based language, we provide students an automatic 2nd perspective on the code they write. This hopefully would encourage the practice of testing incremental progress as you code. I would want to teach that the compiler is a helpful tool while coding rather than an adversary.

Besides being compiler-based, Go also provides a really convient testing structure built directly into the standard library. As such, tests would be a crucial compoennt of the class. While I would not require [TDD](https://en.wikipedia.org/wiki/Test-driven_development), I would point students towards resources like [Learn Go With Tests](https://quii.gitbook.io/learn-go-with-tests) (For example, this chapter on [unit tests](https://quii.gitbook.io/learn-go-with-tests/meta/why) is worth recommending to engaged students to chew on.).

## Testing
Go provides a standard set of tooling in its standard library. Similar to the point about being feature light, this makes it so that Google searches / AI prompts are more likely to respond in a way similar to what students are exposed to in class.

The specific implementation of testing in Go also means we can easily include tests to call students' code. For example, we could provide a `loop_test.go` for a student assignment that looked like the following:

```go
package loop

import (
  "testing"
)

type Test struct {
  Expected int
  Input []int
}

func TestMin(t *testing.T) {
  tests := []Test{
    {
      Expected: 5, 
      Input: []int{5, 6, 7, 8},
    },
    {
      Expected: -1, 
      Input: []int{},
    },
    // TODO: Hmm would be nice if we had another test here
  }

  for _, test := tests {
    result := Min(test.Input)
    if result != test.Expected {
      t.Errorf("Got %d expected %d", result, test.Expected)
    }
  }
}

// ...
```

Part of teaching the class would be having the test suites evolve under time. The first few tests would leverage less features, but as the students learn structs and loops, they can begin to see them show up in the tests we distrubute to them, encouraging them to understand what exactly is being tested while also learning how to read code they did not write. I would also occasionally include `TODO` comments hinting at other things the students may want to test with their code to encourage them to write tests without it being an explict requirement.

# Technologies
- [presenterm](https://github.com/mfontanini/presenterm): Create powerpoints that embed and run code examples
- [go playground](https://go.dev/play/): Online editor to distribute practice problems
- [Github Classroom](https://classroom.github.com/): Manage class assignment logistics / Grading
- Public git repository to host class resources (and addendums)
