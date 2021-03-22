# Serverless in Azure and AWS

- There is always a server, but we aren't managing them.
- Before serverless, the only option was to run apps on a virtual machine. Then, you would still have to worry about the infrastructure.
- With serverless, you simply deploy your code.
- No more managing infrastructure.
- Focus on the code.
- Smaller footprint.
- Serverless is not just web frontend apps.
- Backend can also work serverless.
- **Scalability**
  - Auto-scaling
  - Much better performance

## Azure Functions

- Azure Functions are part of the serverless backend family.
- Azure Functions allow you to upload any type of backend code.

## Azure Web Apps

- Frontend code.
- Supports many languages.
- Can run pure code or in a container.

## AWS Elastic Bean Stalk

- Frontend code.
- Supports multiple languages.
- Here, you can also run containers.

## Serverless Monitoring

- In Azure: **Azure Monitor** and **Application Insights**.
- In AWS: **Cloudwatch**.

## Serverless Pros and Cons

Pros | Cons
------------ | -------------
No infrastructure to manage | Data isn't stored
Highly scalable | Vendor lock-in
Pay for what you use | Debugging may be different for sysadmins

## Serverless Kubernetes

- GKE Autopilot from GCP.
- No nodes need to be managed.
- Billed per pod.
