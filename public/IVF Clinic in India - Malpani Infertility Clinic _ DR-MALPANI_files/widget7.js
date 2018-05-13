
var brandid="";
var urlpath="";
var brandproductid;
var	brandproductskew;
var	brandproductcode;
var brandcategoryid;
var widgetUrlpath;

InitialCall();

function InitialCall(){
	//var scripts = document.getElementsByTagName('script');
	//res=scripts[scripts.length-1];	 
	var res = document.getElementById("widget7");	
	brandid=res.getAttribute("brandId");	
		urlpath=res.getAttribute("urlpath");
		brandapikey=res.getAttribute("apiKey");
		brandproductid=res.getAttribute("productid");
		brandproductskew=res.getAttribute("productskew");
		brandproductcode=res.getAttribute("productcode");
		brandcategoryid=res.getAttribute("categoryid");	
		widgetUrlpath=res.getAttribute("widgeturlpath");
		
		dynamicnameseven = guid();	
		res.parentNode.innerHTML += "<div style='float:left' ><div style=\"background-color: #fff;border-bottom: 5px solid #17b9c4;border-radius: 4px;box-shadow: -1px 1px 5px -1px #cccccc;color:#212433;border-bottom: 0 none;border-radius: 4px 4px 0 0;margin-bottom: 0px;padding:10px;\">" +
				"<div class=\"\" style=\"margin-top: 15px; text-align:center;\"> <div class=\"\" style=\"background: rgba(0, 0, 0, 0) url('"+urlpath+"assets\/images\/tellofy-ratings-new-light.png') repeat-x scroll 0 -40px; width:216px; display: inline-block;height: 40px;position: relative;vertical-align: top;\">" +
				" <div id=\"latest_review_ratting\" class=\"seventh_widgets_review_rating"+dynamicnameseven+" \" style=\"background: rgba(0, 0, 0, 0) url('"+urlpath+"assets\/images\/tellofy-ratings-new-light.png') repeat-x scroll 0 0;height:40px;left: 0;max-width: 100%;position: absolute;top: 0; width: 0%;\"><\/div> <\/div><span class=\"seventh_widget_tot_percent"+dynamicnameseven+" \" style=\"left: 2px;position: relative;top: 10px;font-weight: bold;font-size: 20px;font-family: 'Lato', sans-serif;\">0<\/span><\/div> " +
				"<div class=\"\" style=\"font-size: 14px;margin: 5px 0px;width: 100%; xfloat: left;text-align: center;font-weight: bold; display: inline-block; font-family: arial;\"> <span class=\"seventh_widget_tot_rate"+dynamicnameseven+" \" style=\"left: 0px;position: relative;top: 0px;\">0<\/span> based on <span class=\"blue-txt seventh_widget_tot_nos"+dynamicnameseven+" \">0 reviews<\/span> <\/div> <\/div> <div class=\"\" style=\"background-color: #17b9c4;border-radius: 0 0 4px 4px;padding: 8px;\"> <div class=\"\" style=\"text-transform: uppercase;text-align: center;font-size: 14px;\">" +
				"<span class=\"\" style=\"color: #fff;\">Powered by <span class=\"\" style=\"color: #212433;text-transform: lowercase;font-size: 15px;\">tellofy<\/span><\/span> <\/div> <\/div> <\/div>";
		document.write("<script>setInterval(function() { callAjaxseven('"+brandid+"','"+urlpath+"','"+brandapikey+"','"+brandproductid+"','"+brandproductskew+"','"+brandproductcode+"','"+brandcategoryid+"','"+widgetUrlpath+"','"+dynamicnameseven+"'); }, 10000 );</script>");
		callAjaxseven(brandid, urlpath, brandapikey, brandproductid, brandproductskew, brandproductcode, brandcategoryid, widgetUrlpath, dynamicnameseven);		
}

function callAjaxseven(brandid, urlpath, brandapikey, brandproductid, brandproductskew, brandproductcode, brandcategoryid, widgetUrlpath, dynamicnameseven){
	var xhttp = new XMLHttpRequest();
	var respons="";
			 
	xhttp.open('GET', encodeURI(""+widgetUrlpath+"api/reviews.json?brandRefID="+brandid+"&productid="+brandproductid+"&productskew="+brandproductskew+"&productcode="+brandproductcode+"&categoryid="+brandcategoryid+"&apiKey="+brandapikey+"&reviewCount="+sessionStorage.getItem(dynamicnameseven)+""));
	xhttp.send();xhttp.onload = function() {
	    if (xhttp.status === 200) {
	        respons = JSON.parse(xhttp.responseText);
	        if(respons.NewReviewList==true){
	        sevenrenderingData(respons, dynamicnameseven);
	        }
	    }
	};
}

function sevenrenderingData(finalop, dynamicnameseven){
	var brand_details=finalop.Brand;
	var review_details=finalop.BrandReviewStat;
	var totalRatingCount = review_details.totalRatingCount;
    var averageRating = ((review_details.totalRatingValue/totalRatingCount*10)/10).toFixed(1);
    sessionStorage.setItem(dynamicnameseven, totalRatingCount);
    
    var w=document.getElementsByClassName('seventh_widget_tot_percent'+dynamicnameseven+'');
    var x=document.getElementsByClassName('seventh_widgets_review_rating'+dynamicnameseven+'');	    
    var y = document.getElementsByClassName('seventh_widget_tot_rate'+dynamicnameseven+'')
    var z=document.getElementsByClassName('seventh_widget_tot_nos'+dynamicnameseven+'');
    
    var i;var j;var k;var l;
    for (i = 0; i < w.length; i++) {
    	document.getElementsByClassName('seventh_widget_tot_percent'+dynamicnameseven+'')[i].innerHTML=((100*averageRating)/5).toFixed(0)+'%';
    }
    for (j = 0; j < x.length; j++) {
    	document.getElementsByClassName('seventh_widgets_review_rating'+dynamicnameseven+'')[j].style.width=((100*averageRating)/5)+'%';
      }
    for (k = 0; k < y.length; k++) {
        y[k].innerHTML=averageRating;
      }
    for (l = 0; l < z.length; l++) {
    	document.getElementsByClassName('seventh_widget_tot_nos'+dynamicnameseven+'')[l].innerHTML='<a href="'+urlpath+"brand/"+brand_details.tellofyBrandUrl +'" target="_blank" style="color: #0ab6c0;">'+totalRatingCount+' reviews </a>';
      }
    
    
}

function guid() {
	return s4() + s4() + '-' + s4() + '-' + s4() + '-' +
	    s4() + '-' + s4() + s4() + s4();
}

function s4() {
	return Math.floor((1 + Math.random()) * 0x10000)
	    .toString(16)
	    .substring(1);
}

window.onbeforeunload = closingCode;
function closingCode(){
	sessionStorage.setItem(dynamicnameseven, "");
   return null;
}