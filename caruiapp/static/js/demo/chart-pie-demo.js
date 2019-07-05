// Set new default font family and font color to mimic Bootstrap's default styling
		Chart.defaults.global.defaultFontFamily = 'Nunito',
		'-apple-system,system-ui,BlinkMacSystemFont,"Segoe UI",Roboto,"Helvetica Neue",Arial,sans-serif';
Chart.defaults.global.defaultFontColor = '#858796';

// Pie Chart Example
var ctx = document.getElementById("myPieChart").getContext('2d');
var myPieChart = new Chart(ctx,
		{
			type : 'doughnut',
			data : {
				labels : [ "강남구", "강동구", "강북구", "강서구", "관악구", "광진구", "구로구",
						"금천구", "노원구", "도봉구", "동대문구", "동작구", "마포구", "서대문구",
						"서초구", "성동구", "성북구", "송파구", "양천구", "영등포구", "용산구",
						"은평구", "종로구", "중구", "중랑구" ],

				datasets : [ {
					data : [ 390191, 167853, 89173, 260730, 151070, 129859,
							178806, 119994, 175831, 112583, 135626, 128893,
							179349, 115993, 227211, 121228, 155244, 305199,
							162040, 170574, 113341, 159015, 94485, 108240,
							127795 ],
					backgroundColor : [ '#FF0000', '#FF5E00', '#FFBB00',
							'#FFE400', '#ABF200', '#1DDB16', '#00D8FF',
							'#0054FF', '#0100FF', '#5F00FF', '#FF00DD',
							'#FFD8D8', '#FF007F', '#FFA7A7', '#FFB2D9',
							'#A566FF', '#5CD1E5', '#BCE55C', '#F2CB61',
							'#F15F5F', '#C4B73B', '#8041D9', '#D9418C',
							'#5D5D5D', '#990085' ],
					hoverBackgroundColor : [ '#2e59d9', '#17a673', '#2c9faf' ],
					hoverBorderColor : "rgba(234, 236, 244, 1)",
				} ],
			},
			options : {
				maintainAspectRatio : false,
				tooltips : {
					backgroundColor : "rgb(255,255,255)",
					bodyFontColor : "#858796",
					borderColor : '#dddfeb',
					borderWidth : 1,
					xPadding : 15,
					yPadding : 15,
					displayColors : false,
					caretPadding : 10,
				},
				legend : {
					display : false
				},
				cutoutPercentage : 80,
			},
		});
