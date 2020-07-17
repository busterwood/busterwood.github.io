---
title: "Measuring Software Delivery Performance"
---
# Measuring Software Delivery Performance

The following is from [Accelerate](https://www.amazon.co.uk/Accelerate-Software-Performing-Technology-Organizations/dp/1942788339/) by Jez Humble, et al. Research was carried out by [DORA](https://devops-research.com/), now part of Google Cloud.

A software organisation can be objectively measured by the following metrics.

## Productivity measures
1. **Lead time** (shorter is better) - the time it takes committed code to reach production.
2. **Deployment Frequency** (more frequent is better) - how many releases per day/week/month/year.  Proxy for batch size, where smaller batches reduce cycle time, risk and provide shorter feedback cycles.

## Stability measures
3. **Mean Time to Restore** (shorter the better) - how long after failure does service get restored?
4. **Change Fail Percent** - what percentage of changes lead to degraded service or required remediation.

# Results

Extensive research shows that *there is no trade-off between productivity and stability*, higher performers do better at both.

High Performers:
* Deploy multiple times per day
* Lead time is less than one hour
* MTTR is is less than one hour 
* Change failure rate is 0-15%