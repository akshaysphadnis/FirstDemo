({    // Load expenses from Salesforce
    doInit: function(component, event, helper) {
        // Create the action
        var action = component.get("c.getCampingItems");
        // Add callback behavior for when response is received
        action.setCallback(this, function(response) {
            var state = response.getState();
            if (state === "SUCCESS") {
                component.set("v.items", response.getReturnValue());
            }
            else {
                console.log("Failed with state: " + state);
            }
        });
        // Send action off to be executed
        $A.enqueueAction(action);
    },
    
    
    
    
    CreateItem : function(component, event, helper) {
        var validExpense = component.find('itemform').reduce(function (validSoFar, inputCmp) {
            // Displays error messages for invalid fields
            inputCmp.showHelpMessageIfInvalid();
            return validSoFar && inputCmp.get('v.validity').valid;
        }, true);
        // If we pass error checking, do some real work
        if(validExpense){
            // Create the new expense
            var newItem = component.get("v.newItem");
            console.log("Create Item: " + JSON.stringify(newExpense));
            helper.createItem(component, newItem);
        }
    }
 }
)