({
	handleClick : function(component, event, helper) 
    {
        var columns=[{label: 'Account name', fieldName: 'Name', type: 'text'},
                    {label: 'Account Phone', fieldName: 'Phone', type: 'text'},
                    {label: 'Account Id', fieldName: 'Id', type: 'Id'}];
        alert(columns);
        component.set("v.columns",columns);
        
        var action=componet.get("c.getAccount");
        alert(action);
        action.setCallback(this, function(response) {
            component.set("v.acc",responce.getReturnValue());
        });
        $A.enqueueAction(action);
	}
})