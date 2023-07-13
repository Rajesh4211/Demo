({
	handleClick : function(component, event, helper) {
		var a=component.find("inp").get("v.value");
       // var myLabel = component.find("v.input1").value();
       //alert('value of a'+myLabel);
       alert("Hi");
         var action = component.get("c.method");
         action.setParams({ str :a });
        action.setCallback(this, function(response){
                           alert(response.getReturnValue());
                           });
      $A.enqueueAction(action);
	}
})