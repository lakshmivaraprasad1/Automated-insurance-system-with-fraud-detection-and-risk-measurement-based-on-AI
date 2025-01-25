<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Strict//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
    <head>
        <meta http-equiv="content-type" content="text/html; charset=utf-8" />
        <meta name="description" content="" />
        <meta name="keywords" content="" />
        <title>HASBE</title>
        <!--		<link href="http://fonts.googleapis.com/css?family=Open+Sans" rel="stylesheet" type="text/css" />-->
        <link rel="stylesheet" type="text/css" href="style.css" />
    </head>
    <body>
        <div id="wrapper">
            <div id="header">
                <div id="logo">
		

                   <h1><a href="#">Product Recomendation
</a></h1>


                </div>
                <div id="menu">
                    <ul>
                      <li><a href="Autometa.jsp">Start >>>>
</a></li>
                    </ul>
                    <br class="clearfix" />
                </div>
            </div>
            <div id="inner">
                <%if (request.getParameter("msg") != null) {
                                out.println(request.getParameter("msg"));
                            }%>
                <div id="splash">
                    <img src="images/homo.png" width="900" height="260" alt="" class="image" />
                </div>
            
            </div>

        </div>

    </body>
</html>