FROM ocaml/opam:debian-12

USER root
RUN apt-get update && apt-get install -y libx11-dev m4 git curl pkg-config libgtk-3-dev libgdk-pixbuf2.0-dev

USER opam
RUN opam update && opam install -y dune graphics csv ounit2

WORKDIR /home/opam/app

COPY . .

# override it at runtime
ENV DISPLAY=:0

RUN opam exec -- dune build

CMD ["opam", "exec", "--", "dune", "exec", "bin/main.exe"]
