---
title: Letter to the Non-Programmer
summary: Explaining computers to non-computer people
tags:
---

People in my life aren't programmers. They don't know the problems we solve and how we go about solving them. If you don't know what this coding stuff is this is for you. To best explain what we see, I think its easiest to start small and broaden our understanding together. 

<!-- ## What is a computer? -->

At the smallest level, a computer is 2 things. The first is a CPU which is a small calculator. It does math. Addition, subtraction, multiplication etc. The second part is memory. Memory is a big spreadsheet that holds numbers. Due to the electrical components that make up a computer[^1], numbers in a computer at the lowest level are stored as ones and zeroes we call bits.

Computers use these bits (ones and zeroes) to encode information. For example, imagine the series of digits `01100001`. If we think about it as a "normal number" (what we call decimal numbers), 1100001 is a really big number, however that is not how computers see it. That series of bits is representing a [binary number](https://en.wikipedia.org/wiki/Binary_number) which is a way of counting using only two digits. To skim over the math of it, `01100001` represents the number `97`. We can add, subtract and do any other math we want on it. All data in a computer at the end of the day is represented by these binary numbers. The CPU is designed to do math with these numbers. Memory is designed to store and retrieve these numbers.

So far, there is nothing special about `97` (internally remember its `01100001`). It could mean anything. The number of points someone got a test or the number of seconds since the last time a job came in. *Context changes what the numbers mean.* Let's add more context.

Say our special number used a specific, agreed upon way of encoding itself as a character[^2] called [UTF-8](https://en.wikipedia.org/wiki/UTF-8). For this simple example, you can imagine a UTF-8 as a series of one or more 8-digits segments (a unit we call a byte). The first byte of a UTF-8 encoded character has two components a prefix-code and a payload.

The prefix code is all leftmost digits of the first byte until the prefix contains a `0`, so for our example, it's just the leftmost `0`. If the first byte started with `11000110`, the prefix would be `110`. The following are all the valid prefixes and the number of bytes they use:
- `0`: 1 byte
- `110` 2 bytes
- `1110` 3 bytes
- `11110` 4 bytes

The rest of the bits make up the payload (in the case of our first example,`1100001` in binary  and `97` in decimal) .  The payload and each potential number it could be represents a specific agreed upon character. Our example with a payload of 97, corresponds to the character "`a`"[^3].

The standard is smart in that more common characters, for English speakers (who invented the standard), are encoded using less bits. For example the UTF-8 encoding for "`😎`", which in the scheme of computing is a newer character than `a`, is encoded as `11110000 10011111 10011000 10001110`[^4]. It takes four times the bits compared to the letter `a`! The standard is also ubiquitous. All modern computers can read, speak, and output UTF-8. It's common to see and work with, this very web page, for example, is stored using the same UTF-8 encoding!

<!--
TODO: Transition to the next part

## How do we tell computers what to do?

That's what a computer is. We tell it to follow instructions and when it does those instructions something *interesting* happens. At the smallest level, we tell the computer to do math. For a bank deposit we say add your paycheck to your balance. When you like a video we say to increment (add 1) to the video's number of likes. 

-->

[^1]: This is because computers are made up of [transistors](https://www.imec-int.com/en/semiconductor-education-and-workforce-development/microchips/history-microchips/transistors), which have two electrical states: on and off. This is done since its easier to read lots of electricity vs little/no electricity. Imagine a light bulb. It's easier to distinguish between a light bulb being on and off rather than comparing between half power vs 3/4 power.

[^2]: A character being the letters, numbers, symbols you type on your keyboard and read off the screen.

[^3]: Specifically lowercase "`a`". Uppercase "`A`" has its own, different encoding.

[^4]: Being a surface-level explanation of UTF-8, the earlier explanation simplifies the standard for only the provided examples. For example it was omitted that each byte after the first must begin with a `1` to communicate that it is a continuation byte. [[quotes#Never use a long word where a short one will do|Never use a long word where a short one will do.]] Speaking to non-technical people requires avoiding domain-specific complexity.