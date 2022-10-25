define(['uiComponent'],function(Component) {
    'use strict';
   
    console.log("PROVA CONSOLE.LOG");
    
    return Component.extend({
      defaults: {
        nuovoTicketLabel: 'Default String',
        tasks: [
          {"label": "Task 1","status": false},
          {"label": "Task 2","status": false},
          {"label": "Task 3","status": true}
          ]
      }

        
     });
   })
;
   