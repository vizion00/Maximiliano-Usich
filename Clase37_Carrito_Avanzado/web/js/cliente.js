class Compra{
        static consultar() {
        const traer = async() => {
            let respuesta = await fetch("ProductosServer", {method: 'GET'});
            let datos = JSON.parse(await respuesta.text());
            let plantilla = 
                    `
                      ${ datos.map(
                           dato =>
                        `
                   <article>
                          <h4>${dato.nombre}</h4>
                          ${dato.precio}
                          <img src="${dato.imagen}" />
                          <button>${dato.id}</button>
                   </article>
                        `
                        ).join('') 
                      }
                    `;
            document.querySelector('#panelResultados').innerHTML = plantilla;
        };
        traer()
                .catch(ex => {
                    document.querySelector("#panelMensajes").innerHTML = 'ERROR: ' + ex.message;
                });
    }

}
Compra.consultar();