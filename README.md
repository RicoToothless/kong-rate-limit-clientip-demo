# Kong Rate Limit Client IP demo

It's a Kong ingress demo environment for rate limit client ip.

# Quick Start

```
$ terraform apply

# approve terraform changes and wait for 20 minutes

$ ./install.sh
$ ./send-request.sh
```

# References

* [Kong official helm chart](https://github.com/Kong/charts)
* [Kong rate limit](https://docs.konghq.com/hub/kong-inc/rate-limiting/)
