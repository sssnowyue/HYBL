function chkinput(form){
	if(form.password.value.length<8){
		alert("设置密码八位以上！");
		form.password.select();
		return(false);
	}
	if(form.password.value!=form.password1.value){
		alert("密码与重复不同！");
		form.password1.select();
		return(false);
	}
	return(true);
}