create_dot_with() {
    echo -e "
    digraph {
        ranksep = 3;
        ratio = auto;
        overlap = false;
        node [ shape = plaintext, fontname = \"Helvetica\" ];
        $@
    }"
}
