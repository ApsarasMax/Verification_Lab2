package FSMProperties;
// FSMValidTransition
// Function: Checks that a FSM changes from a state to a nextState if
//           the condition is true
//
// Inputs: 
// clk - Sample clock signal
// currentState - Boolean (State == currentState)
// condition - Boolean (Transition condition)
// nextState - Boolean (State == nextState)

/*place your property here*/


// FSMOutputValid
// Function: Checks that FSM outputs have the right value for a given state
//
// Inputs:
// clk - Sample clock signal
// currentState - Boolean (State == currentState)
// outputCondition - Boolean (Outcome of boolean formula to describe output behavior


/*place your property here*/


// FSMTimeOut
// Function: Checks that a FSM changes state within a timeout window
//
// Inputs:
// clk - Sample clock signal
// currentState - signal - current state of the FSM
// timeOutVal - integer - Number of clocks before the FSM is deemed to have locked up

/*place your property here*/

endpackage: FSMProperties
