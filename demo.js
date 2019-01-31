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
