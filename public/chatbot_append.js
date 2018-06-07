script_tag = document.getElementById("chaturscap");

var search_term = script_tag.getAttribute("data-organisation");
function creatediv(append_to , classo , id )
{
	var idiv = document.createElement("div");
	idiv.setAttribute("id" , id);
	idiv.setAttribute("class", classo);
	document.querySelector(append_to).appendChild(idiv);
	return idiv;
}
function prepareFrame( append_to ,src , classo) {
        var ifrm = document.createElement("iframe");
        ifrm.setAttribute("src", src);
        ifrm.setAttribute("allowtransparency" , "true");
        ifrm.setAttribute("class",  classo);
		document.querySelector(append_to).appendChild(ifrm);
 }
function preparehtml(){
	current_link = window.location.href;
	creatediv("body" , null , "zipi-chatbox");
	creatediv("#zipi-chatbox" , " " , "chatflow");
	creatediv("#chatflow" , "frameparent" , "frameparent");
	prepareFrame("#frameparent" , "http://localhost:3000/organisations/" + search_term + "/bot/redirect?url=" + current_link  , "main_chat");
//	creatediv("#zipi-chatbox" , "popup_wrapper" , "popup_wrapper");
//	prepareFrame("#popup_wrapper" , "/organisations/"+ search_term +"/bot/redirect?popup=true" , "iframe_popups");
	divf = creatediv("#zipi-chatbox" , null , "floatbutton");
	divf.setAttribute("onclick" , "zipitoggleChat();");
	creatediv("#floatbutton" , "opened  " , "open");
	creatediv("#floatbutton", "closed  " , "close");
}
preparehtml();