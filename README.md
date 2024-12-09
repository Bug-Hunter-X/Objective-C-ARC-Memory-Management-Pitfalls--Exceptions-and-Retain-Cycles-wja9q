# Objective-C ARC Memory Management Pitfalls

This repository demonstrates two common yet subtle memory management issues in Objective-C when using Automatic Reference Counting (ARC):

1. **Memory leaks due to exceptions:**  Exceptions can interrupt the normal flow of execution, preventing objects from being properly released.
2. **Retain cycles in delegate patterns:** Improper handling of delegates can lead to retain cycles, preventing objects from being deallocated.

The `bug.m` file contains code illustrating these issues.  `bugSolution.m` provides solutions to mitigate these problems.

## How to Run

1. Clone the repository.
2. Open the project in Xcode.
3. Run the code and observe the behavior (memory leaks will not be directly visible without memory profiling tools).

## Solutions

The solutions are detailed in `bugSolution.m` and focus on proper exception handling and breaking retain cycles using `weak` properties where appropriate.