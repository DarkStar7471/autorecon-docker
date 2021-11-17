FROM kalilinux/kali-rolling
LABEL maintainer="@darkstar7471"
RUN mkdir /app
WORKDIR /app
RUN apt update && DEBIAN_FRONTEND=noninteractive apt install -qqy git seclists curl enum4linux feroxbuster impacket-scripts nbtscan nikto nmap onesixtyone oscanner redis-tools smbclient smbmap snmp sslscan sipvicious tnscmd10g whatweb wkhtmltopdf python3 python3-pip
RUN git clone https://github.com/Tib3rius/AutoRecon
WORKDIR /app/AutoRecon
RUN pip3 install -r requirements.txt
ENTRYPOINT ["python3 autorecon.py"]