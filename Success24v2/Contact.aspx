<%@ Page Title="" Language="C#" MasterPageFile="~/24.Master" AutoEventWireup="true" CodeBehind="Contact.aspx.cs" Inherits="Success24v2.Contact" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <!-- Banner Start -->
<%--<div class="container-fluid bg-secondary wow zoomInDown" data-wow-delay="0.1s">
    <div class="container">
        <div class="d-flex flex-column flex-lg-row align-items-center justify-content-center text-center p-5">
            <h1 class="me-4"><span class="fw-normal">Join us today for </span><span> your Success</span></h1>
            <a href="#" class="text-white fw-bold fs-2"> <i class="fa fa-phone me-1"></i> +91-9555580458</a>
        </div>
    </div>
</div>--%>
<!-- Banner End -->
          <!-- Header Start -->
 <%-- <div class="container-fluid bg-breadcrumb">
      <div class="container text-center py-5" style="max-width: 900px;">
          <h3 class="text-primary display-3 mb-4 wow fadeInDown" data-wow-delay="0.1s">Success Stories</h3>
      </div>
  </div>--%>
  <!-- Header End -->
 <!-- Banner End -->
    <div class="h-50 w-100 fadeInDown">
        <img src="img/iq-india3.jpg" />
    </div>
   
        <!-- Contact Start -->
        <div class="container-fluid contact py-5">
            <div class="container py-5">
                <div class="pb-5">
                    <h1 class="display-2  mb-0 wow fadeInUp"  data-wow-delay="0.3s"><center>Get In Touch</center></h1>
                </div>
                <div class="bg-light rounded p-4 pb-0">
                    <div class="row g-5 align-items-center">
                        <div class="col-lg-6 wow fadeInLeft" data-wow-delay="0.1s">
                            <h2 class="display-5 mb-2">Form</h2>
                            <form>
                                <div class="row g-3">
                                    <div class="col-lg-12 col-xl-6">
                                        <div class="form-floating">
                                            <input type="text" class="form-control" id="name" placeholder="Your Name">
                                            <label for="name">Your Name</label>
                                        </div>
                                    </div>
                                    <div class="col-lg-12 col-xl-6">
                                        <div class="form-floating">
                                            <input type="email" class="form-control" id="email" placeholder="Your Email">
                                            <label for="email">Your Email</label>
                                        </div>
                                    </div>
                                    <div class="col-lg-12 col-xl-6">
                                        <div class="form-floating">
                                            <input type="number" class="form-control" id="phone" placeholder="Phone">
                                            <label for="phone">Your Phone</label>
                                        </div>
                                    </div>
                                    <div class="col-lg-12 col-xl-6">
                                        <div class="form-floating">
                                            <input type="text" class="form-control" id="project" placeholder="Project">
                                            <label for="project">Your Project</label>
                                        </div>
                                    </div>
                                    <div class="col-12">
                                        <div class="form-floating">
                                            <input type="text" class="form-control" id="subject" placeholder="Subject">
                                            <label for="subject">Subject</label>
                                        </div>
                                    </div>
                                    <div class="col-12">
                                        <div class="form-floating">
                                            <textarea class="form-control" placeholder="Leave a message here" id="message" style="height: 160px"></textarea>
                                            <label for="message">Message</label>
                                        </div>
                                    </div>
                                    <div class="col-12">
                                        <button class="btn btn-primary w-100 py-3">Send Message</button>
                                    </div>
                                </div>
                            </form>
                        </div>
                        <div class="col-lg-6 wow fadeInRight" data-wow-delay="0.3s">
                            <div class="d-flex align-items-center mb-5">
                                <div class="mb-3"><i class="fa fa-home fa-2x text-primary"></i></div>
                                <div class="ms-4">
                                    <h4>Addresses</h4>
                                    <p class="mb-0">D1-267/268, New Kondli,</p>
                                     <p class="mb-0">Mayur Vihar 3,</p>
                                       <p class="mb-0">New Delhi -110096</p></div>
                            </div>
                            <div class="d-flex align-items-center mb-5">
                                <div class="mb-3"><i class="fa fa-map-marker-alt fa-2x text-primary"></i></div>
                                <div class="ms-4">
                                    <h4>Addresses</h4>
                                  <p class="mb-0">D1/338, New Kondli,</p>
                                  <p class="mb-0">Mayur Vihar 3,</p>
                                  <p class="mb-0">New Delhi -110096</p>
                                </div>
                            </div>
                            <div class="d-flex align-items-center mb-5">
                                <div class="mb-3"><i class="fa fa-phone-alt fa-2x text-primary"></i></div>
                                <div class="ms-4">
                                    <h4>Mobile</h4>
                                    <p class="mb-0">+91 9555580458</p>
                                    <p class="mb-0">+91 8447734730</p>
                                </div>
                            </div>
                            <div class="d-flex align-items-center mb-5">
                                <div class="mb-3"><i class="fa fa-envelope-open fa-2x text-primary"></i></div>
                                <div class="ms-4">
                                    <h4>Email</h4>
                                    <p class="mb-0">info@success24.com</p>
                                    
                                </div>
                            </div>
                            <div class="d-flex align-items-center">
                                <div class="me-4">
                                    <i class="fas fa-share-alt fa-2x text-primary"></i>
                                </div>
                                <div class="d-flex">
                                    <a class="btn btn-lg-square btn-primary rounded-circle me-2" href="#"><i class="fab fa-facebook-f"></i></a>
                                    <a class="btn btn-lg-square btn-primary rounded-circle mx-2" href="#"><i class="fab fa-twitter"></i></a>
                                    <a class="btn btn-lg-square btn-primary rounded-circle mx-2" href="#"><i class="fab fa-instagram"></i></a>
                                    <a class="btn btn-lg-square btn-primary rounded-circle mx-2" href="#"><i class="fab fa-linkedin-in"></i></a>
                                </div>
                            </div>
                        </div>
                        <div class="col-12 wow fadeInUp" data-wow-delay="0.1s">
                            <div class="rounded h-100 pb-3">
                                <iframe class="rounded w-100" 
                                style="height: 500px;" src="https://www.google.com/maps/embed/v1/search?q=IQ-india&key=AIzaSyBFw0Qbyq9zTFTd-tUY6dZWTgaQzuU17R8" 
                                loading="lazy" referrerpolicy="no-referrer-when-downgrade"></iframe>



                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <!-- Contact End -->
</asp:Content>





