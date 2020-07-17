---
title: "Ideal Operating System"
---
# Ideal Operating System

# Wish List

What do I want from a modern operating system?

### Reliable

More than anything else I want the OS to be reliable.  That means no crashes, ever.  Not even if hardware fails. And no reboots needed to keep the system running.

### Secure

I want safety and security by default, that means no viruses, no manual software updates, patches applied automatically.  I want to be able to let my 5 years old son use it knowing nothing bad will happen on-line.  I want my son to be able to use it in 5 years without constantly worrying about what he is doing.

### Portable

I don't want to be tied to Intel, or AMD, or ARM, I want the OS to run everywhere.  I want on my laptop, on my Mothers and Mother-in-laws computers, on the Raspberry Pi, on my old Mini Mac.  

### Device compatibility

I want to use my old printer, not to be forced to buy a new one because a no drivers exist for a new version of the OS (I'm looking at you, Windows 10)

### Separate UI

I want my Mother-in-law to continue to use the Windows XP user interface, my Dad want to use Windows 7, I quite like the Mac UI.  I want to run the latest OS version with any interface, there is no need to tie the User Interface to the OS.

### Connected

I want cloud storage and services to be seamlessly integrated such that I can store photos, videos and music in the cloud and not on my laptop (which keeps running out of space).

### Command line

I want everything to be scriptable via the command line, everything, no exceptions.  

### Speed

Not quite the bottom of the list, but the OS must be fast to start and shutdown, and feel snappy in use.

# How the Heck?

Reliability of the OS can be achieved using the [Minix3](http://www.minix3.org/) design of a micro-kernel with all hardware drivers running in user-mode and having a special service which monitors the system processes and restarts any which stop responding.  If you remember the micro-kernel debate, it appears that hybrid kernels won, but I think the speed advantage they gave is no longer worth the reliability trade-off.  The [L3 and L4 micro-kernel family](http://www.l4ka.org/) has shown the overhead of micro-kernel communication can be lowered to around 4%, which is less than the typical 10% overhead of OS virtualization.


