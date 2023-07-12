FROM debian:bullseye

RUN apt-get update && apt-get install -y firefox-esr libcanberra-gtk-module libcanberra-gtk3-module libpci3 libegl1

RUN useradd --create-home firefox

USER firefox

CMD ["/usr/bin/firefox-esr", "-private", "-url", "duckduckgo.com"]

