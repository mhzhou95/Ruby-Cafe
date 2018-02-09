
var modal = document.getElementById('modal')
var close = document.getElementById('close')


var myModal = new Modal ()

function Modal (){
	setTimeout(function popup(){
		modal.style.display ='block';
	}, 2000); 
	close.onclick = function closeout(){
		modal.style.display = 'none'
	}
}


