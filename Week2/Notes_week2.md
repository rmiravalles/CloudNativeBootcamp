# Scripting Like a Developer

Core developer theory for DevOps and how to code like a developer.

## Developer Theory

### Mutable vs. Immutable

Mutable | Immutable
------------ | -------------
Can be modified after its creation | Cannot be modified after its creation
No new object is formed when changes are made to an existing object | Whenever an existing object is changed, a new object is formed
Provides methods to change the content of an object | Does not provide methods for changing the content of an object
Ansible | Terraform

### Declarative vs. Imperative

Imperative | Declarative
------------ | -------------
Focuses on how to execute | Focuses on what to execute
Defines control flow as statements that change a program state | Defines program logic but not detailed control flow
Explicit instructions | Describes the outcome
Java, C#, C++, Python | Terraform, CloudFormation, Go, Python

### OOP, Functional and Procedural

#### Object Oriented Programming (OPP)

A programming paradigm based on the concept of *objects*, which may contain data, in the form of fields, often known as attributes; and code, in the form of procedures, often known as methods.

#### Functional Programming

A programming paradigm that treats computation as the evaluation of mathematical functions and avoids changing-state and mutable data.

#### Procedural Programming

A programming paradigm, derived from structured programming, based upon the concept of the procedure call. Procedures, also known as routines, subroutines, or functions, simply contain a series of computational steps to be carried out.

### Idempotence

Idempotence is the property of certain operations in mathematics and computer science whereby they can be applied multiple times without changing the result beyond the initial application.

## Testing Code

Testing code is crucial, whether you are writing automation, scripts or application code.

### Unit Tests

Unit testing refers to tests that verify the functionality of a specific section of code, usually at the function level. In an object-oriented environment, this is usually at the class level, and the minimal unit tests include the constructors and destructors.

For Python we use [unittest](https://docs.python.org/3/library/unittest.html) library and for PowerShell we use the [Pester](https://pester.dev/) framework.

### Mock Tests

A mock test is an approach to unit test and it allows you to make assertions. It allows you to replace parts of your system under test with mock objects and make assertions about how they have been used.

In Python, we use the [unittest.mock](https://docs.python.org/3/library/unittest.mock.html) library.

### Regression Tests

Regression testing focuses on finding defects after a major code change has occurred. Specifically, it seeks to uncover software regressions, as degraded or lost features, including old bugs that have come back. Such regressions occur whenever software functionality that was previously working correctly, stops working as intended. Typically, regressions occur as an unintended consequence of program changes, when the newly developed part of the software collides with the previously existing code.
