def shortened(n):
    n
    | split("_") [:($LEVEL | tonumber)]
    | join("_")
;
[
    .pacts[]._embedded
        | select(.consumer.name and .provider.name)
        |
            {
                consumer: shortened(.consumer.name),
                provider: shortened(.provider.name)
            }
]
| unique_by([ .consumer, .provider ] | join("@"))
| .[]
| .consumer + "->" + .provider
