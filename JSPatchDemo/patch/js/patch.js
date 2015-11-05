require('UIColor','UIView')

//defineClass('OCView', {
//            patch: function() {
//                console.log('===')
//                self.setBackgroundColor(UIColor.greenColor())
//            }
//            });

//defineClass('OCViewController', {
//            forwardInvocation: function(anInvocation) {
//            self.super.forwardInvocation(anInvocation);
//            }
//            });

defineClass('OCViewController', {
            viewDidLoad: function() {
            console.log('========')
//            self.ORIGviewDidLoad()
            self.view().setBackgroundColor(UIColor.redColor())
            }
            });

