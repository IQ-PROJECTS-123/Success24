<%@ Page Title="" Language="C#" MasterPageFile="~/24.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="Success24v2.Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
     <title>Success24</title>
    <style type="text/css">
        .bg-breadcrumb {
            background: linear-gradient(rgba(242, 139, 0, 0.2), rgba(242, 139, 0, 0.3)), url(img/iq-india1.jpg) !important;
        }

        .counter-facts {
            background: linear-gradient(rgba(255, 255, 255, .8), rgba(255, 255, 255, 0.7)), url(img/iq-india3.jpg);
        }
        .iheader img {
            object-fit: fill !important;
        }

        /* 🔥 Added for equal height course cards */
        .event-item {
            display: flex;
            flex-direction: column;
            height: 100%;
        }
        .event-item .p-4 {
            flex-grow: 1;
            display: flex;
            flex-direction: column;
        }
        .event-item .p-4 a.btn {
            margin-top: auto; /* button bottom me */
        }
    </style>
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <!-- Carousel Start -->
    <div class="header-carousel owl-carousel">
        <div class="header-carousel-item iheader">
            <img src="img/pooja2.jpeg" class="img-fluid w-80" alt="Image">
            <div class="carousel-caption">
                <div class="carousel-caption-content p-3" style="max-width: 900px;">
                    <h4 class="text-secondary text-uppercase sub-title fw-bold mb-4" style="letter-spacing: 3px;">सफलता के लिए एक कदम</h4>
                    <h1 class="display-1 text-capitalize text-white mb-4">कौशल भारत कुशल भारत</h1>
                    <p class="fs-5">
                        आपकी बड़ी सफलता के लिए एक कदम। शून्य निवेश और सफलता साझा मॉडल। कौन कहता है कि बिना पैसे के आप सफल नहीं होंगे। सफलता के लिए केवल जुनून की आवश्यकता होती है। औसत वेतन नौ से दस लाख।
                    </p>
                </div>
            </div>
        </div>

        <div class="header-carousel-item">
            <img src="img/iq-india3.jpg" class="img-fluid w-100" alt="Image">
            <div class="carousel-caption">
                <div class="carousel-caption-content p-3" style="max-width: 900px;">
                    <h4 class="text-secondary text-uppercase sub-title fw-bold mb-4" style="letter-spacing: 3px;">Let's navigate success together</h4>
                    <h1 class="display-1 text-capitalize text-white mb-4">Once A Professional, Is Always A Success</h1>
                    <p class="fs-5">
                        Lorem Ipsum is simply dummy text of the printing and typesetting industry.
                    </p>
                </div>
            </div>
        </div>

        <div class="header-carousel-item">
            <img src="img/iq-india1.jpg" class="img-fluid1 w-1001" alt="Image">
            <div class="carousel-caption">
                <div class="carousel-caption-content p-3" style="max-width: 900px;">
                    <h4 class="text-secondary text-uppercase sub-title fw-bold mb-4" style="letter-spacing: 3px;">Let's Dance</h4>
                    <h1 class="display-1 text-capitalize text-white mb-4">Once A Dancer, Is Always A Dance</h1>
                    <p class="fs-5">
                        Lorem Ipsum has been the industry's standard dummy text ever since the 1500s.
                    </p>
                </div>
            </div>
        </div>
    </div>
    <!-- Carousel End -->

    <!-- Counter Facts Start -->
    <div class="container-fluid counter-facts py-5">
        <div class="container">
            <div class="row">
                <div class="col-12 col-sm-6 col-md-6 col-xl-3">
                    <div class="counter">
                        <div class="counter-icon w-100 d-flex align-items-center justify-content-center">
                            <h3>Total Success</h3>
                        </div>
                        <div class="counter-content d-flex align-items-center justify-content-center mt-4">
                            <span class="counter-value"><asp:Literal runat="server" ID="_LiteralSuccess"></asp:Literal></span>
                            <h4 class="text-secondary mb-0" style="font-weight: 600; font-size: 25px;">+</h4>
                        </div>
                    </div>
                </div>
                <div class="col-12 col-sm-6 col-md-6 col-xl-3">
                    <div class="counter">
                        <div class="counter-icon w-100 d-flex align-items-center justify-content-center">
                            <h3>Best Instructor</h3>
                        </div>
                        <div class="counter-content d-flex align-items-center justify-content-center mt-4">
                            <span class="counter-value">10</span>
                            <h4 class="text-secondary mb-0" style="font-weight: 600; font-size: 25px;">+</h4>
                        </div>
                    </div>
                </div>
                <div class="col-12 col-sm-6 col-md-6 col-xl-3">
                    <div class="counter">
                        <div class="counter-icon w-100 d-flex align-items-center justify-content-center">
                            <h3>Total Brunch</h3>
                        </div>
                        <div class="counter-content d-flex align-items-center justify-content-center mt-4">
                            <span class="counter-value"><asp:Literal runat="server" ID="_LiteralBatch"></asp:Literal></span>
                            <h4 class="text-secondary mb-0" style="font-weight: 600; font-size: 25px;">+</h4>
                        </div>
                    </div>
                </div>
                <div class="col-12 col-sm-6 col-md-6 col-xl-3">
                    <div class="counter">
                        <div class="counter-icon w-100 d-flex align-items-center justify-content-center">
                            <h3>Total Practitioner</h3>
                        </div>
                        <div class="counter-content d-flex align-items-center justify-content-center mt-4">
                            <span class="counter-value"><asp:Literal runat="server" ID="_LiteralPrac"></asp:Literal></span>
                            <h4 class="text-secondary mb-0" style="font-weight: 600; font-size: 25px;">+</h4>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>

    <!-- Events Start -->
    <div class="container-fluid events py-5">
        <div class="container py-5">
            <div class="pb-5">
                <div class="row g-4 align-items-end">
                    <div class="col-xl-8">
                        <h4 class="text-secondary sub-title fw-bold">Programs</h4>
                        <h1 class="display-2 mb-0">Upcoming Programs</h1>
                    </div>
                    <div class="col-xl-4 text-xl-end pb-3">
                        <a class="btn btn-primary rounded-pill text-white py-3 px-5" href="#">View All Programs</a>
                    </div>
                </div>
            </div>

          <div class="row g-4 justify-content-center">

    <!-- Card 1 -->
    <div class="col-md-6 col-lg-4">
        <div class="event-item rounded h-100">
            <div class="position-relative">
                <img src="img/ds.jpg" class="img-fluid rounded-top w-100" alt="Image">
                <div class="bg-primary text-white fw-bold rounded position-absolute p-2" style="top: 0; right: 0;">JUN 28</div>
            </div>
            <div class="border border-top-0 rounded-bottom p-4">
                <a href="#" class="h4 mb-3 d-block">Data Science Engineering</a>
                <p>The Data Science Engineering program provides in-depth training in data analysis, machine learning, artificial intelligence, and big-data technologies. Students learn Python, R, SQL, Hadoop, Spark, and advanced statistical techniques to solve real-world business problems and build intelligent data-driven solutions.</p>
                <a class="btn btn-primary rounded-pill text-white py-2 px-4" href="Register.aspx">Register Now</a>
            </div>
        </div>
    </div>

    <!-- Card 2 -->
    <div class="col-md-6 col-lg-4">
        <div class="event-item rounded h-100">
            <div class="position-relative">
                <img src="img/devops.jpeg" class="img-fluid rounded-top w-100" alt="Image">
                <div class="bg-primary text-white rounded position-absolute p-2" style="top: 0; right: 0;">JUN 30</div>
            </div>
            <div class="border rounded-bottom p-4">
                <a href="#" class="h4 mb-3 d-block">DevOps Engineering</a>
                <p>The DevOps Engineering program delivers comprehensive knowledge of CI/CD processes, automation practices, containerization, and orchestration using Docker and Kubernetes. Students learn cloud platforms, configuration management, monitoring, and deployment strategies to optimize workflows and ensure reliable, scalable, and efficient software delivery.</p>
                <a class="btn btn-primary rounded-pill text-white py-2 px-4" href="Register.aspx">Register Now</a>
            </div>
        </div>
    </div>

    <!-- Card 3 -->
    <div class="col-md-6 col-lg-4">
        <div class="event-item rounded h-100">
            <div class="position-relative">
                <img src="img/sp.jpg" class="img-fluid rounded-top w-100" alt="Image">
                <div class="bg-primary text-white rounded position-absolute p-2" style="top: 0; right: 0;">MAY 15</div>
            </div>
            <div class="border rounded-bottom p-4">
                <a href="#" class="h4 mb-3 d-block">SharePoint Engineering</a>
                <p>The SharePoint Engineering program provides extensive training in SPFx development, Power Platform automation, enterprise workflows, and modern intranet solutions. Students learn C#, JavaScript, integration techniques, and governance practices to build scalable, secure, and collaborative digital workplace environments for organizations.</p>
                <a class="btn btn-primary rounded-pill text-white py-2 px-4" href="Register.aspx">Register Now</a>
            </div>
        </div>
    </div>

</div> <!-- END ROW 1 -->

            <br />
<!-- ========================= -->
<!-- ⭐ ROW 2 — ONLY 2 CARDS ⭐ -->
<!-- ========================= -->

<div class="row g-4 justify-content-center">

    <!-- Card 4 -->
    <div class="col-md-6 col-lg-4">
        <div class="event-item rounded h-100">
            <div class="position-relative">
                <img src="img/sdet.jpg" class="img-fluid rounded-top w-100" alt="Image">
                <div class="bg-primary text-white rounded position-absolute p-2" style="top: 0; right: 0;">APR 2</div>
            </div>
            <div class="border rounded-bottom p-4">
                <a href="#" class="h4 mb-3 d-block">Software Development Engineer in Test</a>
                <p>The Software Development Engineer in Test program offers comprehensive training in automated testing strategies, scripting, and modern QA methodologies. Students learn Selenium, API validation, CI/CD integration, performance analysis, and test architecture to ensure scalable, reliable, and high-quality software delivery.</p>
                <a class="btn btn-primary rounded-pill text-white py-2 px-4" href="Register.aspx">Register Now</a>
            </div>
        </div>
    </div>

    <!-- Card 5 -->
    <div class="col-md-6 col-lg-4">
        <div class="event-item rounded h-100">
            <div class="position-relative">
                <img src="img/cyber.jpg" class="img-fluid rounded-top w-100" alt="Cyber Security Image">
                <div class="bg-primary text-white rounded position-absolute p-2" style="top: 0; right: 0;">MAY 15</div>
            </div>
            <div class="border rounded-bottom p-4">
                <a href="#" class="h4 mb-3 d-block">Cyber Security</a>
                <p>The Cyber Security program provides deep expertise in ethical hacking, network defense, risk assessment, security monitoring, and incident response. Students learn threat analysis, vulnerability management, encryption concepts, and practical defense strategies to protect digital infrastructures and ensure robust organizational security against evolving cyber threats.</p>
                <a class="btn btn-primary rounded-pill text-white py-2 px-4" href="Register.aspx">Register Now</a>
            </div>
        </div>
    </div>

</div> <!-- END ROW 2 -->

        </div>
    </div>
    <!-- Events End -->

</asp:Content>
