# localport
reverse proxy for local

## Usage

### 1. Run a container on external-reachable host

```
docker run -it -e ENTRYPOINT_HOST=mydev.com -e PROXY_TARGET_HOST=[my dev VM or PC's IP, Hostname] ghcr.io/takutakahashi/localport:latest
```

### 2. Assign wildcard name to host

```
A      *.mydev.com  [my dev VM or PC's IP] # IP Address and A record
CNAME  *.mydev.com  [my dev VM or PC's Hostname] # or Hostname and CNAME record
```

### 3. Access to dev environments

```
curl http://3000.mydev.com/
# forwarding to http://[my dev VM or PC's IP, Hostname]:3000
```

It's very useful for Kubernetes and Ingress

See example below:
https://github.com/takutakahashi/testbed/tree/master/infra/workspace/localport
