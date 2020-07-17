---
title: "Continuous Delivery Practices"
---
# Continuous Delivery Practices

The research for The State Of DevOps report found the following:

# Technical Practices
1. Version Control - keep source code, build scripts and *application configuration* in version control.
2. Deployment Automation - automate the deployment process to enable rapid deployment without human error
2. Continuous Integration - automatically build and test code.  The first step to continuous deployment.
2. Test Automation - automate tests to a level that means when the tests pass the code can be released to production. *Reliable* tests are key, fix flakey tests or place them in *quarantine suite* until they are fixed.
In high-performing teams, the developers are responsible for maintaining the acceptance tests, not a separate QA function.
3. Test Data Management - high-performing teams had access to good test data to support automated acceptance tests.
4. Trunk-based development - high-performing had short-lived branches, less than a day, and never had code-freezes or stabilization periods.
5. Information Security - high-performing teams cooperated early and often with InfoSec personnel, not just at-the-end.
6. Continuous Delivery - focus on keeping the software deployable at all times, prioritize fixing any anything stopping deployment.  Deploy frequently

# Architecture
9. Loose coupling - allow teams to work, test and deploy independently.  Also allows for more frequent deployment.
10. Empower teams - allow teams to choose tools rather mandate tool choice.  Common infrastructure helps a lot. Teams must have all the skills needed to code, deploy and operate the application/service

# Product and Process
11. Feedback - gather feedback and incorporate into the design
12. Small batches - keep stories to less than a week, shorten the feedback cycle
13. Experiment - try things out, avoid having to get approval as this limits innovation

# Management and Monitoring
14. Pair and code review - avoid change approval boards as this limits deployment frequency and has a negative effect on performance
12. Monitor proactively - monitor thresholds and rate-of-change to avoid outages
13. Limit Work-In-Progress - highlight organisational bottlenecks and fix them
14. Visualise - use boards and websites to monitor quality and WIP

# Culture
18. Open and trusting - avoid blame culture and avoid "walls" between functions.
16. Collaborate - within teams and across teams
17. Learn - constantly learn and improve
18. Challenging work - allow people to solve problems and stretch themselves
19. Leadership - vision, intellectual stimulation, inspirational communication, personal recognition
