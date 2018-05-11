FROM     asciidoctor/docker-asciidoctor

ENV PANDOC_VERSION "2.2"

#Add Pandoc
RUN apk add --no-cache cabal ghc libc-dev zlib-dev
RUN cabal update && cabal install pandoc-${PANDOC_VERSION}

ENV PATH ${PATH}:/root/.cabal/bin/

RUN mkdir -p /workdir

WORKDIR /workdir
