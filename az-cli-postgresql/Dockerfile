FROM microsoft/azure-cli:2.0.33
RUN pip install ansible[azure]
RUN pip uninstall -y azure-mgmt-network
RUN pip install azure-mgmt-network==2.0.0rc2
RUN az extension add --name rdbms-vnet
RUN apk --update add postgresql py-psycopg2 && \
    rm -rf /var/cache/apk/*
COPY . /work/
