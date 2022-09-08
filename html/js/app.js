const asyncWait = async(time) => new Promise(r => setTimeout(() => r(), time))

const notificationSound = new Audio("alert_anuncio.ogg")
let adRunning = false

const newAnuncio = async(icono, texto) => {
    let anuncioPlantilla = `<div class="anuncioNuevo"><i id="icon" class="${icono}"></i> <span id="texto" style="display:none;">${texto}</span></div>`
    adRunning = true

    $('.anunciosZone').append(anuncioPlantilla)
    notificationSound.play()

    await asyncWait(1500)
    $('#texto').fadeIn()
    $('#icon').addClass("fa-fade")

    await asyncWait(3000)
    $('.anuncioNuevo').addClass("anuncioFade")
    $('#texto').fadeOut()

    await asyncWait(1500)
    $('.anuncioNuevo').fadeOut()
    $('.anuncioNuevo').remove()
    adRunning = false
}

window.addEventListener('message', function (event) {
    if (!event.data.anuncio) return

    if (!adRunning)
        return newAnuncio(event.data.job, event.data.texto)
})