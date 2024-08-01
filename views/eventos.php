<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="utf-8">
    <title>GoKarts</title>
    <meta content="width=device-width, initial-scale=1.0" name="viewport">
    <meta content="" name="keywords">
    <meta content="" name="description">


    <!-- Favicon -->
    <link href="img/favicon.ico" rel="icon">

    <!-- Google Web Fonts -->
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link href="https://fonts.googleapis.com/css2?family=Open+Sans:wght@400;500&family=Lora:wght@600;700&display=swap" rel="stylesheet">

    <!-- Icon Font Stylesheet -->
    <link href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.10.0/css/all.min.css" rel="stylesheet">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.4.1/font/bootstrap-icons.css" rel="stylesheet">

    <!-- Libraries Stylesheet -->
    <link href="../lib/animate/animate.min.css" rel="stylesheet">
    <link href="../lib/owlcarousel/assets/owl.carousel.min.css" rel="stylesheet">

    <!-- Customized Bootstrap Stylesheet -->
    <link href="./assets/css/bootstrap.min.css" rel="stylesheet">

    <!-- Template Stylesheet -->
    <link href="./assets/css/style.css" rel="stylesheet">
</head>

<body>


    <!-- Spinner Start -->
    <div id="spinner" class="show bg-white position-fixed translate-middle w-100 vh-100 top-50 start-50 d-flex align-items-center justify-content-center">
        <div class="spinner-border text-primary" role="status"></div>
    </div>
    <!-- Spinner End -->


    <!-- Navbar Start -->
    <div class="container-fluid fixed-top px-0 wow fadeIn" data-wow-delay="0.1s">
        <div class="top-bar row gx-0 align-items-center d-none d-lg-flex">
            <div class="col-lg-6 px-5 text-start">
                <small><i class="fa fa-map-marker-alt me-2"></i>200 m este, Centro Comercial Milla de Oro Plaza</small>
                <small class="ms-4"><i class="fa fa-envelope me-2"></i>info@GoKarts.com</small>
            </div>

            <div class="col-lg-6 px-5 text-end">
                <small>Siguenos en:</small>
                <a class="text-body ms-3" href=""><i class="fab fa-facebook-f"></i></a>
                <a class="text-body ms-3" href=""><i class="fab fa-instagram"></i></a>
            </div>
        </div>

        <nav class="navbar navbar-expand-lg navbar-light py-lg-0 px-lg-5 wow fadeIn" data-wow-delay="0.1s">
            <a href="index.html" class="navbar-brand ms-4 ms-lg-0">
                <h1 class="fw-bold text-primary mb-4">G<span class="text-secondary">o</span>Ka<span class="text-secondary">rts</span></h1>
            </a>
            <button type="button" class="navbar-toggler me-4" data-bs-toggle="collapse" data-bs-target="#navbarCollapse">
                <span class="navbar-toggler-icon"></span>
            </button>
            <div class="collapse navbar-collapse" id="navbarCollapse">
                <div class="navbar-nav ms-auto p-4 p-lg-0">
                    <a href="index.php" class="nav-item nav-link active">Inicio</a>
                    <a href="nosotros.php" class="nav-item nav-link">Nosotros</a>
                    <a href="restaurante.php" class="nav-item nav-link">Restaurante</a>
                    <a href="reserva.php" class="nav-item nav-link">Reserva</a>
                    <a href="eventos.php" class="nav-item nav-link">Eventos</a>
                    <a href="contactanos.php" class="nav-item nav-link">Contactanos</a>
                </div>
                <div class="d-none d-lg-flex ms-2">

                    <a class="btn-sm-square bg-white rounded-circle ms-3" href="carrito.php">
                        <small class="fa fa-shopping-bag text-body"></small>
                    </a>
                </div>
            </div>
        </nav>
    </div>
    <!-- Navbar End -->


    <!-- Carousel Start -->
    <div class="container-fluid p-0 mb-5 wow fadeIn" data-wow-delay="0.1s">
        <div id="header-carousel" class="carousel slide" data-bs-ride="carousel">
            <div class="carousel-inner">
                <div class="carousel-item active">
                    <img class="w-100" src="./assets/img/Eventos/evento1.jpg" alt="Image">
                    <div class="carousel-caption">
                        <div class="container">
                            <div class="row justify-content-start">

                            </div>
                        </div>
                    </div>
                </div>
                <div class="carousel-item">
                    <img class="w-100" src="./assets/img/Eventos/evento2.jpg" alt="Image">
                    <div class="carousel-caption">
                        <div class="container">
                            <div class="row justify-content-start">

                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <button class="carousel-control-prev" type="button" data-bs-target="#header-carousel" data-bs-slide="prev">
                <span class="carousel-control-prev-icon" aria-hidden="true"></span>
                <span class="visually-hidden">Anterior</span>
            </button>
            <button class="carousel-control-next" type="button" data-bs-target="#header-carousel" data-bs-slide="next">
                <span class="carousel-control-next-icon" aria-hidden="true"></span>
                <span class="visually-hidden">Siguiente</span>
            </button>
        </div>
    </div>
    <!-- Carousel End -->


    <!-- About Start -->
    <div class="container-xxl py-5">
        <div class="container">
            <div class="row g-5 align-items-center">
                <div class="col-lg-6 wow fadeIn" data-wow-delay="0.1s">
                    <div class="about-img position-relative overflow-hidden p-5 pe-0">
                        <img class="img-fluid w-100" src="./assets/img/Eventos/evento3.jpg">
                    </div>
                </div>
                <div class="col-lg-6 wow fadeIn" data-wow-delay="0.5s">
                    <h1 class="display-5 mb-4">Quieres cotizar un eventos con nosotros?</h1>
                    <p class="mb-4">¿Buscas un lugar emocionante para celebrar tu próximo evento? ¡GoKarts es
                        el destino perfecto! Ofrecemos una experiencia única para cumpleaños, excursiones escolares y eventos
                        corporativos. Vive la adrenalina de las carreras en un ambiente seguro y lleno de diversión.
                    </p>
                    <p><i class="fa fa-check text-primary me-3"></i><strong>Eventos de Cumpleaños:</strong> Haz que tu cumpleaños sea inolvidable con una
                        fiesta a toda velocidad. Ofrecemos paquetes personalizados que incluyen carreras de go-karts, áreas de juegos, y opciones
                        de catering para que tú y tus amigos disfruten al máximo.</p>

                    <p><i class="fa fa-check text-primary me-3"></i><strong>Excursiones Escolares:</strong> ¡Una aventura educativa y emocionante! Los estudiantes
                        pueden aprender sobre la física de las carreras y la importancia del trabajo en equipo, todo mientras se divierten en la pista.
                        Nuestros paquetes escolares están diseñados para ser tanto educativos como divertidos./p>
                    <p><i class="fa fa-check text-primary me-3"></i><strong>Eventos Corporativos:</strong> Fomenta el trabajo en equipo y la competencia amistosa en
                        tu próximo evento de empresa. Nuestros paquetes corporativos son ideales para fortalecer relaciones, realizar dinámicas de equipo
                        y, por supuesto, ¡disfrutar de un día fuera de la oficina!</p>
                    <a class="btn btn-primary rounded-pill py-3 px-5 mt-3" href="#" data-bs-toggle="modal" data-bs-target="#reservaModal">¡Reserva Ya!</a>
                </div>
            </div>
        </div>
    </div>
    <!-- About End -->

    <!-- Modal -->
    <div class="modal fade" id="reservaModal" tabindex="-1" aria-labelledby="reservaModalLabel" aria-hidden="true">
        <div class="modal-dialog">
            <div class="modal-content">
                <div class="modal-header">
                    <h5 class="modal-title" id="reservaModalLabel">Formulario de Reservación</h5>
                    <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
                </div>
                <div class="modal-body">
                    <!-- Formulario dentro del modal -->
                    <form id="reservaForm">
                        <div class="mb-3">
                            <label for="nombre" class="form-label">Nombre</label>
                            <input type="text" class="form-control" id="nombre" placeholder="Ej. Juan Pérez" required>
                        </div>
                        <div class="mb-3">
                            <label for="email" class="form-label">Correo Electrónico</label>
                            <input type="email" class="form-control" id="email" placeholder="Ej. juanperez@email.com" required>
                        </div>
                        <div class="mb-3">
                            <label for="telefono" class="form-label">Teléfono</label>
                            <input type="tel" class="form-control" id="telefono" placeholder="Ej. 555-1234" required>
                            <small id="telefonoError" class="text-danger" style="display: none;">Solo se aceptan números.</small>
                        </div>
                        <div class="mb-3">
                            <label for="descripcion" class="form-label">Descripción o Mensaje</label>
                            <textarea class="form-control" id="descripcion" placeholder="Escribe aquí los detalles de tu reserva o cualquier mensaje adicional..." rows="4" required></textarea>
                            <small id="descripcionError" class="text-danger" style="display: none;">Por favor, ingresa una descripción.</small>
                        </div>
                        <div class="mb-3">
                            <label for="tipoEvento" class="form-label">Tipo de Evento</label>
                            <select class="form-select" id="tipoEvento" required>
                                <option value="cumpleanos">Cumpleaños</option>
                                <option value="escolares">Escolares</option>
                                <option value="empresas">Empresas</option>
                            </select>
                        </div>
                        <button type="submit" class="btn btn-primary">Enviar</button>
                    </form>
                </div>
            </div>
        </div>
    </div>

    <!-- Modal de Confirmación -->
    <div class="modal fade" id="confirmacionModal" tabindex="-1" aria-labelledby="confirmacionModalLabel" aria-hidden="true">
        <div class="modal-dialog">
            <div class="modal-content">
                <div class="modal-header">
                    <h5 class="modal-title" id="confirmacionModalLabel">Confirmación</h5>
                    <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close" onclick="refreshPage()"></button>
                </div>
                <div class="modal-body">
                    <p>¡Tu formulario ha sido enviado correctamente!</p>
                </div>
                <div class="modal-footer">
                    <button type="button" class="btn btn-primary" data-bs-dismiss="modal" onclick="refreshPage()">Cerrar</button>
                </div>
            </div>
        </div>
    </div>
    <!-- Modal End -->
tiene menú contextual


    <!-- Testimonial Start -->
    <div class="container-fluid bg-light py-6 mb-5">
        <div class="container">
            <div class="section-header text-center mx-auto mb-5 wow fadeInUp" data-wow-delay="0.1s" style="max-width: 500px;">
                <h1 class="display-5 mb-3">Mensajes de Testimonios</h1>
                <p>En GoKarts la satisfacción de nuestros clientes es nuestra máxima prioridad. Nos enorgullece
                    compartir las opiniones
                    y experiencias de quienes han disfrutado de nuestras instalaciones. Aquí te presentamos algunos de
                    los testimonios
                    de nuestros visitantes satisfechos</p>
            </div>
            <div class="owl-carousel testimonial-carousel wow fadeInUp" data-wow-delay="0.1s">
                <div class="testimonial-item position-relative bg-white p-5 mt-4">
                    <i class="fa fa-quote-left fa-3x text-primary position-absolute top-0 start-0 mt-n4 ms-5"></i>
                    <p class="mb-4">"¡El mejor lugar para celebrar un cumpleaños! Mi hijo y sus amigos se la pasaron
                        increíble en la pista de go-karts. Todo estuvo bien organizado y el personal fue súper amable.
                        Definitivamente volveremos el próximo año."</p>
                    <div class="d-flex align-items-center">
                        <div class="ms-3">
                            <h5 class="mb-1">- Carlos M.</h5>
                        </div>
                    </div>
                </div>
                <div class="testimonial-item position-relative bg-white p-5 mt-4">
                    <i class="fa fa-quote-left fa-3x text-primary position-absolute top-0 start-0 mt-n4 ms-5"></i>
                    <p class="mb-4">"Llevamos a nuestra clase de quinto grado para una excursión y fue un éxito total.
                        Los niños aprendieron sobre la física de las carreras y luego aplicaron lo que aprendieron en la pista.
                        Fue una experiencia educativa y súper divertida. ¡Lo recomiendo al 100%!"</p>
                    <div class="d-flex align-items-center">
                        <div class="ms-3">
                            <h5 class="mb-1">- María G.</h5>
                        </div>
                    </div>
                </div>
                <div class="testimonial-item position-relative bg-white p-5 mt-4">
                    <i class="fa fa-quote-left fa-3x text-primary position-absolute top-0 start-0 mt-n4 ms-5"></i>
                    <p class="mb-4">"Organizamos nuestro evento corporativo aquí y no podría haber sido mejor.
                        Las carreras de go-karts fueron una excelente manera de fomentar el trabajo en equipo y la competencia sana.
                        Todos en la oficina aún hablan de lo bien que lo pasaron."</p>
                    <div class="d-flex align-items-center">
                        <div class="ms-3">
                            <h5 class="mb-1">- Andrés R.</h5>
                        </div>
                    </div>
                </div>
                <div class="testimonial-item position-relative bg-white p-5 mt-4">
                    <i class="fa fa-quote-left fa-3x text-primary position-absolute top-0 start-0 mt-n4 ms-5"></i>
                    <p class="mb-4">"Fuimos con mi equipo de trabajo para un día de integración y la experiencia superó nuestras expectativas.
                        Las dinámicas en la pista realmente ayudaron a fortalecer nuestras relaciones. ¡Volveremos seguro!"</p>
                    <div class="d-flex align-items-center">
                        <div class="ms-3">
                            <h5 class="mb-1">- Luis A.</h5>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <!-- Testimonial End -->



    <!-- Footer Start -->
    <div class="container-fluid bg-dark footer mt-5 pt-5 wow fadeIn" data-wow-delay="0.1s">
        <div class="container py-5">
            <div class="row g-5">
                <div class="col-lg-3 col-md-6">
                    <h1 class="fw-bold text-primary mb-4">G<span class="text-secondary">o</span>Ka<span class="text-secondary">rts</span></h1>
                    <p>GoKarts nació del amor por las carreras y la adrenalina. Hemos crecido hasta convertirnos en el
                        principal destino de go karts en San Jose, Costa Rica</p>
                    <div class="d-flex pt-2">
                        <a class="btn btn-square btn-outline-light rounded-circle me-1" href=""><i class="fab fa-facebook-f"></i></a>
                        <a class="btn btn-square btn-outline-light rounded-circle me-1" href="" target="_blank">
                            <i class="fab fa-instagram"></i>
                        </a>


                    </div>
                </div>
                <div class="col-lg-3 col-md-6">
                    <h4 class="text-light mb-4">Ubicacion</h4>
                    <p><i class="fa fa-map-marker-alt me-3"></i>200 m este, Centro Comercial Milla de Oro Plaza</p>
                    <p><i class="fa fa-phone-alt me-3"></i>2524-0739</p>
                    <p><i class="fa fa-envelope me-3"></i>info@GoKarts.com</p>
                </div>
                <div class="col-lg-3 col-md-6">
                    <h4 class="text-light mb-4">Enlaces Rápidos</h4>
                    <a class="btn btn-link" href="nosotros.html">Nosotros</a>
                    <a class="btn btn-link" href="contactanos.html">Contactanos</a>
                    <a class="btn btn-link" href="">Terminos y Condiciones</a>
                    <a class="btn btn-link" href="">Soporte</a>
                </div>
            </div>
        </div>
        <div class="container-fluid copyright">
            <div class="container">
                <div class="row">
                    <div class="col-md-6 text-center text-md-start mb-3 mb-md-0">
                        &copy; <a href="#">GoKarts</a>, Todos los derechos reservados.
                    </div>
                </div>
            </div>
        </div>
    </div>
    <!-- Footer End -->

   <!-- Back to Top -->
   <a href="#" class="btn btn-lg btn-primary btn-lg-square rounded-circle back-to-top"><i class="bi bi-arrow-up"></i></a>


<!-- JavaScript Libraries -->
<script src="https://code.jquery.com/jquery-3.4.1.min.js"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0/dist/js/bootstrap.bundle.min.js"></script>
<script src="../lib/wow/wow.min.js"></script>
<script src="../lib/easing/easing.min.js"></script>
<script src="../lib/waypoints/waypoints.min.js"></script>
<script src="../lib/owlcarousel/owl.carousel.min.js"></script>

<!-- Template Javascript -->
<script src="./assets/js/main.js"></script>
<script src="./assets/js/scriptEventos.js"></script>
    
</body>

</html>