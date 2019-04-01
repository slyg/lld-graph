# lld-graph

Generates a graph of components (aka _pacticipants_) by querying a Pact broker.

## Prerequisites

- `curl`
- `jq`
- `graphviz`
- `.env` file with `BROKER_URL` entry
- a pact broker (without authentication needed as is)

## Usage

```shell
$ make diagram-merged
```

Produces a `.dot` file and a `.png` image.
