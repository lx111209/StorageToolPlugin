require("UIImage,NSData,NSArray,NSMutableDictionary,NSMutableString,NSURL")
defineClass("ViewController", {
            viewDidLoad:function() {
            self.ORIGviewDidLoad();
                console.log("123");
            self.createTest();
            },
            createTest: function() {
            console.log("456");
            }
            },{})


// demo.js
//require('UIView, UIColor, UILabel')
//defineClass('AppDelegate', {
//            // replace the -genView method
//            genView: function() {
//            var view = self.ORIGgenView();
//            view.setBackgroundColor(UIColor.greenColor())
//            var label = UILabel.alloc().initWithFrame(view.frame());
//            label.setText("JSPatch");
//            label.setTextAlignment(1);
//            view.addSubview(label);
//            return view;
//            }
//            });
