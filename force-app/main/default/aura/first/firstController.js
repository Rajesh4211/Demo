({
	handleClick : function(component, event, helper) 
    {
		alert(component.get("v.str"));
        component.set("v.str","PQR");
	},
   onclickmethod : function(component, event, helper) 
    {
       alert(event.currentTarget.id);
	}
})