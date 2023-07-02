const nombre = document.getElementById("nombre");
const apellido = document.getElementById("apellido");
const correo = document.getElementById("correo");
const cantidad = document.getElementById("quantity");
const categoria = document.getElementById("category");
const precio = document.getElementById("price");
const borrarBTN = document.getElementById("delete_button");
const totalBTN = document.getElementById("total_button");

const PRECIO_BASE = 200;
const NUMERO_REGEX = /^[0-9]+$/;

borrarBTN.addEventListener("click", () => {
  precio.innerHTML = "$";
  cantidad.value = "";
  nombre.value = "";
  apellido.value = "";
  correo.value = "";
});

totalBTN.addEventListener("click", () => {
  const cantidadSeleccionada = cantidad.value;
  const porcentajeCategoria = Number(categoria.value);

  if (!NUMERO_REGEX.test(cantidadSeleccionada)) {
    precio.innerHTML = "Ingrese un numero valido";
    return;
  }

  const montoAPagar = PRECIO_BASE * cantidadSeleccionada;
  const descuento = (montoAPagar * porcentajeCategoria) / 100;

  const finalprice = montoAPagar - descuento;
  precio.innerHTML = finalprice + "$";
});
