$(document).ready(function(){
	$('.flip').hover(function(){
        $(this).find('.card').toggleClass('flipped');

    });
});