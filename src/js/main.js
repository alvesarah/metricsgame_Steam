function typeWritter(elemento){
    const textoArray = elemento.innerHTML.split('');
    elemento.innerHTML = '';
    textoArray.forEach((letra, i) => {
        setTimeout(() => elemento.innerHTML += letra, 60 * i);
       
    });
}

const titulo = document.querySelector('p');

typeWritter(titulo);

let arrPerguntas = []
function adiciona() {
    function adiciona(pergunta) {arrPerguntas.push(pergunta)}
    $('#perguntaUm').click(()=>{
        adiciona('perguntaUm' )
        $('#perguntaUm').css('display', 'none')
    }) 
    $('#perguntaDois').click(()=>{
        adiciona('perguntaDois')
        $('#perguntaDois').css('display', 'none')
    }) 
    $('#perguntaTres').click(()=>{
        adiciona('perguntaTres')
        $('#perguntaTres').css('display', 'none')
    }) 
    $('#perguntaQuatro').click(()=>{
        adiciona('perguntaQuatro')
        $('#perguntaQuatro').css('display', 'none')
    }) 
    
    let myInterval = setInterval(()=>{
        if (arrPerguntas.length > 0) {
            if (arrPerguntas.length >= 3 ) {
               
                clearInterval(myInterval)
            }       
        }
       }, 1000)
}
adiciona();
