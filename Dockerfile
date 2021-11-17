FROM kalilinux/kali-rolling
LABEL maintainer="@darkstar7471"
RUN apt update && DEBIAN_FRONTEND=noninteractive apt install -qqy git curl enum4linux feroxbuster impacket-scripts nbtscan nikto nmap onesixtyone oscanner snmpwalk sslscan svwar tnscmd10g whatweb wkhtmltopdf
# RUN command
# ENTRYPOINT ["nmap"]