$(document).ready(function(){
    $('li a img').hover(
    	function(){
    	   $(this).fadeTo(100,0.3,function(){

    		   $(this).css('background-color','#000');
    	    });
    	},function(){
            $(this).fadeTo(100,1);
        });   
});