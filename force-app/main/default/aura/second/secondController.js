({
      doInit : function(component, event, helper) 
    {
		
        
	},
	
    handleClick : function(component, event, helper) 
    {
		
        //component.set("v.str","PQR");
        var action = component.get("c.method");
        action.setCallback(this, function(response) {
        alert(response.getReturnValue());
        component.set("v.accattr",response.getReturnValue());
             });
        $A.enqueueAction(action);
	}
})