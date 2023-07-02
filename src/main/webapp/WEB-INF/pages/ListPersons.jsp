<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

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
        <title>Oradores</title>
    </head>
    <body>
        <jsp:include page="../common/navbar.jsp"/>

        <main>
            <h3>Oradores registrados</h3>
            <p>cantidad: ${oradores.size()}</p>

            <c:if test="${oradores.size() == 0}">
                <p>Aun no hay oradores cargados</p>
            </c:if>

            <c:if test="${oradores.size() > 0}">
                <table class="table table-striped">
                    <thead>
                        <tr>
                            <th scope="col">Nombre</th>
                            <th scope="col">Apellido</th>
                            <th scope="col">Tema</th>
                        </tr>
                    </thead>
                    <tbody>
                        <c:forEach items="${oradores}" var="o">
                            <tr>
                                <td>${o.nombre}</td>
                                <td>${o.apellido}</td>
                                <td>${o.tema}</td>
                                    <td>
                                        <form action="borrarOrador" method="post">
                                            <input type="hidden" name="id" value="${o.id}">
                                            <input type="submit" value="Eliminar">
                                        </form>
                                    </td>
                                    <td>
                                        <form action="editarOrador" method="post">
                                            <input type="hidden" name="id" value="${o.id}">
                                            <input type="hidden" name="nombre" value="${o.nombre}">
                                            <input type="hidden" name="apellido" value="${o.apellido}">
                                            <input type="hidden" name="tema" value="${o.tema}">
                                            <input type="hidden" name="isForm" value="false">
                                            <input type="submit" value="Editar">
                                        </form>
                                    </td>
                            </tr>
                        </c:forEach>
                    </tbody>
                </table>
            </c:if>

        </main>

        <jsp:include page="../common/footer.jsp"/>
    </body>
</html>
