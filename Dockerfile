FROM kalilinux/kali-rolling
LABEL maintainer="@darkstar7471"
RUN mkdir /app
WORKDIR /app
RUN apt update && DEBIAN_FRONTEND=noninteractive apt install -qqy git python3 python3-pip
RUN apt install -qqy python3-toml python3-colorama apt-utils
RUN apt install -qqy curl enum4linux feroxbuster impacket-scripts nbtscan nikto nmap onesixtyone oscanner
RUN apt install -qqy redis-tools smbclient smbmap snmp sslscan sipvicious tnscmd10g whatweb wkhtmltopdf
RUN apt install -qqy seclists
RUN git clone https://github.com/Tib3rius/AutoRecon
WORKDIR /app/AutoRecon
RUN pip3 install -r requirements.txt
RUN chmod +x autorecon.py
CMD ["-h"]
ENTRYPOINT [ "/app/AutoRecon/autorecon.py" ]