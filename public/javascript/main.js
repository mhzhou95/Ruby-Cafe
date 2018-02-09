
var modal = document.getElementById('modal')
var close = document.getElementById('close')
var submit = document.getElementById('submit')


var myModal = new Modal ()

function Modal (){
	setTimeout(function popup(){
		modal.style.display ='block';
	}, 2000); 
	close.onclick = function closeout(){
		modal.style.display = 'none'
	}
	submit.onclick = function thankYou(){
					thanks.style.display = 'block';
					modaltext.style.display = 'none';
					email.style.display = 'none';
					submit.style.display = 'none';
	}
}


