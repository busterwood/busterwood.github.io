---
title: "IIS"
---
# IIS

## Periodic slowdown of websites

This might be the worker process being shut down, the default is 20 minutes, you can turn it off by setting the [idle timeout to zero](https://blogs.iis.net/owscott/why-is-the-iis-default-app-pool-recycle-set-to-1740-minutes).