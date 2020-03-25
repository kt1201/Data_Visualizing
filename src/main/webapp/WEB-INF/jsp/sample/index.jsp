<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>

<script
	src="http://ajax.googleapis.com/ajax/libs/jquery/1.9.1/jquery.min.js"></script>
<script type="text/javascript"
	src="https://www.gstatic.com/charts/loader.js"></script>

<script>
	$(document)
			.ready(
					function() {

						$
								.ajax({
									type : 'GET',
									dataType : "json",
									contentType : "application/json",
									url : '${pageContext.request.contextPath}/api/sample/findall',
									success : function(result) {
										google.charts.load('current',
												{
													'packages' : [ 'corechart',
															'table' ]
												});
										google.charts
												.setOnLoadCallback(function() {
													drawChart(result);
												});
										google.charts
												.setOnLoadCallback(function() {
													drawTable(result);
												});
									}
								});

						function drawChart(result) {

							var data = new google.visualization.DataTable();
							data.addColumn('string', 'TIME');
							data.addColumn('number', 'one');
							data.addColumn('number', 'two');
							data.addColumn('number', 'three');
							data.addColumn('number', 'four');
							data.addColumn('number', 'five');
							var dataArray = [];
							$.each(result, function(i, obj) {
								dataArray.push([ obj.TIME, obj.one, obj.two, obj.three, obj.four, obj.five ]);
							});

							data.addRows(dataArray);

							var piechart_options = {
								title : 'Pie Chart: Sample Data',
								width : 700,
								height : 300
							};
							var piechart = new google.visualization.PieChart(
									document.getElementById('piechart_div'));
							piechart.draw(data, piechart_options);

							var barchart_options = {
								title : "Bar Chart: Sample Data",
								width : 500,
								height : 300,
								bar : {
									groupWidth : "100%"
								},
								legend : {
									position : "none"
								}
							};
							var barchart = new google.visualization.BarChart(
									document.getElementById('barchart_div'));
							barchart.draw(data, barchart_options);

						}

						function drawTable(result) {

							var data = new google.visualization.DataTable();
							data.addColumn('string', 'TIME');
							data.addColumn('number', 'one');
							data.addColumn('number', 'two');
							data.addColumn('number', 'three');
							data.addColumn('number', 'four');
							data.addColumn('number', 'five');
							var dataArray = [];
							$.each(result, function(i, obj) {
								dataArray.push([ obj.TIME, obj.one, obj.two, obj.three, obj.four, obj.five ]);
							});

							data.addRows(dataArray);

							var table_options = {
								width : '100%',
								height : '100%',
								showRowNumber : true
							};
							var table = new google.visualization.Table(document
									.getElementById('table_div'));
							table.draw(data, table_options);
						}
					});
</script>

</head>
<body>

	<table class="colums">
		<tr>
			<td><div id="piechart_div" style="border: 1px solid #ccc"></div></td>
			<td><div id="barchart_div" style="border: 1px solid #ccc"></div></td>
		</tr>
		<tr>
			<td><div id="table_div" style="border: 1px solid #ccc"></div></td>
		</tr>
	</table>

</body>
</html>