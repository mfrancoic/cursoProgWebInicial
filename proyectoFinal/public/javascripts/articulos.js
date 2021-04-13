const URL_SERVER = 'http://localhost:3000';

const select = document.querySelector('#rubro');
const rubroSelected= document.querySelector('#lblRubro').innerHTML;


function buscarArticulos(){
    var selectedOption=select.options[select.selectedIndex];
    window.location.href='/articulos/' + selectedOption.value;
}

function seleccionarRubro(){
    console.log(select.options.length);
    for(var i=0; i< select.options.length; i++){        
        if(select.options[i].value==rubroSelected) {            
            select.options.selectedIndex=i;
        }                    
    }
}

seleccionarRubro();
