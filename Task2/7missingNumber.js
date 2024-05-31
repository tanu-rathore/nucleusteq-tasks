let arr = [1,2,5,3];
let size = arr.length;

arr.sort((a,b)=> a-b);

let i=1;

function missingElement(arr,size){
for(let j=0;j<size;j++){
    if(i !== arr[j])
    {
        return i;
    }
    else {
        i++;
    }
}}

console.log(missingElement(arr,size));