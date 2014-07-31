<?php

//Store the id from the URL into $id
$id = $_GET['id'];

//Connect to MySQL
$connection = mysql_connect('localhost', 'root', 'test54321');

//Select the 'allison_blog' database
mysql_select_db('allison_blog');

//Check connection
if(!$connection){
  die('Failed to connect to MySQL: ' . mysql_errno());
}

//Get the row for $id from the 'articles' table
$result = mysql_query('SELECT articles.id, articles.title, articles.author_id, authors.author_name, authors.author_email_address, articles.body ' .
  'FROM articles LEFT JOIN authors ON articles.author_id = authors.author_id ' . 
  'WHERE id = ' . $id);

//$result = mysql_query('' . $id);
$row = mysql_fetch_array($result);
?>

<!DOCTYPE html>
<html>
  <head>
    <title>
      <?php

        print 'Allison\'s Philly Blog: ' . $row['title'];

      ?>
    </title>
    <link rel="stylesheet" type="text/css" href="stylesheets/style.css" />
    <script type="text/javascript"
    src="//ajax.googleapis.com/ajax/libs/jquery/1.11.1/jquery.min.js"></script> 
    <script type="text/javascript" src="scripts/blog.js"></script>
  </head>

  <body>
    <header>
      <h1><a href="index.php">Allison's Philly Blog</a></h1> 
    </header>
    <div id="content">
    <?php

      print '<article>';

      //Prints title
      print '<h2>' . $row['title']  . '</h1>';

      //Prints the author
      print '<em>By: <a href="mailto: ' . $row['author_email_address']  . ' ">' . $row['author_name'] . '</a></em>';

      //Prints the article body
      print '<p>' . $row['body'] . '</p>';

      print '</article>';

    ?>
    </div>
  </body>

</html>
