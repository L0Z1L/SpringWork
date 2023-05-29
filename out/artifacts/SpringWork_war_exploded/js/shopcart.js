var oTbody = document.getElementsByTagName('tbody')[0];
var aTr = oTbody.getElementsByTagName('tr');

var oThead = document.getElementsByTagName('thead')[0];
var oTr = oThead.getElementsByTagName('tr')[0];
var oCheckAll = oTr.getElementsByTagName('input')[0];
var aCheck = getClass('checkbox',oTbody);

for (var i = 0; i < aTr.length; i++) {
	aCheck[i].onclick = function(){
		var oCheck = this.parentNode.parentNode
		if(oCheck.className == 'selected'){
			oCheck.className = '';
			this.checked = false;
			var price = oCheck.getElementsByTagName("input")[3]
			updateprice_reduce(price)
			var id=oCheck.getElementsByTagName("th")[2].innerText
			deleteinput(id)
		}else{

			oCheck.className = "selected";
			this.checked = true;
			var price = oCheck.getElementsByTagName("input")[3]
			updateprice_add(price)

			var cart_id =oCheck.getElementsByTagName("th")[1].innerText
			var id=oCheck.getElementsByTagName("th")[2].innerText
			creatinput("cart_id",id,cart_id);
		}
		//判断是否全被勾上
		var aCheckTr = getClass('selected',oTbody);
		if(aCheckTr.length == aTr.length){
			oCheckAll.checked = true;
		}
		else{
			oCheckAll.checked = false;
		}

	}
}

oCheckAll.onclick = function(){
	if(oCheckAll.checked == true){
		oCheckAll.checked = true;
		for (var i = 0; i < aTr.length; i++) {
			aTr[i].className = "selected";
			aCheck[i].checked = true;

			var price = aTr[i].getElementsByTagName("input")[3]
			updateprice_add(price)


			var cart_id = aTr[i].getElementsByTagName("th")[1].innerText
			var id= aTr[i].getElementsByTagName("th")[2].innerText
			creatinput("cart_id",id,cart_id);

		}
	}
	else{
		oCheckAll.checked = false;
		for (var i = 0; i < aTr.length; i++) {
			aTr[i].className = "";
			aCheck[i].checked = false;
			var price = aTr[i].getElementsByTagName("input")[3]
			updateprice_reduce(price)
			var id= aTr[i].getElementsByTagName("th")[2].innerText
			deleteinput(id)


		}
	}
}

function  updateprice_add(buyprice)
{
	var price = document.getElementById("price")
	var allprice = document.getElementById("allprice")
	var Total = document.getElementById("Total")
	a=buyprice.value*1
	b=price.value*1
	c = allprice.value*1
	price.value = a*1+b*1
	allprice.value =c+a*1
	Total.innerHTML = c+a*1

}


function  updateprice_reduce(buyprice)
{

	var price = document.getElementById("price")
	var allprice = document.getElementById("allprice")
	var check = document.getElementsByClassName("checkbox")[0]
	var Total = document.getElementById("Total")
	a=buyprice.value*1
	b=price.value*1
	c = allprice.value*1
	price.value = b-a*1
	allprice.value = c-a*1
	Total.innerHTML = c-a*1


}


function creatinput(ads,id,cart_id){
	click()
	var all = document.createElement("input");
	all.hidden
	all.id = id
	all.name =ads
	all.value=cart_id
	all.style.display="none"
	var s=document.getElementById("postBuys");
	s.appendChild(all)




}


function deleteinput(id){
	click()
	var ss=document.getElementById(id);
	var c =document.getElementById("postBuys")
	c.removeChild(ss);


}



function click() {
	var buybutton = document.getElementById("buybutton")
	var aCheckTr = getClass('selected', oTbody);
	if (aCheckTr.length > 1) {
		buybutton.style.pointerEvents = "auto"
	} else {
		buybutton.style.pointerEvents = "none";
	}
}