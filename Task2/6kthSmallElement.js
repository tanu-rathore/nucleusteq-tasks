let arr = [7,10,4,3,20,15];
let size = arr.length;
let k = parseInt(prompt("enter any number smaller than the size of array"));

arr.sort((a,b)=> a-b);

console.log(arr[k-1]);
