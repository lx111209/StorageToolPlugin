require("UIImage,NSData,NSArray,NSMutableDictionary,NSMutableString,NSURL")

defineClass("ViewController", {
            pushSecondVC:function(sender) {
                console.log("onClick");
                var vc = SecondViewController.alloc().init();
        		self.navigationController().pushViewController_animated(vc, YES);
            }
            },{})

defineClass("SecondViewController", {
            viewDidLoad:function() {
            self.ORIGviewDidLoad();
                console.log("123");
            self.createTest();
            },
            createTest: function() {
            console.log("456");
            }
            },{})
