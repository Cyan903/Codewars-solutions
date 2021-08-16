// https://www.codewars.com/kata/525f4206b73515bffb000b21

function add(num_1, num_2) {
	let str = "";

	while (num_1.length != num_2.length) {
		if (num_1.length < num_2.length) num_1 = `0${num_1}`;
		if (num_2.length < num_1.length) num_2 = `0${num_2}`;
	}

	function add_single(n, carry = 0) {
		const [a, b] = [num_1[n], num_2[n]].map(Number);

		if (isNaN(a) && isNaN(b)) {
			if (carry != 0) {
				str += carry;
				return str;
			}

			return str;
		}

		const result = a + b + Number(carry);
		const res = String(result);
		str += res[res.length - 1];

		return String(result).length == 2 ?
			add_single(n - 1, res[0]) :
			add_single(n - 1);
	}

	return add_single(num_1.length - 1)
		.split("")
		.reverse()
		.join("");
}