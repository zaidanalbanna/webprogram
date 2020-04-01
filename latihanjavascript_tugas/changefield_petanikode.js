$("#benih").on("change", function(){

//ambil nilai
var lama = $("#benih option:selected").attr("lama");
var berat = $("#benih option:selected").attr("berat");
var harga = $("#benih option:selected").attr("harga");

//pindahkan value ke input
$("#lamatanam").val(lama);
$("#berat").val(berat);
$("#harga").val(harga);

});