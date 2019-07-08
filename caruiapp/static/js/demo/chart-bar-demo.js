// Set new default font family and font color to mimic Bootstrap's default styling
Chart.defaults.global.defaultFontFamily = 'Nunito',
		'-apple-system,system-ui,BlinkMacSystemFont,"Segoe UI",Roboto,"Helvetica Neue",Arial,sans-serif';
Chart.defaults.global.defaultFontColor = '#858796';

function number_format(number, decimals, dec_point, thousands_sep) {
	// * example: number_format(1234.56, 2, ',', ' ');
	// * return: '1 234,56'
	number = (number + '').replace(',', '').replace(' ', '');
	var n = !isFinite(+number) ? 0 : +number, prec = !isFinite(+decimals) ? 0
			: Math.abs(decimals), sep = (typeof thousands_sep === 'undefined') ? ','
			: thousands_sep, dec = (typeof dec_point === 'undefined') ? '.'
			: dec_point, s = '', toFixedFix = function(n, prec) {
		var k = Math.pow(10, prec);
		return '' + Math.round(n * k) / k;
	};
	
	// Fix for IE parseFloat(0.55).toFixed(0) = 0;
	s = (prec ? toFixedFix(n, prec) : '' + Math.round(n)).split('.');
	if (s[0].length > 3) {
		s[0] = s[0].replace(/\B(?=(?:\d{3})+(?!\d))/g, sep);
	}
	if ((s[1] || '').length < prec) {
		s[1] = s[1] || '';
		s[1] += new Array(prec - s[1].length + 1).join('0');
	}
	return s.join(dec);
}

// Bar Chart Example
var ctx = document.getElementById("myBarChart");
var myBarChart = new Chart(
		ctx,
		{
			type : 'bar',
			data : {
				labels : [ "강남구", "강동구", "강북구", "강서구", "관악구", "광진구", "구로구",
						"금천구", "노원구", "도봉구", "동대문구", "동작구", "마포구", "서대문구",
						"서초구", "성동구", "성북구", "송파구", "양천구", "영등포구", "용산구",
						"은평구", "종로구", "중구", "중랑구" ],
				datasets : [ {
					label : "Revenue",
					backgroundColor : [ '#FF0000', '#FF5E00', '#FFBB00',
							'#FFE400', '#ABF200', '#1DDB16', '#00D8FF',
							'#0054FF', '#0100FF', '#5F00FF', '#FF00DD',
							'#FFD8D8', '#FF007F', '#FFA7A7', '#FFB2D9',
							'#A566FF', '#5CD1E5', '#BCE55C', '#F2CB61',
							'#F15F5F', '#C4B73B', '#8041D9', '#D9418C',
							'#5D5D5D', '#990085' ],
					hoverBackgroundColor : "#2e59d9",
					borderColor : "#4e73df",
					data : [ 390191, 167853, 89173, 260730, 151070, 129859,
							178806, 119994, 175831, 112583, 135626, 128893,
							179349, 115993, 227211, 121228, 155244, 305199,
							162040, 170574, 113341, 159015, 94485, 108240,
							127795 ],
				} ],
			},
			options : {
				maintainAspectRatio : false,
				layout : {
					padding : {
						left : 10,
						right : 25,
						top : 25,
						bottom : 0
					}
				},
				scales : {
					xAxes : [ {
						time : {
							unit : 'month'
						},
						gridLines : {
							display : false,
							drawBorder : false
						},
						ticks : {
							maxTicksLimit : 25
						},
						maxBarThickness : 25,
					} ],
					yAxes : [ {
						ticks : {
							min : 0,
							max : 400000,
							maxTicksLimit : 5,
							padding : 10,
							// Include a dollar sign in the ticks
							callback : function(value, index, values) {
								return number_format(value);
							}
						},
						gridLines : {
							color : "rgb(234, 236, 244)",
							zeroLineColor : "rgb(234, 236, 244)",
							drawBorder : false,
							borderDash : [ 2 ],
							zeroLineBorderDash : [ 2 ]
						}
					} ],
				},
				legend : {
					display : false
				},
				tooltips : {
					titleMarginBottom : 10,
					titleFontColor : '#6e707e',
					titleFontSize : 14,
					backgroundColor : "rgb(255,255,255)",
					bodyFontColor : "#858796",
					borderColor : '#dddfeb',
					borderWidth : 1,
					xPadding : 15,
					yPadding : 15,
					displayColors : false,
					caretPadding : 10,
					callbacks : {
						label : function(tooltipItem, chart) {
							var datasetLabel = chart.datasets[tooltipItem.datasetIndex].label
									|| '';
							return datasetLabel + number_format(tooltipItem.yLabel);
						}
					}
				},
			}
		});
