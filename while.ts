let number: number = 234567;
let reverse: number = 0;

while (number > 0) {
    let digit = number % 10;
    reverse = reverse * 10 + digit;
    number = Math.floor(number / 10);
}

console.log("Reverse Number:", reverse);