// JavaScript Document

function changeCode() {
	var imageCode = document.getElementById("imageCode");
	imageCode.src = path+"?"+new Date();
	console.log(new Date());
};
function checkName(userName){
	var myName=userName
	$.ajax({
		type : "post",
		url : path + "/checkName",
		dataType : "json",
		data : {
			"userName" :myName
		},
		success : function(data) {
			if (data.result =='1') {
				window.alert("用户名可用");
			} else {
				window.alert("该用户已存在");
			}
		}
	})
}