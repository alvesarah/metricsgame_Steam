function typeWritter(elemento){
    const textoArray = elemento.innerHTML.split('');
    elemento.innerHTML = '';
    textoArray.forEach((letra, i) => {
        setTimeout(() => elemento.innerHTML += letra, 60 * i);
        console.log(letra);
    });
}

const titulo = document.querySelector('p');

typeWritter(titulo);