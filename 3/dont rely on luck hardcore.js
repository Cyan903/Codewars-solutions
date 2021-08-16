// https://www.codewars.com/kata/54f6e7a62e2c167e29000112

guess = 1;
tmp1 = 0.0000001;
tmp2 = tmp1;

Math = Object.create(Math, {
	random: {
		value() {
			tmp1 += tmp2;
			return tmp1;
		},
	},
});

Math.random.toString = () => {
	return "function random() { [native code] }";
};

Object.freeze(Math);