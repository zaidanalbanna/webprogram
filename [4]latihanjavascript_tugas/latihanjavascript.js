function identitas() {
    var tes = document.getElementById("nim").value;
              document.getElementById("nama").value = tes;
}

function sum() {
    var nilaitugas = document.getElementById('ntgs').value;
    var nilaiuts = document.getElementById('nuts').value;
    var nilaiuas = document.getElementById('nuas').value;
    var result = parseFloat(nilaitugas/100)*(40) + parseFloat(nilaiuts/100)*(30) + parseFloat(nilaiuas/100)*(30);

      if (!isNaN(result)) {
         document.getElementById('nakhir').value = result;
      }      
}

function xsubnim() {
    var ennim = document.getElementById("nim").value;
                document.getElementById("subnim").value = ennim;
}

function xsubnama() {
    var ennama = document.getElementById("nama").value;
                 document.getElementById("subnama").value = ennama;
}