({
	insert : function(component, event, helper) 
    {
        var a=component.get("v.accins");
        alert(a);
		var action=component.get('c.InsertAcc');       
        action.setParams({'acc':a});
       action.setCallback(this,function(responce){
            
        });
        $A.enqueueAction(action);
	}
})