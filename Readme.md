# TI-84 Plus CE Calculator Assembly

Assembly language programs for my TI-84 Plus CE calculator.

## Compiling

Launch the Docker container from this directory,

```sh
docker run --rm -v ${PWD}:/src -w /src -it rprouse/asm-dev
```

Then compile using make

```sh
make all
```

Or compile directly using RASM,

```sh
spasm -E -T hello.asm hello.8xp
```
