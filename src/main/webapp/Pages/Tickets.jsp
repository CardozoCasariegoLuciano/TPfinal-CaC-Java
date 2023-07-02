<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="UTF-8" />
        <meta name="viewport" content="width=device-width, initial-scale=1.0" />
        <link
            rel="stylesheet"
            href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha3/dist/css/bootstrap.min.css"
            />
        <link rel="stylesheet" href="../styles/styles.css" />
        <title>Document</title>
    </head>

    <body>
        <jsp:include page="../WEB-INF/common/navbar.jsp"/>

        <main>
            <div class="TP_cardcontainer">
                <div class="TP_card">
                    <h3>Estudiante</h3>
                    <p>Tienen un descuento</p>
                    <p><b>80%</b></p>
                    <span>*presentar documentación</span>
                </div>
                <div class="TP_card">
                    <h3>Trainee</h3>
                    <p>Tienen un descuento</p>
                    <p><b>50%</b></p>
                    <span>*presentar documentación</span>
                </div>
                <div class="TP_card">
                    <h3>Junior</h3>
                    <p>Tienen un descuento</p>
                    <p><b>15%</b></p>
                    <span>*presentar documentación</span>
                </div>
            </div>
            <div class="TP_titles">
                <p>VENTA</p>
                <h2>VALOR DE TICKET $200</h2>
            </div>
            <div class="TP_form">
                <input id="nombre" placeholder="Nombre" />
                <input id="apellido" placeholder="Apellido" />

                <input id="correo" class="TP_form_correo" placeholder="Correo" />

                <label>Cantidad <input id="quantity" placeholder="Cantidad" /> </label>
                <label
                    >Categoria
                    <select id="category">
                        <option value="80">Estudiante</option>
                        <option value="50">Trainee</option>
                        <option value="15">Junior</option>
                    </select>
                </label>
                <p>Total a Pagar: <span id="price">$</span></p>
                <button id="delete_button" class="TP_form_button">Borrar</button>
                <button id="total_button" class="TP_form_button">Resumen</button>
            </div>
        </main>

        <jsp:include page="../WEB-INF/common/footer.jsp"/>

        <script src="../JS/Tickets.js"></script>
    </body>
</html>

