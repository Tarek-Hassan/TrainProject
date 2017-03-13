<?php
$classname="ctrain";
$title="قطارات";
include("header.php");
?>
<!----------------------star of the the select station and submit------------------------------>
<form action="" method="post">
            <div class="">
                        <h3>departure_station:</h3>
                                    <select name="departure_station">
                                                            <option name="">select your departure_station</option>
                                                            <option name="">alexandria</option>
                                                            <option name="">damanhour</option>
                                                            <option name="">tanta</option>
                                                             <option name="">zagazig</option>
                                                            <option name="">Ismailiya</option>
                                                             <option name="">port said</option>
                                    </select>
                        <h3>arrival_station:</h3>
                                     <select name="arrival_station">
                                                             <option name="">select your"arrival_station</option>
                                                            <option name="">alexandria</option>
                                                            <option name="">damanhour</option>
                                                             <option name="">tanta</option>
                                                             <option name="">zagazig</option>
                                                             <option name="">Ismailiya</option>
                                                             <option name="">port said</option>
                                    </select>
                        <h3>type:</h3>
                                    <select name="class">
                                                        <option name="">select yourclass</option>
                                                        <option name="">AC</option>
                                                        <option name="">special</option>
                                                        <option name="">AC/special</option>
                                                        <option name="">express</option>
                                                        <option name="">ALL</option>
                                    </select>
                
                                    <input type="submit" name="submit" value="show" class="special" />
        </div>
        
</form>

<!---------------------- retrive to the databasse ein this part ------------------------------>
<section id="one" class="">
                <div class=" inner">
                            <article class="feature left " id="a">
				
                                                     <?php

//                                                        if(!isset($_POST["submit"])){echo"";}
                                                            $departure=$_POST["departure_station"];
                                                            $arrival=$_POST["arrival_station"];
                                                            $class=$_POST["class"];
//                                                        if(!$departure ="" && !$arrival=""){
//                                                         if($departure == $arrival){
//                                                              echo '<script> alert("you select the same place");</script>';
//                                                              }}
                                                                        
                                                         try{

                                                             include("connect.php");
                                                             if($class=ALL)
                                                             {
                                                                  $query= " SELECT * 
                                                                            FROM  `station` 
                                                                            WHERE  `departure_station` =  '" .$departure ."'
                                                                            AND  `arrival_station` =  '".$arrival ."'";
                                                             }
                                                             else{
                                                                    $query= " SELECT * 
                                                                            FROM  `station` 
                                                                            WHERE  `departure_station` =  '" .$departure ."'
                                                                            AND  `arrival_station` =  '".$arrival ."'
                                                                            AND  `class` =  '" .$class ."'";
                                                             }
                                                             
                                                             $result=mysql_query($query);   
                                                         ?>
                                        <table border="" class="wrapper style2 special">
                                                   <tr>
                                                      <th style="text-align: left; width: 200px;">id</th>
                                                      <th style="text-align: left; width: 200px;">departure_station</th>
                                                      <th style="text-align: left; width: 200px;">arrival_station</th>
                                                      <th style="text-align: left; width: 200px;">depature_time</th>
                                                      <th style="text-align: left; width: 200px;">arrival_time</th>
                                                      <th style="text-align: left; width: 200px;">class</th>
                                                    </tr>
                                                                <?php while($row = mysql_fetch_array($result)){?>
                                                     <tr>
                                                        <td style="text-align: left; width: 200px;"><?php echo $row{"id"};  ?></td>
                                                        <td style="text-align: left; width: 200px;"><?php echo $row{"departure_station"}; ?></td>
                                                        <td style="text-align: left; width: 200px;"><?php echo $row{"arrival_station"}; ?></td>
                                                        <td style="text-align: left; width: 200px;"><?php echo $row{"depature_time"}; ?></td>
                                                        <td style="text-align: left; width: 200px;"><?php echo $row{"arrival_time"}; ?></td>
                                                        <td style="text-align: left; width: 200px;"><?php echo $row{"class"}; ?></td>
                                                    </tr>
                                                              <?php  $row++; } ?>
                                         </table>

                                                            <?php    }

                                                         catch(Exception $e) {echo $e->getMessage();}?>

					               </article>
					               <article class="wrapper style2 special">
                         <!----------------------this for take ticket------------------------------>
                 <h2>buy by using paybal </h2>
                          <form action="https://www.paypal.com/cgi-bin/webscr" method="post" target="_top">
                                <input type="hidden" name="cmd" value="_s-xclick">
                                 <input type="hidden" name="hosted_button_id" value="LXXP8A7WT98DE">
                                    <table>
                                        <tr><td><input type="hidden" name="on0" value="departure_station">departure_station</td></tr>
                                        <tr><td>
                                            <select name="os0">
                                                <option value="alexandria">alexandria </option>
                                                <option value="damanhour">damanhour </option>
                                                <option value="Option 3">Option 3 </option>
                                            </select>
                                        </td></tr>
                                        <tr><td><input type="hidden" name="on1" value="arrival_station">arrival_station</td></tr>
                                        <tr><td>
                                            <select name="os1">
                                                <option value="alexandria">alexandria </option>
                                                <option value="damanhour">damanhour </option>
                                                <option value="tanta">tanta </option>
                                                <option value="zagazig">zagazig </option>
                                                <option value="Ismailiya">Ismailiya </option>
                                                <option value="port said">port said </option>
                                            </select> 
                                        </td></tr>
                                    <tr><td><input type="hidden" name="on2" value="S.S.N.">S.S.N.</td></tr><tr><td><input type="text" name="os2" maxlength="200"></td></tr>
                                    <tr><td><input type="hidden" name="on3" value="Cridit Number">Cridit Number</td></tr><tr><td><input type="password" name="os3" maxlength="200"></td></tr>
                                    </table>
                                    <input type="image" src="https://www.paypalobjects.com/en_US/i/btn/btn_buynowCC_LG.gif" border="0" name="submit" alt="PayPal - The safer, easier way to pay online!">
                                    <img alt="" border="0" src="https://www.paypalobjects.com/ar_EG/i/scr/pixel.gif" width="1" height="1">
                            </form>

                         
					               </article>
				            </div>
                </section>

<?php
include("footer.php");
?>