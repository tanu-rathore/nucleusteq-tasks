let arr1 = [7,8,2,5,6];
let arr2 = [5,3,8,9,0,6,4];
let ans = [];

arr1.sort((a, b) => a - b);
arr2.sort((a, b) => a - b);

let len1 = arr1.length;
let len2 = arr2.length;


let i=0;
let j=0;

while(i<len1 && j<len2){
    if(arr1[i] === arr2[j]) {
        ans.push(arr1[i]);
        i++;
        j++;
    }
    else if(arr1[i]< arr2[j]){
        i++;
    }
    else {
        j++;
    }
}

for(let k=0;k<ans.length; k++) {
    console.log(ans[k]);
}