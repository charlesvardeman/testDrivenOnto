#!/bin/sh
# vi: set ft=sh :


test_description="Ontology Source-Provenance Metadata"

. ./sharness.sh

TITLE="$SHARNESS_TEST_DIRECTORY/source"

test_expect_failure "Test no metadata validation failure" "
    pyshacl -s '$TITLE/shape.ttl' '$TITLE/source_fail.ttl'
"

test_expect_success "Test schema:codeRepository" "
    pyshacl -s '$TITLE/shape.ttl' '$TITLE/source1.ttl'
"

test_expect_success "Test dcterms:source" "
    pyshacl -s '$TITLE/shape.ttl' '$TITLE/source2.ttl'
"
test_expect_success "Test prov:wasGeneratedBy " "
    pyshacl -s '$TITLE/shape.ttl' '$TITLE/source3.ttl'
"

test_done



