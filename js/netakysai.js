let h = document.getElementById ('button-1');
h.onclick = function (){
    console.log ('Кнопка нажата')
}


let a = document.getElementById ('button-2');
a.addEventListener('click', function(){
a.innerHTML = "Спасибо"
});


let count = 0;
let mamarusika = document.getElementById ('button-3');
mamarusika.addEventListener('click', function(){
    count++;
    console.log("количество кликов по кнопке " + count)
});


let mamavlada = document.getElementById ('button-4');
mamavlada.addEventListener ('click', function(){
    this.style.display = "none";
});

let mamaartema = document.getElementById ('button-5');
mamaartema.addEventListener ('click', function (event){
    event.preventDefault();
    console.log ('Текст не отправлен, кнопка нажата');
});


for (let i = 1; i <= 6; i++){
    let papaakima = document.createElement ('button');
    papaakima.textContent = "Кнопка " + i;
    papaakima.addEventListener('click', function(){
        console.log ('Нажата кнопка ' + i);
    }); 
    document.getElementById('button-6').appendChild(papaakima);
}


let bbnos = document.getElementById ('button-7');
bbnos.addEventListener("mouseenter", function(){
    bbnos.style.backgroundColor = "red";
});
bbnos.addEventListener("mouseleave", function(){
    bbnos.style.backgroundColor = "";
});


for (let i = 1; i <= 4; i++){
    let makima = document.createElement ('buton');
    makima.textContent = "КнопкF " + i;
    makima.addEventListener('click', function(){
        console.log ("Нажали " + i);
    })
    document.getElementById ('button-8').appendChild(makima);
    makima.style.backgroundColor = "Orange";
}

let macdonalds = document.getElementById('button-9');
let macTimeout;

macdonalds.addEventListener("mouseenter", function(){
    macTimeout = setTimeout(() => {
        macdonalds.style.display = "none";
    }, 300);
});

macdonalds.addEventListener("mouseleave", function(){
    clearTimeout(macTimeout);
    setTimeout(() => {
        macdonalds.style.display = "block";
    }, 300);
});



let brainmaps = document.getElementById('button-10');
let timeoutId;
brainmaps.addEventListener('mouseenter', function() {
  timeoutId = setTimeout(function() {
    brainmaps.style.backgroundColor = "red";
  }, 300);
});

brainmaps.addEventListener('mouseleave', function() {
  clearTimeout(timeoutId);
  brainmaps.style.backgroundColor = "";
});