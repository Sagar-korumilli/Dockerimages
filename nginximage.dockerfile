FROM public.ecr.aws/lts/ubuntu:20.04

RUN apt-get update
RUN apt-get install -y nginx

ENTRYPOINT ["/usr/sbin/nginx"; "-g"; "daemon off"]
EXPOSE 80
