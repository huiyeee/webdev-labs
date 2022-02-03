const makeBigger = () => {
   // alert('make bigger!');
   h1 = document.querySelector("h1");
   h1CurSize = window.getComputedStyle(h1, null).getPropertyValue('font-size');
   h1.style.fontSize =  (parseInt(h1CurSize) + 1) + "px";

   content = document.querySelector(".content");
   cCurSize = window.getComputedStyle(content, null).getPropertyValue('font-size');
   content.style.fontSize = (parseInt(cCurSize) + 1) + "px";
};

const makeSmaller = () => {
   // alert('make smaller!');
   h1 = document.querySelector("h1");
   h1CurSize = window.getComputedStyle(h1, null).getPropertyValue('font-size');
   h1.style.fontSize =  (parseInt(h1CurSize) - 1) + "px";

   content = document.querySelector(".content");
   cCurSize = window.getComputedStyle(content, null).getPropertyValue('font-size');
   content.style.fontSize = (parseInt(cCurSize) - 1) + "px";
};


document.querySelector("#a1").addEventListener('click', makeBigger);
document.querySelector("#a2").addEventListener('click', makeSmaller);

