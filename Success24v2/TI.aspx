<%@ Page Title="" Language="C#" MasterPageFile="~/24.Master" AutoEventWireup="true" CodeBehind="TI.aspx.cs" Inherits="Success24v2.TI" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
       <style>
         /* Header Section  */
        .team-header {
            background: linear-gradient(135deg, #0040ff, #8123ff);
            color: white;
            padding: 70px 20px;
            border-radius: 0 0 40px 40px;
        }

        /* Card Section */
        .team-card {
            transition: .4s;
            border: none;
            border-radius: 18px;
            box-shadow: 0 0 8px rgba(0, 0, 0, .1);
        }
        .team-card:hover {
            transform: translateY(-8px);
            box-shadow: 0 0 18px rgba(0, 0, 0, .25);
        }
        .team-card img {
            height: 260px;
            width: 100%;
            object-fit: cover;
            border-radius: 18px 18px 0 0;
        }
        .social-icons a {
            margin-right: 10px;
            color: #0d6efd;
            font-size: 18px;
        }
        .social-icons a:hover {
            color: #063a97;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <!-- Header Section -->
    <div class="team-header text-center">
        <h1 class="fw-bold display-5 mb-3">Our Expert Team & Instructors</h1>
        <p class="lead mx-auto" style="max-width: 850px;">
            Success24 में आपको Industry-level Experts द्वारा training दी जाती है जो IT Companies में काम कर चुके हैं  
            और पूरी तरह practical approach के साथ सिखाते हैं।  
            💡 हमारा लक्ष्य — हर student को Job-Ready बनाना।
        </p>
    </div>

    <!-- Team Cards -->
    <div class="container py-5">
        <div class="row g-4">

            <!-- Member 1 -->
            <div class="col-md-6 col-lg-4 col-xl-3">
                <div class="card team-card h-100">
                    <img src="img/team1.jpg" alt="">
                    <div class="card-body">
                        <h5 class="fw-bold">Ravi Kumar</h5>
                        <p class="text-primary mb-1">Senior Data Science Instructor</p>
                        <p>AI, Machine Learning & Big Data में 10+ Years of Experience, 50+ Real Projects सिखाए।</p>
                        <div class="social-icons">
                            <a href="#"><i class="fab fa-facebook"></i></a>
                            <a href="#"><i class="fab fa-linkedin"></i></a>
                            <a href="#"><i class="fab fa-github"></i></a>
                        </div>
                    </div>
                </div>
            </div>

            <!-- Member 2 -->
            <div class="col-md-6 col-lg-4 col-xl-3">
                <div class="card team-card h-100">
                    <img src="img/team2.jpg" alt="">
                    <div class="card-body">
                        <h5 class="fw-bold">Priya Sharma</h5>
                        <p class="text-primary mb-1">DevOps & Cloud Architect</p>
                        <p>Certified AWS/Azure Specialist | CI/CD Pipelines, Kubernetes & Automation Expert.</p>
                        <div class="social-icons">
                            <a href="#"><i class="fab fa-facebook"></i></a>
                            <a href="#"><i class="fab fa-linkedin"></i></a>
                            <a href="#"><i class="fab fa-instagram"></i></a>
                        </div>
                    </div>
                </div>
            </div>

            <!-- Member 3 -->
            <div class="col-md-6 col-lg-4 col-xl-3">
                <div class="card team-card h-100">
                    <img src="img/team3.jpg" alt="">
                    <div class="card-body">
                        <h5 class="fw-bold">Mohit Verma</h5>
                        <p class="text-primary mb-1">SharePoint & Microsoft 365 Trainer</p>
                        <p>Workflow Automation, Power Automate & Office 365 Deployment Specialist.</p>
                        <div class="social-icons">
                            <a href="#"><i class="fab fa-linkedin"></i></a>
                            <a href="#"><i class="fab fa-twitter"></i></a>
                            <a href="#"><i class="fab fa-github"></i></a>
                        </div>
                    </div>
                </div>
            </div>

            <!-- Member 4 -->
            <div class="col-md-6 col-lg-4 col-xl-3">
                <div class="card team-card h-100">
                    <img src="img/team4.jpg" alt="">
                    <div class="card-body">
                        <h5 class="fw-bold">Sonal Gupta</h5>
                        <p class="text-primary mb-1">SDET / Automation QA Trainer</p>
                        <p>Selenium, Java, Rest API, Jenkins & Performance Testing में hands-on corporate experience.</p>
                        <div class="social-icons">
                            <a href="#"><i class="fab fa-facebook"></i></a>
                            <a href="#"><i class="fab fa-linkedin"></i></a>
                            <a href="#"><i class="fab fa-instagram"></i></a>
                        </div>
                    </div>
                </div>
            </div>

        </div>
    </div>

    <!-- Bootstrap JS -->
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.bundle.min.js"></script>
</asp:Content>
