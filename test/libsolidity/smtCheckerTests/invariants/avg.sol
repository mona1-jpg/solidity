pragma experimental SMTChecker;

contract C {
	uint sum;
	uint count;

	function () external payable {
		require(msg.value > 0);
		// Avoid overflow.
		require(sum + msg.value >= sum);
		require(count + 1 >= count);
		sum += msg.value;
		++count;
	}

	function average() public view returns (uint) {
		require(count > 0);
		uint avg = sum / count;
		assert(avg > 0);
		return avg;
	}
}
