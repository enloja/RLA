
function div_show(idDiv){
	if(document.getElementById(idDiv).style.display == 'block')
		document.getElementById(idDiv).style.display = "none";
	else
		document.getElementById(idDiv).style.display = "block";
}
function div_hide(id){
		document.getElementById(id).style.display = "none";	
}