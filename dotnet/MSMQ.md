---
title: "MSMQ"
---
# MSMQ

[MSMQ](https://technet.microsoft.com/en-us/library/cc732184.aspx) is an optional component of Windows and has been around since Windows 2000.  MSMQ is a little different other messaging queues I have worked with in that is is an _asynchronous distributed queuing system_, in that:

1. when you send to a local (private) queue the message is delivered to the queue synchronously 
2. when you send to a remote queue (public or private) the message is put on a temporary outgoing queue and delivered to the destination queue *asynchronously*

Message delivery to remote queues can only confirmed by the use of an [administration queue](https://technet.microsoft.com/en-us/library/cc733063(v=ws.10).aspx).  If you don't use an [administration queue](https://technet.microsoft.com/en-us/library/cc733063(v=ws.10).aspx) then **messages can appear to get lost!**
MSMQ supports sending and receiving messages in a transaction, although acknowledgement messages sent to [administration queue](https://technet.microsoft.com/en-us/library/cc733063(v=ws.10).aspx) are **only delivered after the transaction has been committed!**

MSMQ supports sending and receiving messages via [multicast](https://msdn.microsoft.com/en-us/library/ms703254(v=vs.85).aspx). By default, multicast sending is limited to just 560Kb per second, you will need to  adjust `HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\MSQM\Parameters\MulticastRateKbitsPerSec` to something bigger to get decent sending throughput.

Messages can also be sent to multiple destination queues via [distribution lists](https://msdn.microsoft.com/en-us/library/ms704262(v=vs.85).aspx) and [multi-element format names](https://msdn.microsoft.com/en-us/library/ms704008(v=vs.85).aspx).  These features are a bit like a limited format of publish-subscribe, but the the sender controls who messages are sent to.

Also see my wiki page on [[Messaging patterns for MSMQ]].

MSMQ has a [number of registry parameters](https://blogs.msdn.microsoft.com/johnbreakwell/2007/02/14/tracking-down-msmq-registry-documentation/) you can set to change its behaviour, for example:
* `IgnoreOSNameValidation` (DWORD) to support sending to queues via DNS alias
* `IgnoreOSNameValidationForReceive` (DWORD) to support receiving from queues via DNS alias
* `MulticastBindIP` to set the network card (via IP address) to use when multicasting on a machine with multiple network cards

To view logs about MSMQ activity you need to [enable logging in the event viewer](https://technet.microsoft.com/en-us/library/cc730882%28v=ws.11%29.aspx) as it is disabled by default.

[John Breakwell](https://blogs.msdn.microsoft.com/johnbreakwell/) was the foremost expert on MSMQ and answered most of the stack overflow questions about it, but he has now left Microsoft.

## Workgroup mode

To be able to Peek or Receive a remote queue that has been installed in Workgroup mode you will need to:

1. Add a registry DWORD setting of `HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\MSMQ\Parameters\Security\NewRemoteReadServerAllowNoneSecurityClient` and set it's value to 1
2. Add security permission for the `ANONYMOUS USER` account to Peek / Receive from the queue

See [Secured Remote Read](https://technet.microsoft.com/en-us/library/cc771268(v=ws.10).aspx#Anchor_2) on MSDN