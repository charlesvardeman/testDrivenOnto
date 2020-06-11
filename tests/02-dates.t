#!/bin/sh
# vi: set ft=sh :


test_description="Ontology MUST contain a valid dct:created as xsd:date or xsd:datetime"

. ./sharness.sh

TESTDIR="$SHARNESS_TEST_DIRECTORY/dates"

test_expect_failure "Test no date validation failure" "
    pyshacl -s '$TESTDIR/shape.ttl' '$TESTDIR/date_fail.ttl'
"

test_expect_success "Test date1 dct:created xsd:date" "
    pyshacl -s '$TESTDIR/shape.ttl' '$TESTDIR/date1.ttl'
"

test_expect_success "Test date2 dct:created xsd:datetime" "
    pyshacl -s '$TESTDIR/shape.ttl' '$TESTDIR/date2.ttl'
"


test_done



