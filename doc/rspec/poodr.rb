# Don't test private functions. (pg 214-215)

### Testing Outgoing Messages ### (pg 215)
# Outgoing messages are either *queries* or *commands*
# Query messages matter only to the object that sends them.
# Command messages have effects that are visible to other objects in your application.

# Mocks are tests of behavior, as opposed to (stubs), which are tests of state.
# Instead of making assertions about what a message returns, mocks define an expectation
# that a message will get sent. (pg 217)
