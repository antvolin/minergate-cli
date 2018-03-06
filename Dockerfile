FROM ubuntu:16.04

RUN apt-get update && apt-get install -y \
	wget && \
	wget -q --content-disposition https://minergate.com/download/deb-cli && \
    dpkg -i *.deb && \
    rm *.deb && \
	rm -rf /var/lib/apt/lists/*

ENTRYPOINT ["minergate-cli"]
CMD ["-user", "antvolin@gmail.com", "-bcn"]