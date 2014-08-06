<?php

//Connect to MySQL
$connection = mysql_connect('localhost', 'root', '');

//Select the 'allison_blog' database
mysql_select_db('allison_blog');

//Check connection
if(!$connection){
  die('Failed to connect to MySQL: ' . mysql_errno());
}

$result = mysql_query('SELECT articles.id, articles.title, authors.author_name, authors.author_email_address, articles.body FROM articles LEFT JOIN authors ON articles.author_id = authors.author_id ORDER BY id DESC');
?>
<!DOCTYPE HTML>
<html>
  <head>
    <title>
      Allison's Philly Blog
     </title>
    <meta name="viewport" content="width=device-width" />
    <link rel="stylesheet" type="text/css" href="stylesheets/screen.css"/> 
    <script type="text/javascript" src="//ajax.googleapis.com/ajax/libs/jquery/1.11.1/jquery.min.js"></script>
    <script type="text/javascript" src="scripts/blog.js"></script>
  </head>

  <body>
    <header>
      <h1><a href="#">Allison's Philly Blog</a></h1>
    </header>
    
    <div id="content">
    <?php

      //Loops through each row from the query result
      while($row = mysql_fetch_array($result)){

        print '<article>';

        //Prints an h2 with link for each article
        print '<h2><a href="/blog/article.php?id=' . $row['id'] . '">'  . $row['title'] . '</a></h2>';

        //Prints the author name with mailto link
        print '<em>By: <a href="mailto: ' . $row['author_email_address']  . '">' . $row['author_name'] . '</a></em>';

        //Prints the body
        print '<p>' . $row['body'] . '</p>';

        print '</article>';
      }

    ?>
    </div>

  </body>


</html>
