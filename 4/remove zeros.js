// https://www.codewars.com/kata/52aae14aa7fd03d57400058f

function removeZeros(array) {
    for (let i in array) {
        if (array[i] === false) array[i] = "asdasdasd";
    }

    let i;
    for (let i = 0; i <= array.length; i++) {
        if (i < array.length - 1) {
            if (array[i] == 0 && array[i + 1] != 0) {
                [array[i], array[i + 1]] = [array[i + 1], array[i]]
                i = -1
            }
        }
    }

    for (let j in array) {
        // when the false == 0 = true :')
        if (array[j] == "asdasdasd") array[j] = false
    }

    return array;
}