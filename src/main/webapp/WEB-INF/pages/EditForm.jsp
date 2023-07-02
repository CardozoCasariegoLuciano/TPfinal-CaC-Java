<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="UTF-8" />
        <meta name="viewport" content="width=device-width, initial-scale=1.0" />
        <link
            rel="stylesheet"
            href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha3/dist/css/bootstrap.min.css"
            />
        <link rel="stylesheet" href="<%= request.getContextPath()%>/styles/listarOradores.css" />
        <title>Editar orador</title>
    </head>
    <body>
        <jsp:include page="../common/navbar.jsp"/>

        <main>

            <form action="editarOrador" method="post" class="container my-4" style="max-width: 900px;">
                <div class="mb-3">
                    <h3>Ediar Orador</h3>
                </div>
                <div class="input-group gap-5 mb-3">
                    <input type="text" class="form-control" value="${nombre}" name="nombre" placeholder="Nombre"/>
                    <input type="text" class="form-control" value="${apellido}" name="apellido" placeholder="Apellido"/>
                    <input type="hidden" name="id" value="${id}">
                    <input type="hidden" name="isForm" value="true">
                </div>
                <div class="input-group">
                    <textarea class="form-control" style="height:150px" name="tema" placeholder="Sobre que quieres hablar?">${tema}</textarea>
                </div>
                <div class="mt-1 mb-1">
                    <p class="text-secondary">Recuerda incluir un titulo para tu charla</p>
                </div>
                <div class="d-grid gap-2">
                    <button class="btn btn-success text-white" type="submit">Enviar</button>
                </div>
            </form>
        </main>

        <jsp:include page="../common/footer.jsp"/>
    </body>
</html>
