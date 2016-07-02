<?php if(isset($error) && $error==1){ ?>
<div class="alert alert-success alert-dismissable text-center" role="alert">
  <button type="button" class="close" data-dismiss="alert"><span aria-hidden="true">&times;</span><span class="sr-only">Close</span></button>
  <strong>Add success!</strong>
</div>
<?php }?>
<?php if(isset($error) && $error==2){ ?>
<div class="alert alert-success alert-dismissable text-center" role="alert">
  <button type="button" class="close" data-dismiss="alert"><span aria-hidden="true">&times;</span><span class="sr-only">Close</span></button>
  <strong>Update success!</strong>
</div>
<?php }?>
<?php if(isset($error) && $error==3){ ?>
<div class="alert alert-success alert-dismissable text-center" role="alert">
  <button type="button" class="close" data-dismiss="alert"><span aria-hidden="true">&times;</span><span class="sr-only">Close</span></button>
  <strong>Delete success!</strong>
</div>
<?php }?>
<section class="content">
          <div class="row">
            <div class="col-xs-12">
            <div class="box">
                <div class="box-body">
                  <table id="example2" class="table table-bordered table-hover">
                  <div class="form-group text-right">
                  <form id="search-admin" method="post" action="" enctype="multipart/form-data">
                    <div class="col-lg-6">
                      <div class="input-group">
                        <input type="text" name="search" class="form-control" placeholder="Search for the exam...">
                        <span class="input-group-btn">
                          <button class="btn btn-default" type="submit">Go!</button>
                        </span>
                      </div><!-- /input-group -->
                    </div>
                  </form>

                       <a href="admin/exam/add" type="button" class="btn btn-success btn-flat"><span class="glyphicon glyphicon-plus" aria-hidden="true"></span>Add</a>
                  </div>
                    <thead>
                      <tr>
                        <th>Name</th>
                        <th width="150px">Info</th>
                        <th>Time</th>                    
                        <th style="width: 150px">Created</th>
                      </tr>
                    </thead>
                    <tbody>
                    <?php foreach($exam as $u)
                      {
                     ?>
                      <tr>
                      <td >
                        <a href="admin/content_exam/update/<?php echo $u['id'] ?>"><?php echo $u['name']?></a>
                        </td>
                        <td >
                        <a href="admin/content_exam/update/<?php echo $u['id'] ?>"><?php if(strlen($u['info']) > 200 ){
                          echo substr($u['info'],0,200)."...";
                          } else echo $u['info'] ?></a>
                        </td>
                      
                        <td>
                        <a href="admin/content_exam/update/<?php echo $u['id'] ?>"><?php echo $u['time'] ?></a>
                        </td>
                        
                        <td><?php echo $u['created']; ?></td>

                      </tr> 
                      <?php } ?>                   
                    </tbody>                    
                  </table>
                </div>
              </div>

   <?php echo (isset($list_pagination))?$list_pagination:""; ?>