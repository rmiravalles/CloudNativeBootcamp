# The DEvOps Handbook

## Part 1

### Introduction

- DevOps and its resulting technical, architectural, and cultural practices represent a convergence of many philosophical and management movements.
- DevOps is the outcome of applying the most trusted principles from the domains of physical manufacturing and leadership to the IT value stream.
- While the foundation of DevOps can be seen as been derived from Lean, the Theory of Constraints, and the Toyota Kata movement, many also view DevOps as the logical continuation of the Agile software journey.

#### The Lean Movement

- Major tenets:
  - The manufacturing lead time required to convert raw materials into finished goods is the best predictor of quality, customer satisfaction, and employee happiness.
  - One of the best predictors of short lead time is small batch sizes of work.
- Systems thinking:
  - Constancy of purpose
  - Scientific thinking
  - flow and pull (versus push)
  - assuring quality at the source
  - leading with humility
  - respecting every individual

#### The Agile Manifesto

- A lightweight set of values and principles applied to software development processes.
- Key principles:
  - Deliver working software frequently
  - Small size batches
  - Incremental releases
  - Small, self-motivated teams
  - High-trust management model

#### The Continuous Delivery Movement

- Built upon the development discipline of continuous build, test, and integration.
- The **Deployment Pipeline** ensures that code and infrastructure are always in a deployable state, and that all code checked in to trunk can be safely deployed into production.

#### The Toyota Kata

- Toyota Kata is a management book written by Mike Rother
- **The Improvement Kata**
    - Constant cycle of establishing desired future states
    - Weekly target outcomes
    - Continual improvement of daily work

#### Infrastructure as Code

- To automate and treat the work of Operations like application code
- To apply modern development practices to the entire development stream

### Chapter 1 Agile, Continuous Delivery, and the Three Ways

#### Value Stream

- One of the fundamental concepts in Lean.
- The sequence of activities required to design, produce, and deliver a good or service to a customer, including the dual flows of information and materials.
- In manufacturing operations, the value stream is often easy to see and observe.
- The same principles and patterns can be equally applied to technology work.
- **The DevOps definition of the technology value stream**: the process required to convert a business hypothesis into a technology-enabled service that delivers value to the customer.

#### Deployment Lead Time

- A subset of the value stream described above.
- It begin when an engineer checks a change in to version control and ends when that change is successfully running in production, providing value to the customer and generating useful feedback and telemetry.
- The first phase of work, which includes Design and Development, is highly variable and uncertain.
- The second, which includes Testing and Operations, strives to be predictable and mechanistic, with the goal of achieving work outputs with minimized variability.
- Our goal is to have Testing and Operations happening simultaneously with Design/Development, enabling fast flow and high quality.

#### Lead Time vs. Processing Time

- The two measure commonly used to measure performance in value streams.
- **Lead Time** starts when the request is made and ends when it is fulfilled.
- **Process Time** starts only when we begin work on the customer request (it omits the time that the work is in queue, waiting to be processed).
- Because lead time is what the customer experiences, we typically focus our process improvement attention there instead of on process time.
