# Python Learning Syllabus

## A 90-Day Daily Course

This course is designed for a beginner who can study for **45-60 minutes each day**. Every day has four parts:

1. **Learn** the idea.
2. **Type** the example yourself.
3. **Practice** with two or three small problems.
4. **Explain** what your code does in your own words.

Keep a `practice/` folder for experiments and a `projects/` folder for finished work. Do not skip the practice problems: writing code is more important than only reading it.

## Course Map

| Level | Days | Result |
|---|---:|---|
| Foundation | 1-30 | Write small Python programs confidently |
| Core Python | 31-60 | Build organized, tested, file-based applications |
| Advanced Python | 61-90 | Use professional tools, concurrency, APIs, and architecture |

## Level 1: Foundation, Days 1-30

### Week 1: First Programs

| Day | Learn and practice | Daily task |
|---:|---|---|
| 1 | Python, the terminal, `print()`, comments | Run `hello_world.py`; print your name, age, and a hobby |
| 2 | Variables, `int`, `float`, `str`, `bool` | Run `02_add_two_numbers.py`; make a bill calculator |
| 3 | Input and type conversion | Ask for a user's name and birth year |
| 4 | Arithmetic operators and order of operations | Build a rectangle area and perimeter calculator |
| 5 | Comparisons and Boolean values | Run `03_even_or_odd.py`; check whether a number is positive |
| 6 | `if`, `elif`, and `else` | Run `if_else_test.py`; create a grade checker |
| 7 | Review and debugging | Fix three intentionally broken programs and explain each fix |

**Weekly challenge:** Create a personal introduction program that asks questions and prints a neat profile.

### Week 2: Repetition and Number Logic

| Day | Learn and practice | Daily task |
|---:|---|---|
| 8 | `for` loops and `range()` | Run `04_loop_1_to_10.py`; print even numbers from 2 to 20 |
| 9 | `while` loops and loop conditions | Make a countdown timer from 10 to 1 |
| 10 | Accumulators and counters | Run `08_sum_1_to_100.py`; sum numbers in a chosen range |
| 11 | Multiplication and nested loops | Run `06_multiplication_table.py`; print tables 1 through 5 |
| 12 | `break` and `continue` | Skip multiples of 3 and stop at the first number over 50 |
| 13 | Number algorithms | Run `05_factorial.py`; write a prime-number checker |
| 14 | Review and testing with examples | Test factorial, prime, and table programs with edge cases |

**Weekly challenge:** Build a number guessing game with a limited number of attempts.

### Week 3: Strings and Collections

| Day | Learn and practice | Daily task |
|---:|---|---|
| 15 | String indexing, slicing, and `len()` | Reverse a word and count its characters |
| 16 | String methods: `lower`, `upper`, `strip`, `replace` | Build a simple text cleaner |
| 17 | Lists, indexing, and list methods | Store five favorite foods and update the list |
| 18 | Tuples and unpacking | Store a coordinate and swap two variables |
| 19 | Dictionaries: keys and values | Create a student profile dictionary |
| 20 | Sets and membership | Remove duplicate words from a sentence |
| 21 | Review and choosing a data structure | Solve the same small problem with a list and a dictionary |

**Weekly challenge:** Build a shopping list program that can add, remove, display, and count items.

### Week 4: Functions and Reusable Code

| Day | Learn and practice | Daily task |
|---:|---|---|
| 22 | Defining and calling functions | Turn your area calculator into functions |
| 23 | Parameters and return values | Write functions for temperature conversion |
| 24 | Default and keyword arguments | Create a greeting function with optional details |
| 25 | Local and global scope | Predict which variables are visible before running code |
| 26 | List and dictionary comprehensions | Make lists of squares and word lengths |
| 27 | Recursion and when not to use it | Write recursive countdown and factorial functions |
| 28 | Docstrings and readable naming | Document five functions and improve their names |
| 29 | Unit-style thinking | Write input/output examples for every function |
| 30 | Foundation checkpoint | Complete the mini-project and review all mistakes |

**Foundation project:** Create a command-line **Quiz Game** with multiple questions, scoring, replay, and a results summary.

## Level 2: Core Python, Days 31-60

### Week 5: Errors, Modules, and Environments

| Day | Learn and practice | Daily task |
|---:|---|---|
| 31 | Syntax errors, runtime errors, and logic errors | Diagnose one example of each error |
| 32 | `try`, `except`, `else`, and `finally` | Make safe integer and decimal input functions |
| 33 | Raising exceptions and validation | Reject invalid ages, scores, and menu choices |
| 34 | Modules and imports | Move calculator functions into `calculator.py` |
| 35 | Packages and `__init__.py` | Organize utilities into a small package |
| 36 | Virtual environments and `pip` | Create `.venv` and install one harmless package |
| 37 | Review and cleanup | Run the project from a fresh terminal |

### Week 6: Files and Data

| Day | Learn and practice | Daily task |
|---:|---|---|
| 38 | Reading and writing text files | Save and display a journal entry |
| 39 | `with open(...)` and file paths | Rewrite the journal using safe file handling |
| 40 | CSV files | Read a marks file and calculate averages |
| 41 | JSON data | Save a dictionary as JSON and load it again |
| 42 | `pathlib` and folders | Build a script that lists files by extension |
| 43 | Encoding and missing files | Handle an absent or empty file gracefully |
| 44 | Review and data design | Choose JSON or CSV for three different situations |

**Weekly challenge:** Build a **Contact Book** that stores contacts in JSON and supports search, add, edit, and delete.

### Week 7: Object-Oriented Programming

| Day | Learn and practice | Daily task |
|---:|---|---|
| 45 | Classes, objects, and attributes | Create a `Student` class |
| 46 | Methods and `self` | Add study and score methods |
| 47 | `__init__` and `__str__` | Make objects easy to create and print |
| 48 | Encapsulation and properties | Validate a bank account balance |
| 49 | Inheritance and composition | Model different types of library items |
| 50 | Dataclasses | Replace a simple data class with `@dataclass` |
| 51 | OOP review | Decide whether a problem needs a class |

### Week 8: Testing and Code Quality

| Day | Learn and practice | Daily task |
|---:|---|---|
| 52 | Assertions and test cases | Add assertions to calculator functions |
| 53 | `unittest` basics | Write a test class for a number utility |
| 54 | `pytest` basics | Install and run tests for a small module |
| 55 | Edge cases and boundary tests | Test empty, zero, negative, and very large inputs |
| 56 | Debugging with breakpoints | Step through a failing program in VS Code |
| 57 | Type hints | Add annotations to five functions |
| 58 | Formatting and linting | Format code and fix simple lint warnings |
| 59 | Refactoring | Split one long function into smaller functions |
| 60 | Core checkpoint | Run tests and write a short project README |

**Core project:** Create a **Personal Expense Tracker** with a menu, JSON or CSV storage, categories, totals, validation, tests, and a README.

## Level 3: Advanced Python, Days 61-90

### Week 9: Python Internals and Advanced Functions

| Day | Learn and practice | Daily task |
|---:|---|---|
| 61 | Iterators and `iter()` / `next()` | Build a custom countdown iterator |
| 62 | Generators and `yield` | Generate an unlimited sequence safely |
| 63 | Decorators | Write a decorator that logs function calls |
| 64 | Closures and `nonlocal` | Build a counter factory |
| 65 | Context managers | Create a timer context manager |
| 66 | Special methods and protocols | Make a collection support `len()` and iteration |
| 67 | Review and performance | Compare a list and generator on a large range |

### Week 10: Data Structures and Performance

| Day | Learn and practice | Daily task |
|---:|---|---|
| 68 | Big-O notation | Estimate the cost of three algorithms |
| 69 | `collections`: `Counter`, `defaultdict`, `deque` | Count words and process a queue |
| 70 | `heapq` and priority queues | Build a priority task list |
| 71 | `bisect` and sorted data | Insert scores while keeping them ordered |
| 72 | Graphs and breadth-first search | Find a route through a simple map |
| 73 | Caching and `functools` | Add `lru_cache` to a recursive solution |
| 74 | Profiling and optimization | Measure before and after one optimization |

### Week 11: Web, APIs, and Databases

| Day | Learn and practice | Daily task |
|---:|---|---|
| 75 | HTTP and REST concepts | Read a public API response |
| 76 | `requests` or `urllib` and JSON | Build a small API client with error handling |
| 77 | URL parameters and pagination | Fetch several pages of results |
| 78 | SQLite with `sqlite3` | Create a table and insert records |
| 79 | SQL queries and parameterized statements | Search, update, and safely delete records |
| 80 | Flask or FastAPI basics | Expose one read-only endpoint |
| 81 | API testing and security basics | Validate input and return useful status codes |

### Week 12: Concurrency, Deployment, and Capstone

| Day | Learn and practice | Daily task |
|---:|---|---|
| 82 | Processes, threads, and the GIL | Identify a CPU-bound and I/O-bound task |
| 83 | `asyncio` and `await` | Run several simulated downloads concurrently |
| 84 | Queues and worker patterns | Build a small background job queue |
| 85 | Logging and configuration | Add rotating logs and environment settings |
| 86 | Packaging and project structure | Add `pyproject.toml` and a clear package layout |
| 87 | Git workflow and documentation | Write setup, usage, and troubleshooting instructions |
| 88 | Capstone implementation | Build the main feature and persist real data |
| 89 | Capstone testing and review | Add tests, handle failures, and improve performance |
| 90 | Demo and next steps | Present the project and write three future improvements |

**Advanced capstone options:**

- A study planner with a command-line interface, SQLite database, and web API.
- A file organizer that safely categorizes files, supports a dry-run mode, and logs changes.
- A small quiz platform with accounts, scores, JSON import/export, tests, and an API.
- A sensor or hardware-data dashboard that reads records, calculates statistics, and serves results.

## Daily Checklist

- [ ] I wrote code instead of only watching or reading.
- [ ] I tested a normal input and an unusual input.
- [ ] I can explain the main idea without copying the example.
- [ ] I saved the work with a useful filename.
- [ ] I wrote down one question or discovery.

## Milestones

At the end of day 30, you should be able to write small programs from a blank file. At the end of day 60, you should be able to organize, test, and save data in a complete application. At the end of day 90, you should be able to design a Python project, choose suitable tools, explain its trade-offs, and demonstrate working code.

After day 90, choose one specialization for another 30 days: web development, data science, automation, cybersecurity fundamentals, game development, or embedded Python.