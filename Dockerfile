FROM lergo/lergo-build-setup

ARG workdir=/app/lergo
WORKDIR ${workdir}

RUN git clone https://github.com/lergo/lergo-ri.git
RUN git clone https://github.com/lergo/lergo-ui.git
RUN git clone https://github.com/lergo/lergo-system-tests.git
ADD . ${workdir}/lergo-build
