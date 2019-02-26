function ajax(gf, id) {
	var xhttp = new XMLHttpRequest();
	xhttp.onreadystatechange = function() {
	if (this.readyState == 4 && this.status == 200) {
		var str = "data:image/png;base64, ";
		str += this.responseText;
		document.getElementById(id).src = str;}};
	xhttp.open("GET", gf, true);
	xhttp.send();
}
