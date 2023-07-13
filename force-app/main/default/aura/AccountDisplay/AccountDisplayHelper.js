({
	abc : function() {
		var columns=[{label: 'Account name', fieldName: 'Name', type: 'text'},
                    {label: 'Account Phone', fieldName: 'Phone', type: 'text'},
                    {label: 'Account Id', fieldName: 'Id', type: 'Id'}];
        component.set("v.columns",columns);
        
        var action=componet.get('c.getAccount');
        action.selcallback(this,function(responce){
            component.set("v.acc",responce.getReturnValue);
        });
        $A.enqueueAction(action);
	}
})