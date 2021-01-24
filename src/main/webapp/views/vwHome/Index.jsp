<%@ page contentType="text/html; charset=utf-8" %>
<%@ taglib prefix="t" tagdir="/WEB-INF/tags" %>
<meta content="width=device-width, initial-scale=1.0" name="viewport">

<!-- Favicons -->
<link href="${pageContext.request.contextPath}/publicsss/assets/img/favicon.png" rel="icon">
<link href="${pageContext.request.contextPath}/publicsss/assets/img/apple-touch-icon.png" rel="apple-touch-icon">

<!-- Google Fonts -->
<link href="https://fonts.googleapis.com/css?family=Open+Sans:300,300i,400,400i,600,600i,700,700i|Raleway:300,300i,400,400i,500,500i,600,600i,700,700i|Poppins:300,300i,400,400i,500,500i,600,600i,700,700i" rel="stylesheet">

<!-- Vendor CSS Files -->
<link href="${pageContext.request.contextPath}/publicsss/assets/vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet">
<link href="${pageContext.request.contextPath}/publicsss/assets/vendor/icofont/icofont.min.css" rel="stylesheet">
<link href="${pageContext.request.contextPath}/publicsss/assets/vendor/boxicons/css/boxicons.min.css" rel="stylesheet">
<link href="${pageContext.request.contextPath}/publicsss/assets/vendor/remixicon/remixicon.css" rel="stylesheet">
<link href="${pageContext.request.contextPath}/publicsss/assets/vendor/venobox/venobox.css" rel="stylesheet">
<link href="${pageContext.request.contextPath}/publicsss/assets/vendor/owl.carousel/assets/owl.carousel.min.css" rel="stylesheet">
<link href="${pageContext.request.contextPath}/publicsss/assets/vendor/aos/aos.css" rel="stylesheet">

<!-- Template Main CSS File -->
<link href="${pageContext.request.contextPath}/publicsss/assets/css/style.css" rel="stylesheet">


<t:home>
    <jsp:body>
        <header id="header" class="fixed-top d-flex align-items-center">
            <div class="container">
                <div class="header-container d-flex align-items-center">
                    <div class="logo mr-auto">
                        <h1 class="text-light"><a href="${pageContext.request.contextPath}/Product"><span>OnlineAcademy</span></a></h1>
                    </div>

                    <nav class="nav-menu d-none d-lg-block">
                        <ul>
                            <li class="active"><a href="#header">Home</a></li>
                            <li><a href="#about">About</a></li>
                            <li><a href="#services">Services</a></li>
                            <li><a href="#portfolio">Courses</a></li>
                            <li><a href="#team">Team</a></li>
                            <li><a href="#contact">Contact</a></li>

                            <li class="get-started"><a href="${pageContext.request.contextPath}/Product">Get Started</a></li>
                        </ul>
                    </nav><!-- .nav-menu -->
                </div><!-- End Header Container -->
            </div>
        </header><!-- End Header -->
        <!-- ======= Hero Section ======= -->
        <section id="hero" class="d-flex align-items-center">
            <div class="container text-center position-relative" data-aos="fade-in" data-aos-delay="200">
                <h1>OnlineAcademy.</h1>
                <h2>Nền tảng hỗ trợ giảng dạy đào tạo trực tuyến</h2>
                <a href="${pageContext.request.contextPath}/Product" class="btn-get-started scrollto">Tìm hiểu ngay!</a>
            </div>
        </section><!-- End Hero -->

        <main id="main">

            <!-- ======= Clients Section ======= -->
            <section id="clients" class="clients">
                <div class="container">

                    <div class="row">

                        <div class="col-lg-2 col-md-4 col-6 d-flex align-items-center" data-aos="zoom-in" data-aos-delay="100">
                            <img src="${pageContext.request.contextPath}/publicsss/assets/img/clients/client-1.png" class="img-fluid" alt="">
                        </div>

                        <div class="col-lg-2 col-md-4 col-6 d-flex align-items-center" data-aos="zoom-in" data-aos-delay="200">
                            <img src="${pageContext.request.contextPath}/publicsss/assets/img/clients/client-2.png" class="img-fluid" alt="">
                        </div>

                        <div class="col-lg-2 col-md-4 col-6 d-flex align-items-center" data-aos="zoom-in" data-aos-delay="300">
                            <img src="${pageContext.request.contextPath}/publicsss/assets/img/clients/client-3.png" class="img-fluid" alt="">
                        </div>

                        <div class="col-lg-2 col-md-4 col-6 d-flex align-items-center" data-aos="zoom-in" data-aos-delay="400">
                            <img src="${pageContext.request.contextPath}/publicsss/assets/img/clients/client-4.png" class="img-fluid" alt="">
                        </div>

                        <div class="col-lg-2 col-md-4 col-6 d-flex align-items-center" data-aos="zoom-in" data-aos-delay="500">
                            <img src="${pageContext.request.contextPath}/publicsss/assets/img/clients/client-5.png" class="img-fluid" alt="">
                        </div>

                        <div class="col-lg-2 col-md-4 col-6 d-flex align-items-center" data-aos="zoom-in" data-aos-delay="600">
                            <img src="${pageContext.request.contextPath}/publicsss/assets/img/clients/client-6.png" class="img-fluid" alt="">
                        </div>

                    </div>

                </div>
            </section><!-- End Clients Section -->

            <!-- ======= About Section ======= -->
            <section id="about" class="about">
                <div class="container">

                    <div class="row content">
                        <div class="col-lg-6" data-aos="fade-right" data-aos-delay="100">
                            <h2>Chào mừng đến với học viện OnlineAcademy</h2>
                            <h3>Chúng tôi cam kết mang đến chất lượng giảng dạy và họp tập tốt nhất!</h3>
                        </div>
                        <div class="col-lg-6 pt-4 pt-lg-0" data-aos="fade-left" data-aos-delay="200">
                            <p>
                                Chúng tôi rất vui vì bạn đã xác định học tập cùng chúng tôi, là một lựa chọn cho (các) học sinh của bạn và muốn giúp gia đình bạn
                                đạt đến mức thành công cao nhất trong chương trình của chúng tôi. Xin đừng ngần ngại liên hệ với nhân viên hỗ trợ của chúng tôi về các câu hỏi,
                                thắc mắc của bạn và / hoặc yêu cầu hỗ trợ.
                            </p>
                            <ul>
                                <li><i class="ri-check-double-line"></i> Các khóa học trực tuyến</li>
                                <p>Đầy đủ các khóa học chuyên sâu</p>
                                <li><i class="ri-check-double-line"></i> Các chuyên gia đầu ngành</li>
                                <p>Đội ngũ GS.TS.BS đến từ các trường đại học lớn trong cả nước</p>
                                <li><i class="ri-check-double-line"></i> Nền tảng tương tác tối ưu</li>
                                <p>Kết nối giảng viên và học viên thuận tiện bất kể khoảng cách địa lý</p>
                            </ul>
                            <p class="font-italic">
                                OnlineAcademy là một trang website gồm những khóa học hàng đầu cung cấp nền giáo dục chất lượng để đáp ứng nhu cầu học tập của đa dạng học sinh trong khi tuân thủ các tiêu chuẩn xuất sắc.
                            </p>
                        </div>
                    </div>

                </div>
            </section><!-- End About Section -->

            <!-- ======= Counts Section ======= -->
            <section id="counts" class="counts">
                <div class="container">

                    <div class="row counters">

                        <div class="col-lg-3 col-6 text-center">
                            <span data-toggle="counter-up">232</span>
                            <p>Giảng viên</p>
                        </div>

                        <div class="col-lg-3 col-6 text-center">
                            <span data-toggle="counter-up">5213</span>
                            <p>Người dùng</p>
                        </div>

                        <div class="col-lg-3 col-6 text-center">
                            <span data-toggle="counter-up">1,463</span>
                            <p>Khóa học</p>
                        </div>

                        <div class="col-lg-3 col-6 text-center">
                            <span data-toggle="counter-up">15</span>
                            <p>Nhà đầu tư</p>
                        </div>

                    </div>

                </div>
            </section><!-- End Counts Section -->

            <!-- ======= Why Us Section ======= -->
            <section id="why-us" class="why-us">
                <div class="container">

                    <div class="row">
                        <div class="col-lg-4 d-flex align-items-stretch" data-aos="fade-right">
                            <div class="content">
                                <h3>Tại sao bạn nên chọn OnlineAcademy?</h3>
                                <p>
                                    Nâng cao kiến thức, phát triển tư duy
                                </p>
                                <div class="text-center">
                                    <a href="${pageContext.request.contextPath}/Product" class="more-btn">Learn More <i class="bx bx-chevron-right"></i></a>
                                </div>
                            </div>
                        </div>
                        <div class="col-lg-8 d-flex align-items-stretch">
                            <div class="icon-boxes d-flex flex-column justify-content-center">
                                <div class="row">
                                    <div class="col-xl-4 d-flex align-items-stretch" data-aos="zoom-in" data-aos-delay="100">
                                        <div class="icon-box mt-4 mt-xl-0">
                                            <i class="bx bx-receipt"></i>
                                            <h4>Khóa học chất lượng</h4>
                                            <p>Nội dung đa dạng, đầy đủ các chuyên ngành. Việc tiếp thu bài học chưa bao giờ dễ dàng đến như vậy</p>
                                        </div>
                                    </div>
                                    <div class="col-xl-4 d-flex align-items-stretch" data-aos="zoom-in" data-aos-delay="200">
                                        <div class="icon-box mt-4 mt-xl-0">
                                            <i class="bx bx-cube-alt"></i>
                                            <h4>Giảng viên tận tâm</h4>
                                            <p>Tập hợp đội ngũ giảng viên có học vị chuyên môn cao đến từ các trường danh tiếng trên toàn quốc</p>
                                        </div>
                                    </div>
                                    <div class="col-xl-4 d-flex align-items-stretch" data-aos="zoom-in" data-aos-delay="300">
                                        <div class="icon-box mt-4 mt-xl-0">
                                            <i class="bx bx-images"></i>
                                            <h4>Tương tác thuận tiện</h4>
                                            <p>Thoải mái tiếp cận và tương tác với các thầy cô tận tâm giàu kinh nghiệm</p>
                                        </div>
                                    </div>
                                </div>
                            </div><!-- End .content-->
                        </div>
                    </div>

                </div>
            </section><!-- End Why Us Section -->

            <!-- ======= Cta Section ======= -->
            <section id="cta" class="cta">
                <div class="container">

                    <div class="text-center" data-aos="zoom-in">
                        <h3>Dịch vụ tư vấn trực tiếp</h3>
                        <p> Đối với các vấn đề liên quan đến khóa học, dịch vụ, chất lượng giảng dạy, hạy gọi trực tiếp cho chúng tôi để được tư vấn vá giải đáp.</p>
                        <a class="cta-btn" href="#">Holine: 09857273112</a>
                    </div>

                </div>
            </section><!-- End Cta Section -->

            <!-- ======= Services Section ======= -->
            <section id="services" class="services section-bg">
                <div class="container">

                    <div class="row">
                        <div class="col-lg-4">
                            <div class="section-title" data-aos="fade-right">
                                <h2>Dịch vụ</h2>
                                <p> Không có gì hài lòng hơn một công việc được hoàn thành tốt. Động lực của Học viện để cung cấp dịch vụ đặc biệt đã thấm nhuần vào cốt lõi của chúng tôi và thể hiện rõ trong đội ngũ quản lý quốc gia của chúng tôi, nhân sự mà chúng tôi tuyển dụng và các hệ thống sáng tạo mà chúng tôi thiết kế để duy trì kết quả dịch vụ nghiêm ngặt của chúng tôi.</p>
                            </div>
                        </div>
                        <div class="col-lg-8">
                            <div class="row">
                                <div class="col-md-6 d-flex align-items-stretch">
                                    <div class="icon-box" data-aos="zoom-in" data-aos-delay="100">
                                        <div class="icon"><i class="icofont-cart-alt"></i></div>
                                        <h4><a href="">Mua hàng</a></h4>
                                        <p>Các chương trình khuyến mãi và các chính sách mua hàng đặc biệt chỉ có ở đây</p>
                                    </div>
                                </div>

                                <div class="col-md-6 d-flex align-items-stretch mt-4 mt-lg-0">
                                    <div class="icon-box" data-aos="zoom-in" data-aos-delay="200">
                                        <div class="icon"><i class="icofont-crown"></i></div>
                                        <h4><a href="">Khách hàng</a></h4>
                                        <p>Phương châm: "Khách hàng là thượng đế". Phục vụ tận tâm khách hàng của chúng tôi</p>
                                    </div>
                                </div>

                                <div class="col-md-6 d-flex align-items-stretch mt-4">
                                    <div class="icon-box" data-aos="zoom-in" data-aos-delay="300">
                                        <div class="icon"><i class="icofont-diskette"></i></div>
                                        <h4><a href="">Dữ liệu</a></h4>
                                        <p>Luôn cập nhập những chương trình dạy học mới nhất và uy tín</p>
                                    </div>
                                </div>

                                <div class="col-md-6 d-flex align-items-stretch mt-4">
                                    <div class="icon-box" data-aos="zoom-in" data-aos-delay="400">
                                        <div class="icon"><i class="icofont-live-support"></i></div>
                                        <h4><a href="">Tư vấn</a></h4>
                                        <p>Nhân viên tư vấn nhiệt tình 24/7, luôn hỗ trợ cho người dùng từ những thứ nhỏ nhất</p>
                                    </div>
                                </div>

                            </div>
                        </div>
                    </div>

                </div>
            </section><!-- End Services Section -->

            <!-- ======= Portfolio Section ======= -->
            <section id="portfolio" class="portfolio">
                <div class="container">

                    <div class="section-title" data-aos="fade-left">
                        <h2>Các khóa học tiêu biểu</h2>
                    </div>

                    <div class="row" data-aos="fade-up" data-aos-delay="100">
                        <div class="col-lg-12 d-flex justify-content-center">
                            <ul id="portfolio-flters">
                                <li data-filter="*" class="filter-active">All</li>
                                <li data-filter=".filter-app">App</li>
                                <li data-filter=".filter-card">Card</li>
                                <li data-filter=".filter-web">Web</li>
                            </ul>
                        </div>
                    </div>

                    <div class="row portfolio-container" data-aos="fade-up" data-aos-delay="200">

                        <div class="col-lg-4 col-md-6 portfolio-item filter-app">
                            <div class="portfolio-wrap">
                                <img src="${pageContext.request.contextPath}/publicsss/assets/img/portfolio/portfolio-1.jpg" class="img-fluid" alt="">
                                <div class="portfolio-info">
                                    <h4>App 1</h4>
                                    <p>App</p>
                                    <div class="portfolio-links">
                                        <a href="${pageContext.request.contextPath}/publicsss/assets/img/portfolio/portfolio-1.jpg" data-gall="portfolioGallery" class="venobox" title="App 1"><i class="bx bx-plus"></i></a>
                                        <a href="${pageContext.request.contextPath}/publicsss/portfolio-details.html" title="More Details"><i class="bx bx-link"></i></a>
                                    </div>
                                </div>
                            </div>
                        </div>

                        <div class="col-lg-4 col-md-6 portfolio-item filter-web">
                            <div class="portfolio-wrap">
                                <img src="${pageContext.request.contextPath}/publicsss/assets/img/portfolio/portfolio-2.jpg" class="img-fluid" alt="">
                                <div class="portfolio-info">
                                    <h4>Web 3</h4>
                                    <p>Web</p>
                                    <div class="portfolio-links">
                                        <a href="${pageContext.request.contextPath}/publicsss/assets/img/portfolio/portfolio-2.jpg" data-gall="portfolioGallery" class="venobox" title="Web 3"><i class="bx bx-plus"></i></a>
                                    </div>
                                </div>
                            </div>
                        </div>

                        <div class="col-lg-4 col-md-6 portfolio-item filter-app">
                            <div class="portfolio-wrap">
                                <img src="${pageContext.request.contextPath}/publicsss/assets/img/portfolio/portfolio-3.jpg" class="img-fluid" alt="">
                                <div class="portfolio-info">
                                    <h4>App 2</h4>
                                    <p>App</p>
                                    <div class="portfolio-links">
                                        <a href="${pageContext.request.contextPath}/publicsss/assets/img/portfolio/portfolio-3.jpg" data-gall="portfolioGallery" class="venobox" title="App 2"><i class="bx bx-plus"></i></a>
                                    </div>
                                </div>
                            </div>
                        </div>

                        <div class="col-lg-4 col-md-6 portfolio-item filter-card">
                            <div class="portfolio-wrap">
                                <img src="${pageContext.request.contextPath}/publicsss/assets/img/portfolio/portfolio-4.jpg" class="img-fluid" alt="">
                                <div class="portfolio-info">
                                    <h4>Card 2</h4>
                                    <p>Card</p>
                                    <div class="portfolio-links">
                                        <a href="${pageContext.request.contextPath}/publicsss/assets/img/portfolio/portfolio-4.jpg" data-gall="portfolioGallery" class="venobox" title="Card 2"><i class="bx bx-plus"></i></a>
                                    </div>
                                </div>
                            </div>
                        </div>

                        <div class="col-lg-4 col-md-6 portfolio-item filter-web">
                            <div class="portfolio-wrap">
                                <img src="${pageContext.request.contextPath}/publicsss/assets/img/portfolio/portfolio-5.jpg" class="img-fluid" alt="">
                                <div class="portfolio-info">
                                    <h4>Web 2</h4>
                                    <p>Web</p>
                                    <div class="portfolio-links">
                                        <a href="${pageContext.request.contextPath}/publicsss/assets/img/portfolio/portfolio-5.jpg" data-gall="portfolioGallery" class="venobox" title="Web 2"><i class="bx bx-plus"></i></a>
                                    </div>
                                </div>
                            </div>
                        </div>

                        <div class="col-lg-4 col-md-6 portfolio-item filter-app">
                            <div class="portfolio-wrap">
                                <img src="${pageContext.request.contextPath}/publicsss/assets/img/portfolio/portfolio-6.jpg" class="img-fluid" alt="">
                                <div class="portfolio-info">
                                    <h4>App 3</h4>
                                    <p>App</p>
                                    <div class="portfolio-links">
                                        <a href="${pageContext.request.contextPath}/publicsss/assets/img/portfolio/portfolio-6.jpg" data-gall="portfolioGallery" class="venobox" title="App 3"><i class="bx bx-plus"></i></a>
                                    </div>
                                </div>
                            </div>
                        </div>

                        <div class="col-lg-4 col-md-6 portfolio-item filter-card">
                            <div class="portfolio-wrap">
                                <img src="${pageContext.request.contextPath}/publicsss/assets/img/portfolio/portfolio-7.jpg" class="img-fluid" alt="">
                                <div class="portfolio-info">
                                    <h4>Card 1</h4>
                                    <p>Card</p>
                                    <div class="portfolio-links">
                                        <a href="${pageContext.request.contextPath}/publicsss/assets/img/portfolio/portfolio-7.jpg" data-gall="portfolioGallery" class="venobox" title="Card 1"><i class="bx bx-plus"></i></a>
                                    </div>
                                </div>
                            </div>
                        </div>

                        <div class="col-lg-4 col-md-6 portfolio-item filter-card">
                            <div class="portfolio-wrap">
                                <img src="${pageContext.request.contextPath}/publicsss/assets/img/portfolio/portfolio-8.jpg" class="img-fluid" alt="">
                                <div class="portfolio-info">
                                    <h4>Card 3</h4>
                                    <p>Card</p>
                                    <div class="portfolio-links">
                                        <a href="${pageContext.request.contextPath}/publicsss/assets/img/portfolio/portfolio-8.jpg" data-gall="portfolioGallery" class="venobox" title="Card 3"><i class="bx bx-plus"></i></a>
                                    </div>
                                </div>
                            </div>
                        </div>

                        <div class="col-lg-4 col-md-6 portfolio-item filter-web">
                            <div class="portfolio-wrap">
                                <img src="${pageContext.request.contextPath}/publicsss/assets/img/portfolio/portfolio-9.jpg" class="img-fluid" alt="">
                                <div class="portfolio-info">
                                    <h4>Web 3</h4>
                                    <p>Web</p>
                                    <div class="portfolio-links">
                                        <a href="${pageContext.request.contextPath}/publicsss/assets/img/portfolio/portfolio-9.jpg" data-gall="portfolioGallery" class="venobox" title="Web 3"><i class="bx bx-plus"></i></a>
                                    </div>
                                </div>
                            </div>
                        </div>

                    </div>

                </div>
            </section><!-- End Portfolio Section -->

            <!-- ======= Testimonials Section ======= -->
            <section id="testimonials" class="testimonials section-bg">
                <div class="container">

                    <div class="row">
                        <div class="col-lg-4">
                            <div class="section-title" data-aos="fade-right">
                                <h2>Các giảng viên ưu tú</h2>
                                <p>Giảng viên của chúng tôi đến từ các trường đại học danh tiếng với hi vọng đưa các khóa có ích của họ đến với mọi người.</p>
                            </div>
                        </div>
                        <div class="col-lg-8" data-aos="fade-up" data-aos-delay="100">
                            <div class="owl-carousel testimonials-carousel">

                                <div class="testimonial-item">
                                    <p>
                                        <i class="bx bxs-quote-alt-left quote-icon-left"></i>
                                        Hello
                                        <i class="bx bxs-quote-alt-right quote-icon-right"></i>
                                    </p>
                                    <img src="${pageContext.request.contextPath}/publicsss/assets/img/testimonials/testimonials-1.jpg" class="testimonial-img" alt="">
                                    <h3>Saul Goodman</h3>
                                    <h4>Ceo &amp; Founder of OnlineAcademy</h4>
                                </div>

                                <div class="testimonial-item">
                                    <p>
                                        <i class="bx bxs-quote-alt-left quote-icon-left"></i>
                                        Hello
                                        <i class="bx bxs-quote-alt-right quote-icon-right"></i>
                                    </p>
                                    <img src="${pageContext.request.contextPath}/publicsss/assets/img/testimonials/testimonials-2.jpg" class="testimonial-img" alt="">
                                    <h3>Sara Wilsson</h3>
                                    <h4>Cố vấn đào tạo</h4>
                                </div>

                                <div class="testimonial-item">
                                    <p>
                                        <i class="bx bxs-quote-alt-left quote-icon-left"></i>
                                        Hello
                                        <i class="bx bxs-quote-alt-right quote-icon-right"></i>
                                    </p>
                                    <img src="${pageContext.request.contextPath}/publicsss/assets/img/testimonials/testimonials-3.jpg" class="testimonial-img" alt="">
                                    <h3>Jena Karlis</h3>
                                    <h4>Giảng viên</h4>
                                </div>

                                <div class="testimonial-item">
                                    <p>
                                        <i class="bx bxs-quote-alt-left quote-icon-left"></i>
                                        Hello
                                        <i class="bx bxs-quote-alt-right quote-icon-right"></i>
                                    </p>
                                    <img src="${pageContext.request.contextPath}/publicsss/assets/img/testimonials/testimonials-4.jpg" class="testimonial-img" alt="">
                                    <h3>Matt Brandon</h3>
                                    <h4>Giảng viên</h4>
                                </div>

                                <div class="testimonial-item">
                                    <p>
                                        <i class="bx bxs-quote-alt-left quote-icon-left"></i>
                                        Hello
                                        <i class="bx bxs-quote-alt-right quote-icon-right"></i>
                                    </p>
                                    <img src="${pageContext.request.contextPath}/publicsss/assets/img/testimonials/testimonials-5.jpg" class="testimonial-img" alt="">
                                    <h3>John Larson</h3>
                                    <h4>Giảng viên</h4>
                                </div>

                            </div>
                        </div>
                    </div>

                </div>
            </section><!-- End Testimonials Section -->

            <!-- ======= Team Section ======= -->
            <section id="team" class="team">
                <div class="container">

                    <div class="row">
                        <div class="col-lg-4">
                            <div class="section-title" data-aos="fade-right">
                                <h2>Đội ngũ của chúng tôi</h2>
                                <p>Gồm những sinh viên Dễ thương, đầy khả ái của Đại học Sư Phạm Kĩ Thuật Tp.HCM.</p>
                            </div>
                        </div>
                        <div class="col-lg-8">
                            <div class="row">

                                <div class="col-lg-6">
                                    <div class="member" data-aos="zoom-in" data-aos-delay="100">
                                        <div class="pic"><img src="${pageContext.request.contextPath}/publicsss/assets/img/team/team-1.jpg" class="img-fluid" alt=""></div>
                                        <div class="member-info">
                                            <h4>Thiều Văn Hoàng</h4>
                                            <span>Nam</span>
                                            <p>18110114</p>
                                            <div class="social">
                                                <a href=""><i class="ri-twitter-fill"></i></a>
                                                <a href=""><i class="ri-facebook-fill"></i></a>
                                                <a href=""><i class="ri-instagram-fill"></i></a>
                                                <a href=""> <i class="ri-linkedin-box-fill"></i> </a>
                                            </div>
                                        </div>
                                    </div>
                                </div>

                                <div class="col-lg-6 mt-4 mt-lg-0">
                                    <div class="member" data-aos="zoom-in" data-aos-delay="200">
                                        <div class="pic"><img src="${pageContext.request.contextPath}/publicsss/assets/img/team/team-2.jpg" class="img-fluid" alt=""></div>
                                        <div class="member-info">
                                            <h4>Nguyễn Ngọc Minh Thư</h4>
                                            <span>Nữ</span>
                                            <p>18110210</p>
                                            <div class="social">
                                                <a href=""><i class="ri-twitter-fill"></i></a>
                                                <a href=""><i class="ri-facebook-fill"></i></a>
                                                <a href=""><i class="ri-instagram-fill"></i></a>
                                                <a href=""> <i class="ri-linkedin-box-fill"></i> </a>
                                            </div>
                                        </div>
                                    </div>
                                </div>

                                <div class="col-lg-6 mt-4">
                                    <div class="member" data-aos="zoom-in" data-aos-delay="300">
                                        <div class="pic"><img src="${pageContext.request.contextPath}/publicsss/assets/img/team/team-3.jpg" class="img-fluid" alt=""></div>
                                        <div class="member-info">
                                            <h4>Cao Thị Thùy Linh</h4>
                                            <span>Nữ</span>
                                            <p>18110144</p>
                                            <div class="social">
                                                <a href=""><i class="ri-twitter-fill"></i></a>
                                                <a href=""><i class="ri-facebook-fill"></i></a>
                                                <a href=""><i class="ri-instagram-fill"></i></a>
                                                <a href=""> <i class="ri-linkedin-box-fill"></i> </a>
                                            </div>
                                        </div>
                                    </div>
                                </div>

                                <div class="col-lg-6 mt-4">
                                    <div class="member" data-aos="zoom-in" data-aos-delay="400">
                                        <div class="pic"><img src="${pageContext.request.contextPath}/publicsss/assets/img/team/team-4.jpg" class="img-fluid" alt=""></div>
                                        <div class="member-info">
                                            <h4>Huỳnh Trần Thảo Nhi</h4>
                                            <span>Nữ</span>
                                            <p>18110169</p>
                                            <div class="social">
                                                <a href=""><i class="ri-twitter-fill"></i></a>
                                                <a href=""><i class="ri-facebook-fill"></i></a>
                                                <a href=""><i class="ri-instagram-fill"></i></a>
                                                <a href=""> <i class="ri-linkedin-box-fill"></i> </a>
                                            </div>
                                        </div>
                                    </div>
                                </div>

                            </div>

                        </div>
                    </div>

                </div>
            </section><!-- End Team Section -->

            <!-- ======= Contact Section ======= -->
            <section id="contact" class="contact">
                <div class="container">
                    <div class="row">
                        <div class="col-lg-4" data-aos="fade-right">
                            <div class="section-title">
                                <h2>Liên hệ</h2>
                                <p> GỬI TIN NHẮN CHO CHÚNG TÔI.</p>
                            </div>
                        </div>

                        <div class="col-lg-8" data-aos="fade-up" data-aos-delay="100">
                            <iframe style="border:0; width: 100%; height: 270px;" src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3918.4843009459546!2d106.76973361462316!3d10.85072139227108!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x31752763f23816ab%3A0x282f711441b6916f!2zVHLGsOG7nW5nIMSQ4bqhaSBo4buNYyBTxrAgcGjhuqFtIEvhu7kgdGh14bqtdCBUaMOgbmggcGjhu5EgSOG7kyBDaMOtIE1pbmg!5e0!3m2!1svi!2s!4v1611345852690!5m2!1svi!2s" frameborder="0" allowfullscreen></iframe>
                            <div class="info mt-4">
                                <i class="icofont-google-map"></i>
                                <h4>Location:</h4>
                                <p>1 Võ Văn Ngân, Linh Chiểu, Thủ Đức, Thành phố Hồ Chí Minh, Việt Nam</p>
                            </div>
                            <div class="row">
                                <div class="col-lg-6 mt-4">
                                    <div class="info">
                                        <i class="icofont-envelope"></i>
                                        <h4>Email:</h4>
                                        <p>info@example.com</p>
                                    </div>
                                </div>
                                <div class="col-lg-6">
                                    <div class="info w-100 mt-4">
                                        <i class="icofont-phone"></i>
                                        <h4>Call:</h4>
                                        <p>+1 5589 55488 55s</p>
                                    </div>
                                </div>
                            </div>

                            <form action="${pageContext.request.contextPath}/publicsss/assets/contact.php" method="post" role="form" class="php-email-form mt-4">
                                <div class="form-row">
                                    <div class="col-md-6 form-group">
                                        <input type="text" name="name" class="form-control" id="name" placeholder="Your Name" data-rule="minlen:4" data-msg="Please enter at least 4 chars" />
                                        <div class="validate"></div>
                                    </div>
                                    <div class="col-md-6 form-group">
                                        <input type="email" class="form-control" name="email" id="email" placeholder="Your Email" data-rule="email" data-msg="Please enter a valid email" />
                                        <div class="validate"></div>
                                    </div>
                                </div>
                                <div class="form-group">
                                    <input type="text" class="form-control" name="subject" id="subject" placeholder="Subject" data-rule="minlen:4" data-msg="Please enter at least 8 chars of subject" />
                                    <div class="validate"></div>
                                </div>
                                <div class="form-group">
                                    <textarea class="form-control" name="message" rows="5" data-rule="required" data-msg="Please write something for us" placeholder="Message"></textarea>
                                    <div class="validate"></div>
                                </div>
                                <div class="mb-3">
                                    <div class="loading">Loading</div>
                                    <div class="error-message"></div>
                                    <div class="sent-message">Your message has been sent. Thank you!</div>
                                </div>
                                <div class="text-center"><button type="submit">Send Message</button></div>
                            </form>
                        </div>
                    </div>

                </div>
            </section><!-- End Contact Section -->

        </main><!-- End #main -->

        <a href="#" class="back-to-top"><i class="icofont-simple-up"></i></a>

        <!-- Vendor JS Files -->
        <script src="${pageContext.request.contextPath}/publicsss/assets/vendor/jquery/jquery.min.js"></script>
        <script src="${pageContext.request.contextPath}/publicsss/assets/vendor/bootstrap/js/bootstrap.bundle.min.js"></script>
        <script src="${pageContext.request.contextPath}/publicsss/assets/vendor/jquery.easing/jquery.easing.min.js"></script>
        <script src="${pageContext.request.contextPath}/publicsss/assets/vendor/php-email-form/validate.js"></script>
        <script src="${pageContext.request.contextPath}/publicsss/assets/vendor/waypoints/jquery.waypoints.min.js"></script>
        <script src="${pageContext.request.contextPath}/publicsss/assets/vendor/counterup/counterup.min.js"></script>
        <script src="${pageContext.request.contextPath}/publicsss/assets/vendor/isotope-layout/isotope.pkgd.min.js"></script>
        <script src="${pageContext.request.contextPath}/publicsss/assets/vendor/venobox/venobox.min.js"></script>
        <script src="${pageContext.request.contextPath}/publicsss/assets/vendor/owl.carousel/owl.carousel.min.js"></script>
        <script src="${pageContext.request.contextPath}/publicsss/assets/vendor/aos/aos.js"></script>

        <!-- Template Main JS File -->
        <script src="${pageContext.request.contextPath}/publicsss/assets/js/main.js"></script>
    </jsp:body>
</t:home>