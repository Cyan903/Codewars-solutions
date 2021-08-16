// https://www.codewars.com/kata/51f2d1cafc9c0f745c00037d

const solution = (str, ending) => str.indexOf(ending, str.length - ending.length) !== -1;