#!/bin/sh
# vi: set ft=sh :


test_description="Ontology MUST contain description using rdfs:comment or skos:definition or dct:description or dc:description"

. ./sharness.sh

TESTDIR="$SHARNESS_TEST_DIRECTORY/description"

test_expect_failure "Test no date validation failure" "
    pyshacl -s '$TESTDIR/shape.ttl' '$TESTDIR/date_fail.ttl'
"

test_expect_success "Test description1 rdfs:comment" "
    pyshacl -s '$TESTDIR/shape.ttl' '$TESTDIR/description_test1.ttl'
"

test_expect_success "Test description2 skos:definition" "
    pyshacl -s '$TESTDIR/shape.ttl' '$TESTDIR/description_test2.ttl'
"


test_expect_success "Test description3 dct:description" "
    pyshacl -s '$TESTDIR/shape.ttl' '$TESTDIR/description_test3.ttl'
"

test_expect_success "Test description4 dc:description" "
    pyshacl -s '$TESTDIR/shape.ttl' '$TESTDIR/description_test4.ttl'
"

test_done



