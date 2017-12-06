# Use a stock Docksal image as the base
FROM docksal/cli:1.3-php7

# Install gatsby cli
RUN export NVM_DIR="/home/docker/.nvm" && \
  . "$NVM_DIR/nvm.sh" && \
  npm install --global gatsby-cli && \
  ln -s $(which gatsby) /opt/gatsby

RUN apt-get update && apt-get install netcat -y

COPY supervisor-develop.sh /opt/supervisor-develop.sh
COPY healthcheck.sh /opt/healthcheck.sh
COPY healthcheck.sh /opt/healthcheck2.sh

CMD ["/opt/supervisor-develop.sh"]

# Health check script
HEALTHCHECK --interval=5s --timeout=1s --retries=12 CMD ["/opt/healthcheck.sh"]