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
            key: [ shortened(.consumer.name), shortened(.provider.name) ] | join("@"),
            consumer: shortened(.consumer.name),
            provider: shortened(.provider.name)
        }
]
| unique_by(.key)
