// https://www.codewars.com/kata/5514e5b77e6b2f38e0000ca9

function upArray(arr) {
	if (arr.some((x) => x > 10) || arr.some((x) => x < 0) || arr.length == 0) {
		return null;
	}
	
	if (arr.length > 10 && arr[arr.length - 1] != 9) {
		arr[arr.length - 1]++;
		return arr;
	}

	arr = Number(String(arr).replace(/,/g, "")) + 1;
	return String(arr).split("").map(Number);
}