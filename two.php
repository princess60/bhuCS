<!DOCTYPE html>
<html lang="en">
<?php
	
	include('inc/connect.php');
	include('inc/header.php');
	include('inc/functions.php');
?>
<style type="text/css">
	p{
		text-align: justify;
	}
</style>

<!-- Main -->
				<div id="main-wrapper">
					<div id="main" class="container">
						<div class="row">
							<div class="12u">
								<div class="content">

									<!-- Content -->
										<section class="box features">
											<h2 class="major"><span>200 LEVEL</span></h2>
							<p><strong>FIRST SEMESTER<strong></p>
						
						<div class="table-responsive">
							<table border="8">
								<tr>
									<td>N.o.</td>
									<td>COURSES</td>
									<td>TITLE</td>
									<td>CREDIT UNIT</td>
								</tr>
								<?php

									$query_courses_first_semester="SELECT * FROM courses WHERE semester='first' AND level='two' ";
			 		                                $result_first_semester=mysql_query($query_courses_first_semester,$connection);
			 		                                $counter_table_sn=1;
			 		                                $total_sum_credit_unit=0;
			 		                                while($row=mysql_fetch_assoc($result_first_semester)){
			 		                                		echo "<tr ><td>".$counter_table_sn."</td><td>".$row['course_title']."</td><td> ".$row['course_code']."</td><td>".$row['credit_units']."</td></tr>";
			 		                                		$counter_table_sn++;
			 		                                		$total_sum_credit_unit=$total_sum_credit_unit+$row['credit_units'];
			 		                                }

								?>
								
								<tr>
									<td></td>
									<td></td>
									<td>Total</td>
									<td><?php echo $total_sum_credit_unit; ?></td>
								</tr>
							</table>
							
							<p><strong>SECOND SEMESTER<strong></p>
						
						<div class="table-responsive">
							<table border="8">
								<tr>
									<td>N.o.</td>
									<td>COURSES</td>
									<td>TITLE</td>
									<td>CREDIT UNIT</td>
								</tr>
								<?php

									$query_courses_second_semester="SELECT * FROM courses WHERE semester='second' AND level='two' ";
			 		                                $result_second_semester=mysql_query($query_courses_second_semester,$connection);
			 		                                $counter_table_sn=1;
			 		                                $total_sum_credit_unit=0;
			 		                                while($row=mysql_fetch_assoc($result_second_semester)){
			 		                                		echo "<tr ><td>".$counter_table_sn."</td><td>".$row['course_title']."</td><td> ".$row['course_code']."</td><td>".$row['credit_units']."</td></tr>";
			 		                                		$counter_table_sn++;
			 		                                		$total_sum_credit_unit=$total_sum_credit_unit+$row['credit_units'];
			 		                                }

								?>
								<tr>
									<td></td>
									<td></td>
									<td>Total</td>
									<td><?php echo $total_sum_credit_unit; ?></td>
								</tr>
							</table>
							</section>
			</section>
							
						</div>
					</div>
				</div>
						
						<div class="row 200%">
							<div class="12u">
		<!-- Features -->
									<section class="box features">
										<h2 class="major"><span>*NOTE*</span></h2>
										<div>
											<div class="row">
												<div class="3u 12u(mobile)">

													<!-- Feature -->
														<section class="box feature">
															
															
															<p>
																1.	It is Mandatory for Computer Science students to complete the CISCO
																certifications (CCNA 1 to CCNA2) before graduation.
															</p>
														</section>

												</div>
												<div class="3u 12u(mobile)">

													<!-- Feature -->
														<section class="box feature">
															
															
															<p>
																1.	It is Mandatory for Computer Science students to complete the CISCO
																certifications (CCNA 1 to CCNA2) before graduation.
															</p>
														</section>

												</div>
												<div class="3u 12u(mobile)">

													<!-- Feature -->
														<section class="box feature">
															<p>
																2.	Students are required to write A+ certification Examination (external). There
																will be no internal Exam for CMP 10 and CMP107.
															</p>
														</section>

												</div>
												<div class="3u 12u(mobile)">

													<!-- Feature -->
														<section class="box feature">
															
															<p>
																3. Students are reuired to enhance thier French or Arabic Language skills by 
																registering for and obtaining external certification before graduation.
															</p>
														</section>

												</div>
												<div class="3u 12u(mobile)">

													<!-- Feature -->
														<section class="box feature">
															
															<p>
																4. Certificates will be issued to all successfull students in CMP103 
																Examination.
															</p>
														</section>

												</div>
							</div>
						</div>
					</div>
				</div>

</body>
<?php
	include('inc/footer2.php');
?>
</html>