let arr = [2,3,1,2,3];
let result = [];
let size = arr.length;

arr.sort((a,b)=> a-b);

let i=1;

while(i<size){
    if(arr[i] === arr[i-1]){
        result.push(arr[i]);
        i++;
    }
    else {
        i++;
    }
}

for(let i of result){
    console.log(i);
}