<!DOCTYPE html>

<head>
    <title>Contact | Estately</title>
    <style>
        .contact {
            background: url(./a2.jpg) no-repeat;
            background-size: 100% 100%;
            width: 100%;
            height: 100vh;
        }

        .head {
            background-color: rgb(105, 105, 208);
            border-radius: 5px;
            margin-top: -40px;
        }

        .effect-1 {
            border: 0;
            outline: none;
            width: 100%;
            padding: 7px 0;
            border-bottom: 1px solid #ccc;
        }
    </style>
</head>
<?php require('layouts/app/headernav.php') ?>

<body>

    <section class="container">
        <div class="container py-5">
            <div class="row">
                <div class="col-lg-6 mx-auto">
                    <div class="card">
                        <div class="card-body">
                            <div class="row">
                                <div class="col-lg-12">
                                    <div class="head text-center text-white py-3">
                                        <h3>Contact Us</h3>
                                    </div>
                                </div>
                            </div>
                            <div class="form p-3">
                                <div class="form-row my-5">
                                    <div class="form-row my-5">
                                        <div class="col-lg-12">
                                            <input type="text" class="effect-1" placeholder="Email" />
                                            <span class="focus-border"></span>
                                        </div>
                                    </div>
                                    <div class="col-lg-12">
                                        <input type="text" class="effect-1" placeholder="Subject" />
                                        <span class="focus-border"></span>
                                    </div>
                                    <div class="form-row my-5">
                                        <div class="col-lg-12">
                                            <input type="text" class="effect-1" placeholder="Massage" />
                                            <span class="focus-border"></span>
                                        </div>
                                    </div>
                                    <div class="form-row my-5">
                                        <div class="col-lg-12">
                                            <button type="button" class="btn btn-primary px-3">
                                                Send
                                                <span class="focus-border"></span>
                                        </div>
                                    </div>
                                    <div class="form-row my-5 text-center">
                                        <div class="col-lg-12">
                                            <h5>Estately</h5>
                                            <span class="focus-border"></span>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>

    <?php require('layouts/app/footer.php') ?>
</body>