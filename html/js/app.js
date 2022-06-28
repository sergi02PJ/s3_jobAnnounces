var persistentNotifs = {};
var colaNotifs=[];
var mostrando=false;

var soundNoti = new Audio("alert_anuncio.ogg");
var busy = false


window.addEventListener('message', function (event) {
    if(event.data.anuncio) {
        if(event.data.admin) {
            newAdminAnuncio(texto)
        } else {
            if(busy == false)
                newAnuncio(event.data.job, event.data.texto)
        }
    }
});

function newAnuncio(icono, texto) {
    let anuncioPlantilla = `<div class="anuncioNuevo"><i id="icon" class="${icono}"></i> <span id="texto" style="display:none;">${texto}</span></div>`
    busy = true

    $('.anunciosZone').append(anuncioPlantilla)
    soundNoti.play()
    setTimeout(() => {$('#texto').fadeIn(); $('#icon').addClass("fa-fade")}, 1500)
    setTimeout(() => {$('.anuncioNuevo').addClass("anuncioFade"); $('#texto').fadeOut();}, 4500)
    setTimeout(() => {$('.anuncioNuevo').fadeOut(); $('.anuncioNuevo').remove(); busy = false;}, 6000)
}
