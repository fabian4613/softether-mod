FROM softethervpn/vpnserver:stable

WORKDIR /scripts

COPY *.sh .
RUN chmod +x *.sh
RUN ./softether_orchestrator.sh

