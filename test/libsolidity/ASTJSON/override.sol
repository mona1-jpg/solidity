contract B {
	function foo() public;
}
contract C is B {
	function foo() public override {
	}
}

// ----
