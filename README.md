# docker-asciidoc

An Docker image for working with asciidoc and pandoc (Build PDF, docbook or converting docbook to docx).


## Build the Docker
Build the Docker with the following command. Modify the tags as you like.
```bash
docker build .  -t mastze025/asciidoc-pandoc:latest
```

## Use the Docker

### Convert a adoc-Document to docbook
```bash
docker run -it --rm -v $PWD:/workdir:rw mastze025/asciidoc-pandoc:latest pandoc -r docbook -t docx -o Document.docx Document.xml
```

### Convert a docbook to docx
```bash
docker run -it --rm -v $PWD:/workdir:rw mastze025/asciidoc-pandoc:latest asciidoctor-pdf -r asciidoctor-diagram -b docbook5 Document.adoc
```

### Convert a adoc-Document to pdf
```bash
docker run -it --rm -v $PWD:/workdir:rw mastze025/asciidoc-pandoc:latest asciidoctor-pdf -r asciidoctor-diagram -b docbook5 Document.adoc
```


## Updating
```bash
docker pull mastze025/asciidoc-pandoc:latest
```
