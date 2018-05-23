<?php
//Include database configuration file
include('include/db_connect.php');

if(isset($_POST["division_id"]) && !empty($_POST["division_id"]))
{
    //Get all district data
    $query = $mysqli->query("SELECT * FROM district WHERE division_id = ".$_POST['division_id']." ORDER BY district_name ASC");

    //Count total number of rows
    $rowCount = $query->num_rows;

    //Display states list
    if($rowCount > 0)
    {
        echo '<option value="">Select District</option>';
        
        while($row = $query->fetch_assoc())
        {
            echo '<option value="'.$row['district_id'].'">'.$row['district_name'].'</option>';
        }
    }
    else
    {
        echo '<option value="">District Not Available</option>';
    }
}

if(isset($_POST["district_id"]) && !empty($_POST["district_id"]))
{
    //Get all upazila data
    $query = $mysqli->query("SELECT * FROM upazila WHERE district_id = ".$_POST['district_id']." ORDER BY upazila_name ASC");

    //Count total number of rows
    $rowCount = $query->num_rows;

    //Display upazilas list
    if($rowCount > 0)
    {
        echo '<option value="">Select Upazila</option>';
        
        while($row = $query->fetch_assoc())
        {
            echo '<option value="'.$row['upazila_id'].'">'.$row['upazila_name'].'</option>';
        }
    }
    else
    {
        echo '<option value="">Upazila Not Available</option>';
    }
}

if(isset($_POST["upazila_id"]) && !empty($_POST["upazila_id"]))
{
    //Get all union data
    $query = $mysqli->query("SELECT * FROM union_council WHERE upazila_id = ".$_POST['upazila_id']." ORDER BY union_name ASC");

    //Count total number of rows
    $rowCount = $query->num_rows;

    //Display unions list
    if($rowCount > 0)
    {
        echo '<option value="">Select Union</option>';
        
        while($row = $query->fetch_assoc())
        {
            echo '<option value="'.$row['union_id'].'">'.$row['union_name'].'</option>';
        }
    }
    else
    {
        echo '<option value="">Union Not Available</option>';
    }
}

//edited
if(isset($_POST["union_id"]) && !empty($_POST["union_id"]))
{
    //Get all union data
    $query = $mysqli->query("SELECT * FROM test_epi_table WHERE union_id = ".$_POST['union_id']);

    //Count total number of rows
    $rowCount = $query->num_rows;

    //Display unions list
    if($rowCount > 0)
    {
        echo "<hr>";
        echo "<h3 align='center'>EPI Schedule</h3>";
        echo "<table class='table table-bordered'>
            <tr>
                <th>Ward No</th>
                <th>Sub-Block</th>
            </tr>";

        while($row = $query->fetch_assoc())
        {
            echo "<tr>";
            echo "<td>" . $row['ward_no'] . "</td>";
            echo "<td>" . $row['sub_block_name'] . "</td>";
            echo "</tr>";
        }
        echo "</table>";
        echo "<hr>";
    }
    else
    {
        echo "<br>";
        echo "<h3 align='center'>Sorry, No Available Information!</h3>";
        echo "<hr>";
    }
}
?>
