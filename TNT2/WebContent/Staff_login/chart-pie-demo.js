// Set new default font family and font color to mimic Bootstrap's default styling
Chart.defaults.global.defaultFontFamily = 'Nunito', '-apple-system,system-ui,BlinkMacSystemFont,"Segoe UI",Roboto,"Helvetica Neue",Arial,sans-serif';
Chart.defaults.global.defaultFontColor = '#858796';

$(function(){
	var jsonLabel = new Array();// ["Direct", "Referral", "Social"];
	var jsonData = new Array();//[43, 34, 23];
	$.ajax({
		url:"/TNT2/ChartControl",
		type:"post",
		success: function(result){
			console.log(result);
			var datas = JSON.parse(result);
			for(var i=0;i<datas.result.length;i++){
				jsonLabel.push(datas.result[i].score);
				jsonData.push(datas.result[i].cnt);
				//jsonLabel = ["Direct", "Referral", "Social"];
				//jsonData = [43, 34, 23];
			}
			console.log(jsonLabel);
			pieChart(jsonLabel, jsonData);
		}
	})
});

function pieChart(jsonLabel, jsonData) {
	// Pie Chart Example
	var ctx = document.getElementById("myPieChart");
	var myPieChart = new Chart(ctx, {
	  type: 'doughnut',
	  data: {
	    //labels: ["Direct", "Referral", "Social"],
		labels: jsonLabel,
	    datasets: [{
	      //data: [55, 30, 15],
	      data: jsonData,
	      backgroundColor: ['#4e73df', '#1cc88a', '#36b9cc'],
	      hoverBackgroundColor: ['#2e59d9', '#17a673', '#2c9faf'],
	      hoverBorderColor: "rgba(234, 236, 244, 1)",
	    }],
	  },
	  options: {
	    maintainAspectRatio: false,
	    tooltips: {
	      backgroundColor: "rgb(255,255,255)",
	      bodyFontColor: "#858796",
	      borderColor: '#dddfeb',
	      borderWidth: 1,
	      xPadding: 15,
	      yPadding: 15,
	      displayColors: false,
	      caretPadding: 10,
	    },
	    legend: {
	      display: false
	    },
	    cutoutPercentage: 80,
	  },
	});
	
}
