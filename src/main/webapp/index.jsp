<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="UTF-8" />
        <meta name="viewport" content="width=device-width, initial-scale=0.8" />
        <link
            rel="stylesheet"
            href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha3/dist/css/bootstrap.min.css"
            />
        <link rel="stylesheet" href="./styles/styles.css" />
        <title>Document</title>
    </head>

    <body>
        <jsp:include page="./WEB-INF/common/navbar.jsp"/>

        <div class="card text-bg-dark">
            <div class="bg-dark">
                <img
                    src="./assets/hawaii.jpg"
                    class="card-img opacity-50 border-none"
                    alt="hawaii"
                    />
            </div>
            <div
                class="card-img-overlay d-flex flex-column justify-content-center text-end align-items-end m-5"
                >
                <div class="TP_main_image--content fs-5">
                    <h5 class="card-title fs-2">Conf BsAs</h5>
                    <p class="card-text">
                        Lorem ipsum dolor sit amet consectetur adipisicing elit. Facere in
                        ab sit voluptates, nisi reiciendis tempora! Quaerat reiciendis
                        voluptatem, quibusdam quos placeat illo magnam! Accusamus, similique
                        impedit? Impedit, quasi eum.
                    </p>
                    <div>
                        <button type="button" class="btn btn-outline-light">
                            Quiero ser orador
                        </button>
                        <button type="button" class="btn btn-success">
                            Comprar tickets
                        </button>
                    </div>
                </div>
            </div>
        </div>

        <div class="mt-3 container" id="oradores">
            <p class="text-center fs-6 mb-1">CONOCE A LOS</p>
            <h4 class="text-center fs-2 mb-3">ORADORES</h4>

            <div class="row gap-4 justify-content-center">
                <div class="card border-0" style="width: 18rem">
                    <img src="./assets/steve.jpg" class="card-img-top" alt="steve" />
                    <div class="card-body">
                        <span class="badge text-bg-warning">Javascript</span>
                        <span class="badge text-bg-info text-light">React</span>
                        <h4 class="mt-2">Steve jobs</h4>
                        <small class="card-text fw-light">
                            Lorem ipsum dolor sit amet consectetur adipisicing elit. Qui
                            beatae nulla doloremque blanditiis atque laboriosam ex aliquid
                            quidem esse provident quam ab veniam, excepturi ullam adipisci,
                            magni voluptatem? Eligendi, totam.
                        </small>
                    </div>
                </div>

                <div class="card border-0" style="width: 18rem">
                    <img src="./assets/bill.jpg" class="card-img-top" alt="bill" />
                    <div class="card-body">
                        <span class="badge text-bg-warning">Javascript</span>
                        <span class="badge text-bg-info text-light">React</span>
                        <h4 class="mt-2">Bill Gates</h4>
                        <small class="card-text fw-light">
                            Lorem ipsum dolor sit amet consectetur adipisicing elit. Qui
                            beatae nulla doloremque blanditiis atque laboriosam ex aliquid
                            quidem esse provident quam ab veniam, excepturi ullam adipisci,
                            magni voluptatem? Eligendi, totam.
                        </small>
                    </div>
                </div>

                <div class="card border-0" style="width: 18rem">
                    <img src="./assets/ada.jpeg" class="card-img-top" alt="ada" />
                    <div class="card-body">
                        <span class="badge text-bg-secondary">Negocios</span>
                        <span class="badge text-bg-danger text-light">Startups</span>
                        <h4 class="mt-2">Ada Lovelace</h4>
                        <small class="card-text fw-light">
                            Lorem ipsum dolor sit amet consectetur adipisicing elit. Qui
                            beatae nulla doloremque blanditiis atque laboriosam ex aliquid
                            quidem esse provident quam ab veniam, excepturi ullam adipisci,
                            magni voluptatem? Eligendi, totam.
                        </small>
                    </div>
                </div>
            </div>
        </div>

        <div class="card border-0 mt-5" id="lugar">
            <div class="row g-0">
                <div class="col-md-6">
                    <img src="assets/honolulu.jpg" class="img-fluid rounded-start" alt="honolulu">
                </div>
                <div class="col-md-6 bg-dark text-light border-start">
                    <div class="card-body">
                        <h2 class="card-title">Bs As - Octubre</h2>
                        <p class="card-text">Lorem ipsum dolor sit, amet consectetur adipisicing elit. Cum, eligendi. Cum quam fugiat ipsa quod expedita eaque illum dolorem reprehenderit veniam perspiciatis. Consequatur consequuntur expedita odit ea hic. Eveniet saepe laborum magnam ad corrupti modi? Repellendus temporibus, quas, delectus magni sed ut alias optio quae cumque magnam exercitationem assumenda fugiat error accusamus veniam nobis! Expedita adipisci eos neque. Minus, id.</p>
                        <button type="button" class="btn btn-outline-light">
                            Conocé más
                        </button>
                    </div>
                </div>
            </div>
        </div>

        <form action="crearOrador" method="post" class="container my-4" style="max-width: 900px;" id="orador">
            <div class="mt-3 text-center text-black">
                <p class="mb-1">Conviértete en un orador</p>
                <h2 class="mb-1">ORADORES</h2>
                <p class="mb-2">
                    Anótate como orador para dar una charla ignite. Cuéntanos de qué quieres hablar!
                </p>
            </div>
            <div class="input-group gap-5 mb-3">
                <input type="text" class="form-control" name="nombre" placeholder="Nombre"/>
                <input type="text" class="form-control" name="apellido" placeholder="Apellido"/>
            </div>
            <div class="input-group">
                <textarea class="form-control" style="height:150px" name="tema" placeholder="Sobre qué quieres hablar?"></textarea>
            </div>
            <div class="mt-1 mb-1">
                <p class="text-secondary">Recuerda incluir un tí­tulo para tu charla</p>
            </div>
            <div class="d-grid gap-2">
                <button class="btn btn-success text-white" type="submit">Enviar</button>
                <a class="nav-link verOradores" href="<%= request.getContextPath()%>/listarOradores">Ver oradores ya inscriptos</a>
            </div>

        </form>

        <jsp:include page="./WEB-INF/common/footer.jsp"/>
    </body>
</script>
