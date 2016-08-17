        function init_map(){
        var myOptions = {zoom:16,center:new google.maps.LatLng(13.7594487,100.56349950000003),mapTypeId: google.maps.MapTypeId.ROADMAP};
        map = new google.maps.Map(document.getElementById('gmap_canvas'), myOptions);
        marker = new google.maps.Marker({map: map,position: new google.maps.LatLng(13.7594487,100.56349950000003)});
        infowindow = new google.maps.InfoWindow({content:'<strong>Title</strong><br>meechai bangkok<br>'});
        google.maps.event.addListener(marker, 'click', function(){infowindow.open(map,marker);});
        infowindow.open(map,marker);
      }
    
      
      $(document).ready(function(){
        $('#portfolioModal2').on('shown.bs.modal', function () {
          google.maps.event.trigger(map, "resize");
        });
        init_map();
        google.maps.event.addDomListener(window, 'load', init_map);
        
	    $(window).scroll(function() {        
    		$('#nsc').each(function(){
    		var imagePos = $(this).offset().top;
    
    		var topOfWindow = $(window).scrollTop();
    			if (imagePos < topOfWindow+600) {
    				$(this).addClass("fadeIn");
    			}
    		});
    		
    		$('#acm').each(function(){
    		var imagePos = $(this).offset().top;
    
    		var topOfWindow = $(window).scrollTop();
    			if (imagePos < topOfWindow+600) {
    				$(this).addClass("fadeIn");
    			}
    		});
    		
    		$('#java').each(function(){
    		var imagePos = $(this).offset().top;
    
    		var topOfWindow = $(window).scrollTop();
    			if (imagePos < topOfWindow+600) {
    				setTimeout(function(){ $('#java').addClass("expandOpen"); }, 300);
    			}
    		});
    		
    		$('#spring').each(function(){
    		var imagePos = $(this).offset().top;
    
    		var topOfWindow = $(window).scrollTop();
    			if (imagePos < topOfWindow+600) {
    				setTimeout(function(){ $('#spring').addClass("expandOpen"); }, 600);
    			}
    		});
    		
    		$('#hibernate').each(function(){
    		var imagePos = $(this).offset().top;
    
    		var topOfWindow = $(window).scrollTop();
    			if (imagePos < topOfWindow+600) {
    				setTimeout(function(){ $('#hibernate').addClass("expandOpen"); }, 900);
    			}
    		});
    		
    		$('#ruby').each(function(){
    		var imagePos = $(this).offset().top;
    
    		var topOfWindow = $(window).scrollTop();
    			if (imagePos < topOfWindow+600) {
    				setTimeout(function(){ $('#ruby').addClass("expandOpen"); }, 1200);
    			}
    		});  

    		
	    });
        
      });
