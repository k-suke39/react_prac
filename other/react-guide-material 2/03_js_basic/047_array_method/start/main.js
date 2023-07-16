const arry = [10, 20, 30, 40];
const newArry = [];

for (let i = 0; i < arry.length; i++) {
  newArry.push(arry[i] * 2);
}

console.log(newArry);

const newArry2 = arry.map((val) => val * 2);

console.log(newArry2);
