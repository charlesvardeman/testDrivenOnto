#!/bin/sh
# vi: set ft=sh :


test_description="Ontology Title Metadata"

. ./sharness.sh

TITLE="$SHARNESS_TEST_DIRECTORY/title"

test_expect_failure "Test no metadata validation failure" "
    pyshacl -s '$TITLE/shape.ttl' '$TITLE/title_fail.ttl'
"

test_expect_success "Test title1 rdfs:label" "
    pyshacl -s '$TITLE/shape.ttl' '$TITLE/title1.ttl'
"

test_expect_success "Test title2 skos:prefLabel" "
    pyshacl -s '$TITLE/shape.ttl' '$TITLE/title2.ttl'
"

test_expect_success "Test title3 dct:title" "
    pyshacl -s '$TITLE/shape.ttl' '$TITLE/title3.ttl'
"

test_expect_success "Test title4 dc:title" "
    pyshacl -s '$TITLE/shape.ttl' '$TITLE/title4.ttl'
"


test_done



