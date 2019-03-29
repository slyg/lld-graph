def shortened(n):
    n
    | split("_") [:3]
    | join("_")
;
[
    .pacts[]._embedded
        | select(.consumer.name)
        |
            {
                consumer: shortened(.consumer.name),
                provider: shortened(.provider.name)
            }
]
| unique_by([ .consumer, .provider ] | join("@"))
