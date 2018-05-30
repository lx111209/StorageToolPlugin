// var exec = require('cordova/exec');

// exports.coolMethod = function (arg0, success, error) {
//     exec(success, error, 'StorageToolPlugin', 'coolMethod', [arg0]);
// };

var exec= require('cordova/exec');

var MyStorageTool=function() {}

MyStorageTool.prototype.getValue=function(arg0, success, error) {

	exec(success, error,"StorageToolPlugin","getValueMethod", [arg0]);

}

MyStorageTool.prototype.setValue=function(arg0, success, error) {

	exec(function(meg) {

		alert(meg);

	}, error,"StorageToolPlugin","setValueMethod", [arg0]);

}

varStorageTool=newMyStorageTool();

module.exports=StorageTool;
