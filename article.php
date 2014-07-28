<?php

//Store the id from the URL into $id
$id = $_GET['id'];

//Connect to MySQL
$connection = mysql_connect('localhost', 'root', '');

//Select the 'allison_blog' database
mysql_select_db('allison_blog');

//Check connection
if(!$connection){
  die('Failed to connect to MySQL: ' . mysql_connect_error());
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

        print 'The Pirate Blog: ' . $row['title'];

      ?>
    </title>
    <link rel="stylesheet" type="text/css" href="style.css" />
  </head>

  <body>

    <?php

      print '<article>';

      //Prints title
      print '<h1>' . $row['title']  . '</h1>';

      //Prints the author
      print '<em>By: <a href="mailto: ' . $row['author_email_address']  . ' ">' . $row['author_name'] . '</a></em>';

      //Prints the article body
      print '<p>' . $row['body'] . '</p>';

      print '</article>';

    ?>

  </body>

</html>
