function typeWritter(elemento){
    const textoArray = elemento.innerHTML.split('');
    elemento.innerHTML = '';
    textoArray.forEach((letra, i) => {
        setTimeout(() => elemento.innerHTML += letra, 50 * i);
       
    });
}
function retornaResetbtn() {
 return  $('.btn-reset').css('display', 'flex')
  
}

function resetNone() {
    return  $('.btn-reset').css('display', 'none')
}


const titulo = document.querySelector('p');

typeWritter(titulo);


function adicionaReset() {
    let contador = 0
    $('.perguntaUm').click(()=>{
        contador++
        $('.perguntaUm').css('display', 'none')
    }) 
    $('.perguntaDois').click(()=>{
        contador++
        $('.perguntaDois').css('display', 'none')
    }) 
    $('.perguntaTres').click(()=>{
        contador++
        $('.perguntaTres').css('display', 'none')
    }) 
    $('.perguntaQuatro').click(()=>{
        contador++
        $('.perguntaQuatro').css('display', 'none')
    }) 

    let myInterval = setInterval(()=>{
        localStorage.setItem('contador', contador)
       }, 0)

      let contador2 = localStorage.getItem('contador')  
      if (contador2 >= 2) {
          contador2 = 3
           clearInterval(myInterval) 
       }
       $('.btn-reset').click((e)=>localStorage.clear())
       $('.btn-voltar-mapa').click((e)=>{
       

       })
       
}


adicionaReset();


function reverEstatistica() {
    const perguntaUm = $('.perguntaUm')
    const perguntaDois = $('.perguntaDois')
    const perguntaTres = $('.perguntaTres')
    const perguntaQuatro = $('.perguntaQuatro')

    if ((perguntaUm.css('display', 'none'))) { 
        perguntaUm.css('display', 'flex')
        perguntaDois.css('display', 'flex')
        perguntaTres.css('display', 'flex')
        perguntaQuatro.css('display', 'flex')
    } 
     
}

$('.btn-voltar-estatisca').click((e)=>{
    e.preventDefault()
    reverEstatistica()
})


