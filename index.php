<!DOCTYPE html>
<html>
 <head>
  <title>jQuery AJAX Pagination with Next Previous First Last page Link</title>
  <link rel="stylesheet" href="pagination-style.css" />
  <script src="jquery.min.js"></script> 
 </head>
 <body>
<div class="post-search-panel">
    <h1 style="text-align:center">jQuery AJAX Pagination with Next Previous First Last page Link</h1>    
    <input style="width: 200px" type="text" id="keywords" placeholder="Type student name to filter" onkeyup="searchFilter()"/>
    <select id="sortBy" onchange="searchFilter()">
        <option value="">Sort By</option>
        <option value="asc">Ascending</option>
        <option value="desc">Descending</option>
    </select>
    <span class="loading-overlay" style="display:none"><span class="overlay-content">Loading...</span></span>
</div>
<div class="post-wrapper">    
    <div id="posts_content">
    <?php
    //Include pagination class file
    include('pagination.php');
    
    //Include database configuration file
    include('dbConfig.php');
    
    $limit = 10;
    
    //get number of rows
    $queryNum = $db->query("SELECT COUNT(*) as postNum FROM tbl_student");
    $resultNum = $queryNum->fetch_assoc();
    $rowCount = $resultNum['postNum'];
    
    //initialize pagination class
    $pagConfig = array(
        'totalRows' => $rowCount,
        'perPage' => $limit,
        'link_func' => 'searchFilter'
    );
    $pagination =  new Pagination($pagConfig);
    
    //get rows
    $query = $db->query("SELECT * FROM tbl_student ORDER BY student_id DESC LIMIT $limit");   
    //print_r($query) ;  die;
    //if($query->num_rows > 0){ ?>
        <div class="posts_list">
        <?php
            while($row = $query->fetch_assoc()){ 
                $postID = $row['student_id'];
        ?>
            <div class="list_item"><a href="javascript:void(0);"><h2><?php echo $row["student_name"]; ?></h2></a></div>
        <?php } ?>
        </div>
        <?php echo $pagination->createLinks(); ?>
    <?php  ?>
    </div>
</div>
 </body>
<script src="jquery.min.js"></script>
<script>
function searchFilter(page_num) {
    page_num = page_num?page_num:0;
    var keywords = $('#keywords').val();
    var sortBy = $('#sortBy').val();
    $.ajax({
        type: 'POST',
        url: 'getData.php',
        data:'page='+page_num+'&keywords='+keywords+'&sortBy='+sortBy,
        beforeSend: function () {
            $('.loading-overlay').show();
        },
        success: function (html) {
            $('#posts_content').html(html);
            $('.loading-overlay').fadeOut("slow");
        }
    });
}
</script>
</html>