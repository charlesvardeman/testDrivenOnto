source ./assert.sh

function test_shapes
{
    # Run
    run pyshacl -s shapes.ttl test1.ttl

    assert_success

}

testrunner
