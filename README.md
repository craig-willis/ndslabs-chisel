# NDS Labs Chisel server

This builds a custom Docker image based on the official [Chisel](https://github.com/jpillora/chisel/) server image. Chisel enables TCP tunneling over HTTP. This is a utility offered in NDS Labs to enable secure remote access to non-HTTP services.

To use the Chisel server:
* Add and start the Chisel server application in NDS Labs
* Download the Chisel client for your platform (https://github.com/jpillora/chisel/releases/tag/1.1.3)
* Create a tunnel:

```
chisel client --auth user:password https://<chisel-server>/ localhost:<local port>:<remote IP>:<remote port>
```

After this, you can access the remote service via localhost:<local port> until the tunnel is terminated.
