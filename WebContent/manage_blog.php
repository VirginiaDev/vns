<?php  include 'header.php';
if (file_exists('../config/connection.php')){
    require_once '../config/connection.php';
    }else{
    require_once './config/connection.php';
    }

?>
        <div id="layoutSidenav">
           <?php  include 'sidemenu.php';?>
            <div id="layoutSidenav_content">
                <main>
                    <div class="container-fluid">
                        <h1 class="mt-4">Tables</h1>
                        <ol class="breadcrumb mb-4">
                            <li class="breadcrumb-item"><a href="index">Dashboard</a></li>
                            <li class="breadcrumb-item active">Manage Blog</li>
                        </ol>
                        
                        <div class="card mb-4">
                            <div class="card-header"><i class="fas fa-table mr-1"></i>DataTable Example</div>
                            <div class="card-body">
                                <div class="table-responsive">
                                    <table class="table table-bordered" id="dataTable" width="100%" cellspacing="0">
                                        <thead>
                                            <tr>
                                                <th>S.No</th>
                                                <th>Category</th>
                                                <th>Title</th>
                                                <th>Post date</th>
                                                <th>Action</th>
                                            </tr>
                                        </thead>
                                        <tfoot>
                                           
                                        </tfoot>
                                      <tbody>
                                            <?php 
                                            $qry="select * from virtuoso_blog order by id";
                                            $sql= mysqli_query($conn, $qry);
                                            while($rows=mysqli_fetch_array($sql)){
                                            ?>
                                             <tr class="hide_sno_<?php echo $rows['id'];?>">
                                                <td><?php echo $rows['id'];?></td>
                                                <td><?php echo $rows['heading'];?></td>
                                                <td> <?php echo $rows['title'];?></td>
                                                <td><?php echo substr($rows['datetime'],0,10);?></td>
												<td><ul>
<!--                                                                                                    <li><i class="fas fa-pencil-alt"></i><span data-toggle="modal" data-target="#myModal"> Edit</span></li>-->
                                               <li><a data-toggle="modal" data-target="#myModal" onclick="edit_blog('edit',<?php echo $rows['id'];?>)" ><i class="fas fa-pencil-alt"></i><span> Edit</span></a></li>
													<li><a onclick="edit_blog('hide',<?php echo $rows['id'];?>)"><i class="fas fa-eye-slash"></i> Hide</a></li>
                                                                                                        <li><a onclick="edit_blog('del',<?php echo $rows['id'];?>)"><i class="fas fa-trash-alt"></i> Remove</a></li></ul></td>
                                            </tr>
						<?php }?>
                                        </tbody>
                                    </table>
                                </div>
                            </div>
                        </div>
                    </div>
                </main>
				
				
				<div id="myModal" class="modal fade" role="dialog">
  <div class="modal-dialog">

    <!-- Modal content-->
    <div class="modal-content">
      <div class="modal-header">
        <button type="button" class="close" data-dismiss="modal">&times;</button>
       
      </div>
      <div class="modal-body">
       
 
       
                    <div id="login-box" class="col-md-12">
                         <form id="login_form" class="form" action="ajax/ajaxmanageblog.php" method="post" name="form" enctype="multipart/form-data">
<!--                            <h3 class="text-center text-info">Create Blog</h3>-->
                            <div class="form-group">
                                <label for="category" class="text-info">Category</label><br>
                                <input type="text" name="cat" id="cat" class="form-control" required="required">
                            </div>
                            <div class="form-group">
                                <label for="Title" class="text-info">Title</label><br>
                               <input type="text" name="title" id="title" class="form-control" required="required">
                            </div>
							 <div class="form-group">
							<div class="input-group image-preview">
                <input type="text" class="form-control image-preview-filename" disabled="disabled"> <!-- don't give a name === doesn't send on POST/GET -->
                <span class="input-group-btn">
                    <!-- image-preview-clear button -->
                    <button type="button" class="btn btn-default image-preview-clear" style="display:none;">
                        <span class="glyphicon glyphicon-remove"></span> Clear
                    </button>
                    <!-- image-preview-input -->
                    <div class="btn btn-primary image-preview-input">
                        <span class="glyphicon glyphicon-folder-open"></span>
                        <span class="image-preview-input-title">Browse</span>
                        <input type="file" accept="image/png, image/jpeg, image/gif" name="blog_image" id="blog_image"/> <!-- rename it -->
                    </div>
                </span>
            </div><!-- /input-group image-preview [TO HERE]--> 
							</div>
							
							<div class="container-fluid">
			<div class="row">
			
			
					<div class="row">
						<div class="col-lg-12">
							<textarea id="txtEditor" name="textblog"></textarea> 
						</div>
					</div>
			
			</div>
		</div>
                            <div>
                                <div  class="btngroup text-left" style="float:left;">
                                     <a href="" class="btn btn-info" id="add_more">Add More</a>
<!--                                     <input  type="button" class="btn btn-info" id="add_more" value="Add More">-->
                                </div>
                            <div  class="btngroup text-right" style="float:right;">
<!--                                <a href="#" class="btn btn-success">Save</a>-->
<button  type="submit" class="btn btn-success">Save</button>

<a href="javascript:window.location.reload(true)" class="btn btn-danger">Cancel</a>
                            </div>
                            </div>
                        </form>
                    </div>
             
      
      </div>
      <div class="modal-footer">
        <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
      </div>
    </div>

  </div>
</div>
                     <?php  include 'footer.php';?>
            </div>
        </div>
 <script src="js/manage_blog.js"></script>
       
</body>
</html>