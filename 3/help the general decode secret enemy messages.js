// https://www.codewars.com/kata/52cf02cd825aef67070008fa

device.decode = txt => {
	const code = 'abdhpF,82QsLirJejtNmzZKgnB3SwTyXG ?.6YIcflxVC5WE94UA1OoD70MkvRuPqH'.split("")
	const val = txt.split("");
	const str = [];

	for (let i = 0; i < val.length; i++) {
		const ind = code.indexOf(val[i]);
		const properChar = code[(ind + 65 - i) % 66];

		str.push((ind != -1) ? properChar : val[i]);
	}

	return str.join("");
}