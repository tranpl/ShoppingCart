<%--<%@ Page Title="Browse Products" Language="C#" MasterPageFile="~/Patrick.Master" AutoEventWireup="true" CodeFile="BrowseProducts.aspx.cs" Inherits="_BrowseProducts" %>--%>
<!DOCTYPE html>
<html lang="en">

<head>

    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="description" content="">
    <meta name="author" content="">

    <title>Pick of the Critter Homepage</title>

    <!-- Bootstrap Core CSS -->
<link href="content/bootstrap.css" rel="stylesheet">

<!-- Custom CSS -->
<link href="content/bootstrap.css" rel="stylesheet">

<!-- HTML5 Shim and Respond.js IE8 support of HTML5 elements and media queries -->
<!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
<!--[if lt IE 9]>
    
    <![endif]-->
<script src="https://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js"></script>
<script src="https://oss.maxcdn.com/libs/respond.js/1.4.2/respond.min.js"></script>
</head>


<body>

    <!-- Navigation -->
    <nav class="navbar navbar-inverse navbar-fixed-top" role="navigation">
        <div class="container">
            <!-- Brand and toggle get grouped for better mobile display -->
            <div class="navbar-header">
                <button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1">
                    <span class="sr-only">Toggle navigation</span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                </button>
                <a class="navbar-brand" href="browseproducts.aspx">Pick of the Critter</a>
            </div>
            <div id="custom-search-input">
                <div class="input-group col-md-12">
                    <input type="text" class="form-control input-lg" placeholder="Search" />
                    <span class="input-group-btn">
                        <button class="btn btn-info btn-lg" type="button">
                            <i class="glyphicon glyphicon-search"></i>
                        </button>
                    </span>
                </div>
            </div>
            <ul class="nav navbar-nav navbar-right">
                <li><a href="CartContents.aspx" class="btn btn-default btn-sm">
                    <span class="glyphicon glyphicon-shopping-cart"></span>Shopping Cart
                    </a></li>
                <li><a runat="server" href="/Account/Register">Register</a></li>
                <li><a runat="server" href="/Account/Login">Log in</a></li>
            </ul>
        </div>
        <!-- /.navbar-collapse -->

        <!-- /.container -->

    </nav>
    <br />
    <br />
    <br />
    <br />
    <br />
    <br />
    <!-- Page Content -->
    <div class="container">

        <div class="row">

            <div class="col-md-3">
                <p class="lead">Categories</p>
                <div class="list-group">
                    <a href="BrowseProducts.aspx" class="list-group-item">Browse Products</a>
                    <a href="page1.aspx" class="list-group-item">Dog</a>
                    <a href="page2.aspx" class="list-group-item">Cat</a>
                    <a href="page3.aspx" class="list-group-item">Fish</a>
                    <a href="page4.aspx" class="list-group-item">Rodent</a>
                    <a href="page4.aspx" class="list-group-item">Bird</a>
                </div>
            </div>

            <br />
            <br />

            <div class="col-md-9">

                <div class="row carousel-holder">

                    <div class="col-md-12">
                        <div id="carousel-example-generic" class="carousel slide" data-ride="carousel">
                            <ol class="carousel-indicators">
                                <li data-target="#carousel-example-generic" data-slide-to="0" class="active"></li>
                                <li data-target="#carousel-example-generic" data-slide-to="1"></li>
                                <li data-target="#carousel-example-generic" data-slide-to="2"></li>
                            </ol>
                            <div class="carousel-inner">
                                <div class="item active">
                                    <img class="slide-image" src="images/large/pets_banner.png" alt="pet banner" />
                                </div>
                                <div class="item">
                                    <img class="slide-image" src="images/large/sale-banner.jpg" alt="sale banner" />
                                </div>
                                <div class="item">
                                    <img class="slide-image" src="images/large/festivepet.gif" alt="festive pet" />
                                </div>
                            </div>
                            <a class="left carousel-control" href="#carousel-example-generic" data-slide="prev">
                                <span class="glyphicon glyphicon-chevron-left"></span>
                            </a>
                            <a class="right carousel-control" href="#carousel-example-generic" data-slide="next">
                                <span class="glyphicon glyphicon-chevron-right"></span>
                            </a>
                        </div>
                    </div>

                </div>

                <div class="row">

                    <div class="col-sm-4 col-lg-4 col-md-4">
                        <div class="thumbnail">
                            <img src="images/large/kn9814l.jpg" alt="Kong Classic Dog Toy" />
                            <div class="caption">
                                <h4 class="pull-right">$6.99</h4>
                                <h4><a href="#">Kong Classic Dog Toy</a>
                                </h4>
                                <p>All natural, puncture resistant rubber.</p>
                            </div>
                            <div class="ratings">
                                <p class="pull-right">15 reviews</p>
                                <p>
                                    <span class="glyphicon glyphicon-star"></span>
                                    <span class="glyphicon glyphicon-star"></span>
                                    <span class="glyphicon glyphicon-star"></span>
                                    <span class="glyphicon glyphicon-star"></span>
                                    <span class="glyphicon glyphicon-star"></span>
                                </p>
                            </div>
                        </div>
                    </div>

                    <div class="col-sm-4 col-lg-4 col-md-4">
                        <div class="thumbnail">
                            <img src="images/large/tp6481l.jpg" alt="Top Paw Dog Bowl" />
                            <div class="caption">
                                <h4 class="pull-right">$4.99</h4>
                                <h4><a href="#">Top Paw Dog Bowl</a>
                                </h4>
                                <p>These oval-shaped high quality bowls come with non-skid bottoms and convenient lipped edge for easier handling.</p>
                            </div>
                            <div class="ratings">
                                <p class="pull-right">12 reviews</p>
                                <p>
                                    <span class="glyphicon glyphicon-star"></span>
                                    <span class="glyphicon glyphicon-star"></span>
                                    <span class="glyphicon glyphicon-star"></span>
                                    <span class="glyphicon glyphicon-star"></span>
                                    <span class="glyphicon glyphicon-star-empty"></span>
                                </p>
                            </div>
                        </div>
                    </div>

                    <div class="col-sm-4 col-lg-4 col-md-4">
                        <div class="thumbnail">
                            <img src="images/large/se6362l.jpg" alt="" />
                            <div class="caption">
                                <h4 class="pull-right">$25.71</h4>
                                <h4><a href="#">Southeast Life Sing Door Folding Dog Crate</a>
                                </h4>
                                <p>Fold and carry configuration. Divider panel. Composite plastic pan. Dual slide bolt latches. Strength: Medium Duty. Rounded corners for pet's protection. Two ABS plastic handles.</p>
                            </div>
                            <div class="ratings">
                                <p class="pull-right">31 reviews</p>
                                <p>
                                    <span class="glyphicon glyphicon-star"></span>
                                    <span class="glyphicon glyphicon-star"></span>
                                    <span class="glyphicon glyphicon-star"></span>
                                    <span class="glyphicon glyphicon-star"></span>
                                    <span class="glyphicon glyphicon-star-empty"></span>
                                </p>
                            </div>
                        </div>
                    </div>

                    <div class="col-sm-4 col-lg-4 col-md-4">
                        <div class="thumbnail">
                            <img src="images/large/blue.jpg" alt="" />
                            <div class="caption">
                                <h4 class="pull-right">$19.99</h4>
                                <h4><a href="#">Blue Adult Dog Food</a>
                                </h4>
                                <p>This is a short description. Lorem ipsum dolor sit amet, consectetur adipiscing elit.</p>
                            </div>
                            <div class="ratings">
                                <p class="pull-right">6 reviews</p>
                                <p>
                                    <span class="glyphicon glyphicon-star"></span>
                                    <span class="glyphicon glyphicon-star"></span>
                                    <span class="glyphicon glyphicon-star"></span>
                                    <span class="glyphicon glyphicon-star-empty"></span>
                                    <span class="glyphicon glyphicon-star-empty"></span>
                                </p>
                            </div>
                        </div>
                    </div>

                    <div class="col-sm-4 col-lg-4 col-md-4">
                        <div class="thumbnail">
                            <img src="images/large/sn3186l.jpg" alt="" />
                            <div class="caption">
                                <h4 class="pull-right">$15.99</h4>
                                <h4><a href="#">Simply Nourish Adult Dog Food</a>
                                </h4>
                                <p>This is a short description. Lorem ipsum dolor sit amet, consectetur adipiscing elit.</p>
                            </div>
                            <div class="ratings">
                                <p class="pull-right">18 reviews</p>
                                <p>
                                    <span class="glyphicon glyphicon-star"></span>
                                    <span class="glyphicon glyphicon-star"></span>
                                    <span class="glyphicon glyphicon-star"></span>
                                    <span class="glyphicon glyphicon-star"></span>
                                    <span class="glyphicon glyphicon-star-empty"></span>
                                </p>
                            </div>
                        </div>
                    </div>

                </div>

            </div>

        </div>

    </div>
    <!-- /.container -->

    <div class="container">

        <hr />

        <!-- Footer -->
        <footer>
            <div class="row">
                <div class="col-lg-12">
                    <p>Copyright &copy; Pick of the Critter 2016</p>
                </div>
            </div>
        </footer>

    </div>
    <!-- /.container -->

    <!-- jQuery -->
    <script src="scripts/jquery-3.1.1.js"></script>

    <!-- Bootstrap Core JavaScript -->
    <script src="scripts/bootstrap.min.js"></script>

</body>

</html>