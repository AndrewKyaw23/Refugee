function switchVisible3()
{

			document.getElementById('divNewCategory').style.display='block';
			document.getElementById('divSearchCategory').style.display='none';
	}
function switchVisible4()
{
	document.getElementById('divNewCategory').style.display='none';
	document.getElementById('divSearchCategory').style.display='block';
}
function validate(){
	
	var len = document.forms["sample"]["txtSName"].value.length;
	var len1 = document.forms["sample"]["txtRNo"].value.length;
	if(len==0&&len1==0){
		alert("Please fill all information");
		return false;
		}else if(len==0){
			alert("Please fill brand name!");
			return false;
		}else if(len1==0){
		alert("Please fill remark!");
		return false;
	}
		else{
			alert("Insert Successful");
			return true;
		}
	}