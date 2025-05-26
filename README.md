A simple forward proxy based on OpenResty (which is based on nginx) for testing purposes.
Based on the [`ngx_http_proxy_connect_module`](https://github.com/chobits/ngx_http_proxy_connect_module) project.

# Running the forward proxy

By default, the proxy binds to port 3128.
Username and password are `foobar` and `s3cr3t_p4ssword` respectively but can be configured by editing the environment variables in the [Compose file](compose.yml).

To start the proxy, simply run `docker compose up`.
