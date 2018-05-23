<?php
?>
<!DOCTYPE html>
<html>
<head>
  <meta charset="utf-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <title>EPI INFO</title>
  <script src="jquery.min.js"></script>
  <script type="text/javascript" src="https://code.jquery.com/jquery-3.2.1.min.js"></script>
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0-beta.2/css/bootstrap.min.css" integrity="sha384-PsH8R72JQ3SOdhVi3uxftmaW6Vc51MKb0q5P2rRUpPvrszuE4W1povHYgTpBfshb" crossorigin="anonymous">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.1/jquery.min.js"></script>
  
  <script>
    window.load=$( document ).ready(function() 
    {
      $.ajax(
      {
        type:'POST',
        url:'epiInfoAjaxData.php',
        success:function(html)
        {
          $('#division').html(html);
        }
      });	   
		});  
					
		$( document ).ready(function() 
    {
			$('#division').on('change',function()
      {//change function on division to display all district 
        var divisionID = $(this).val();
        if(divisionID)
        {
          $.ajax(
          {
            type:'POST',
            url:'ajaxData.php',
            data:'division_id='+divisionID,
            success:function(html)
            {
              $('#district').html(html);
              $('#upazila').html('<option value="">Select District First</option>'); 
              $('#union').html('<option value="">Select Upazila First</option>'); 
            }
          }); 
        }
        else
        {
          $('#district').html('<option value="">Select Division First</option>');
          $('#upazila').html('<option value="">Select District First</option>');
        }
      });
    
    $('#district').on('change',function()
    {//change district to display all upazila
      var districtID = $(this).val();
      if(districtID)
      {
        $.ajax(
        {
          type:'POST',
          url:'ajaxData.php',
          data:'district_id='+districtID,
          success:function(html)
          {
            $('#upazila').html(html);
          }
        }); 
      }
      else
      {
        $('#upazila').html('<option value="">Select District First</option>');
      }
    });

    $('#upazila').on('change',function()
    {//change upazila to display all union
      var upazilaID = $(this).val();
      if(upazilaID)
      {
        $.ajax(
        {
          type:'POST',
          url:'ajaxData.php',
          data:'upazila_id='+upazilaID,
          success:function(html)
          {
            $('#union').html(html);
          }
        }); 
      }
      else
      {
        $('#union').html('<option value="">Select Upazila First</option>'); 
      }
    });

    $('#union').on('change',function()
    {//change upazila to display all union
      var unionID = $(this).val();
      if(unionID)
      {
        $.ajax(
        {
          type:'POST',
          url:'ajaxData.php',
          data:'union_id='+unionID,
          success:function(html)
          {
            $('#center').html(html);
          }
        }); 
      }
      else
      {
        $('#center').html(html); 
      }
    });
	 });
	</script>
</head>
<hr>
<h1 align="center">EPI Schedule Details</h1>
<hr>
<br>
<div class="container">
  <div class="row">
    <div class="col-md-3">
      <h5>Division</h5>
      <select name="division" id="division" data-live-search="true" class="chosen selectpicker form-control" autofocus="autofocus" required>
        <option value="">Select Division</option>
      </select>
    </div>
    <br>
    <div class="col-md-3">
      <h5>District</h5>
      <select class="selectpicker form-control" name="district" id="district" required>
        <option value="">Select Division First</option>
      </select>
    </div>
    <br>
    <div class="col-md-3">
      <h5>Upazila</h5>
      <select class="selectpicker form-control" name="upazila" id="upazila" standard title="Select Division First" autofocus="autofocus" required>
        <option value="">Select Division First</option>
      </select>
    </div>
    <br>
    <div class="col-md-3">
      <h5>Union</h5>
      <select class="selectpicker form-control" name="union" id="union" standard title="Select Division First" autofocus="autofocus" required>
        <option value="">Select Division First</option>
      </select>
    </div>
  </div>
  <br>
  <div class="row">
    <div class="table table-sm" align='center'>
      <div name="center" id="center"></div>
    </div>
  </div>
</div>
</br>
               
