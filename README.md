# Objective-C Memory Leak Bug

This repository demonstrates a common memory leak in Objective-C.  The `bug.m` file shows code that allocates an object but fails to release it, leading to a memory leak. The `bugSolution.m` file provides the corrected code.

## How to Reproduce

1. Clone the repository.
2. Compile and run `bug.m` (you'll need an Objective-C development environment).
3. Observe the lack of deallocation message in the console (indicating a memory leak).
4. Compile and run `bugSolution.m` to see the corrected behaviour.

## Solution

The solution involves correctly managing object lifetimes using `release` (in manual retain-release), or ARC's automatic memory management capabilities.