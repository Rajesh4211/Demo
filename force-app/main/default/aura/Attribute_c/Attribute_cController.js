({
	callme : function(component, event, helper) {
		component.set("v.Name","Rajesh");
        component.set("v.Age","23");
        component.set("v.Salary","4000");
	},
    clearme : function(component, event, helper) {
		component.set("v.Name","");
        component.set("v.Age","");
        component.set("v.Salary","");
	}
})