---
tags:
  - notes
  - open-source
title: Unix Philosophy
---
Notes from: [Basics of  the Unix Philosophy](https://cscie2x.dce.harvard.edu/hw/ch01s06.html)
# High Level Rules
1. Rule of Modularity: Simple parts with clean interfaces.
2. Rule of Clarity: Being clear > clever.
3. Rule of Composition: Design programs to be connected. (Think `cat data*.json | jq`)
4. Rule of Separation: Keep policy and mechanisms separate. Keep interfaces from engines.
5. Rule of Simplicity: Design for simple. Add complexity when *needed*.
6. Rule of Parsimony: Write big programs when it's clear and demonstrated nothing else will do.
7. Rule of Transparency: Design for visibility to ease inspection and debugging.
8. Rule of Robustness: Child of transparency and simplicity.
9. Rule of Representation: Fold knowledge into data, so program logic can be stupid and robust.
10. Rule of Least Surprise: In interfaces, always do the least surprising thing.
11. Rule of silence: When a program has nothing to say, then it should say nothing.
12. Rule of Repair: When you must fail, fail noisily and as soon as possible.
13. Rule of Economy: Conserve programmer time over machine time.
14. Rule of Generation: Avoid hand-hacking. Write programs to write programs when you can.
15. Rule of Optimization: Prototype before polishing. Get working before optimizing.
16. Rule of Diversity: Distrust all claims for "one true way".
17. Rule of Extensibility: Design for the future, because it will be here sooner than you think.

