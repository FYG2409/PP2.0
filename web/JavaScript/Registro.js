function validarPasswd(){
            var p1 = document.getElementById("con").value;
            var p2 = document.getElementById("concom").value;
            if(p1 === p2){
                return true;
            }
            else
                alert("Las contraseñas no coinciden");
                return false;
        }
        function mayus(e) {
            e.value = e.value.toUpperCase();
        }
        function letras(){
            var letras = " abcdefghijklmnñopqrstuvwxyzABCDEFGHIJKLMNÑOPQRSTUVWXYZ";
            var x = event.keyCode;
            var letra = String.fromCharCode(x);
            var n = letras.indexOf(letra);
            var texto = noms.value;
            if (letra === ' '){
                if(texto.indexOf(' ') !== -1)
                    event.returnValue = false;
            }
            if (n===-1)
                event.returnValue= false;
        }
        function nume(){
            var numeros = "1234567890";
            var x = event.keyCode;
            var numero = String.fromCharCode(x);
            var n = numeros.indexOf(numero);
            if (n===-1)
                event.returnValue= false;
        }