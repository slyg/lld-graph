.pacts[]._embedded
    | select(.consumer.name)
    | .consumer.name + "->" + .provider.name

