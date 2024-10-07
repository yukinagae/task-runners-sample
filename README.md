# task-runners-sample

Run the following commands via each task runner.

- `tidy`: Tidy modfiles, format and lint .go files
- `test`: Test the Go modules within this package
- `dev`: Run the application

## Make

- Configuretion file: `Makefile`

```bash
$ make tidy
$ make test
$ make dev
```

- Help

```bash
$ make help
# or
$ make
Usage:
  make <target>

Targets:
   tidy   Tidy modfiles, format and lint .go files
   test   Test the Go modules within this package
   dev    Run the application
```

## [Task (Go)](https://taskfile.dev/)

To install [Task](https://taskfile.dev/installation/), run `brew install go-task`.

- Configuration file: `Taskfile.yml`

```bash
$ task tidy
$ task test
$ task dev
```

- Help

```bash
$ task --list
# or
$ task -l
task: Available tasks for this project:
* dev:        Run the application
* test:       Test the Go modules within this package
* tidy:       Tidy modfiles, format and lint .go files
```

## [just (Rust)](https://github.com/casey/just)

To install [just](https://github.com/casey/just), run `cargo install just`.

- Configuration file: `justfile`

```bash
just tidy
just test
just dev
```

- Help

```bash
$ just --list
Available recipes:
    default
    dev     # Run the application
    test    # Test the Go modules within this package
    tidy    # Tidy modfiles, format and lint .go files
```
