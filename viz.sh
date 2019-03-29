dist='dist'
viz_type='dot'

mkdir -p $dist

echo "digraph {\nranksep=3; ratio=auto; overlap=false;\nnode [ shape = plaintext, fontname = \"Helvetica\" ];" > $dist/latest.dot ;

curl \
    https://pact-broker.platform.hmcts.net/pacts/latest \
    | jq '.pacts[]._embedded | select(.consumer.name) | .consumer.name + "->" + .provider.name' \
    | tr -d '"' |\
    sed 's/-/_/g' |\
    sed 's/_>/->/g'\
    >> $dist/latest.dot; echo "}" \
    >> $dist/latest.dot

$viz_type $dist/latest.dot -o $dist/diagram.png -T png
