# Continuous Integration, Continuous Deploy, and Continuous Delivery

## What is CI/CD?

- CI/CD is automating the process of committing something to code and rolling out these new changes as fast, stable and secure as possible.
- CI/CD is very important for the enterprise, in order for them to be competitive.
- **Continuous Integration**: Automating the process of merging code into master.
- **Continuous Delivery**: Extending CI by deploying new merged code into the environment for testing, QA, and production.
- **Continuous Deployment**: Extending continuous delivery by removing human intervention from the CI/CD process.

## CI/CD tools

- Azure DevOps
- GitHub Actions
- AWS Code Deploy
- Jenkins
- CircleCI
- TravisCI

## CI/CD uses

- CI/CD is not just for applications.
- It can be used for infrastructure, and database administration.
- We can use CI/CD processes for packages containing software to be installed.
- **If you can codify it, you can build a CI/CD process for it**

## Tips and Tricks

- Use pipeline templates for common code.
- For CI, speed is key.
  - Caching strategy to re-use data from previous builds.
  - Run jobs in parallel where it makes sense.
  - Try to run tests in parallel if you can.
- **Secure your pipelines.**
  - **Secrets**
  - **Permissions**
