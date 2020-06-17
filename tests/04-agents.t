#!/bin/sh
# vi: set ft=sh :


test_description="Agents, individual persons or organisations, should be associated with ontologies to indicate *authors*, *creators*, *publishers* etc."

. ./sharness.sh

TESTDIR="$SHARNESS_TEST_DIRECTORY/agents"

test_expect_failure "Test no creator validation information" "
    pyshacl -s '$TESTDIR/shape.ttl' '$TESTDIR/agents_fail.ttl'
"

test_expect_success "Test agent1 dc:creator " "
    pyshacl -s '$TESTDIR/shape.ttl' '$TESTDIR/agent_test1.ttl'
"

test_expect_success "Test agent1 dct:creator with blank node" "
    pyshacl -s '$TESTDIR/shape.ttl' '$TESTDIR/agent_test2.ttl'
"

test_done



