<nav class="navbar navbar-expand-lg navbar-dark bg-dark">
    <div class="container">
        <a class="navbar-brand text-white" href="<%= request.getContextPath()%>">
            <img
                height="70"
                src="<%= request.getContextPath()%>/assets/codoacodo.png"
                alt="CodoAcodoLogo"
                />
            Conf BsAs
        </a>
        <button
            class="navbar-toggler"
            type="button"
            data-bs-toggle="collapse"
            data-bs-target="#navbarNavAltMarkup"
            aria-controls="navbarNavAltMarkup"
            aria-expanded="false"
            aria-label="Toggle navigation"
            >
            <span class="navbar-toggler-icon"></span>
        </button>
        <div class="collapse navbar-collapse" id="navbarNavAltMarkup">
            <div class="navbar-nav ms-auto justify-content-end">
                <a class="nav-link text-white" href="<%= request.getContextPath()%>/#">La conferencia</a>
                <a class="nav-link text-white" href="<%= request.getContextPath()%>/#oradores">Los oradores</a>
                <a class="nav-link text-white" href="<%= request.getContextPath()%>/#lugar">El lugar y la fecha</a>
                <a class="nav-link text-white" href="<%= request.getContextPath()%>/#orador">Conviertete en orador</a>
                <a class="nav-link text-success" href="<%= request.getContextPath()%>/Pages/Tickets.jsp">Comprar tickets</a>
            </div>
        </div>
    </div>
</nav>
