FROM alpine
# 阿里云加速
RUN sed -i "s/dl-cdn.alpinelinux.org/mirrors.aliyun.com/g" /etc/apk/repositories && \
    apk update && \
    apk add --no-cache \
    vim \
    curl 
# 先把velero下载到本地再复制过去    
COPY velero /usr/local/bin
ENTRYPOINT ["velero"] 
