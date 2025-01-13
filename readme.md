# Jsonnet quick start guide

## Project structure:
```
.
├── jsonnetfile.json        // Dependency file
├── jsonnetfile.lock.json   // Dependency lock file
├── lib                     // Local libraries
│   └── k.libsonnet
├── main.jsonnet            // Main jsonnet file
└── vendor                  // Remote libraries
    ├── ...
    └── ...
```

Project can be initialized with `jb init` and dependencies can be installed with `jb install`.

Local libraries will be stored in the `lib` directory but should be created manually.

## Compile jsonnet files

With `vendor` and `lib` directories:
```shell
jsonnet -J vendor -J lib main.jsonnet
```

Saving the output to a file:
```shell
jsonnet -J vendor -J lib main.jsonnet -o main.json
```

## k.libsonnet
`k.libsonnet` alias should be created in `lib` directory if you intend to use `k8s-libsonnet` library.

Example content of `k.libsonnet`:

```jsonnet
import "github.com/jsonnet-libs/k8s-libsonnet/1.32/main.libsonnet"
```
