FROM debian:jessie

RUN apt-get update \
    &&  apt-get install -y apt-transport-https wget \
    && wget -qO - https://apt.z.cash/zcash.asc | apt-key add - \
    && echo "deb https://apt.z.cash/ jessie main" | tee /etc/apt/sources.list.d/zcash.list \
    && apt-get update -y && apt-get install -y zcash \
    && zcash-fetch-params \
    && apt-get remove -y --purge apt-transport-https wget

VOLUME ["$HOME/.zcash/zcash.conf"]

COPY entrypoint.sh .
RUN chmod +x entrypoint.sh

CMD ["./entrypoint.sh"]
