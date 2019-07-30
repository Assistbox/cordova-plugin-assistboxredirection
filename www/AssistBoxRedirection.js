var exec = require("cordova/exec");
function AssistBoxRedirection() {}

AssistBoxRedirection.prototype.goBackToMainApplication = function(successCallback, errorCallback, arg) {
  exec(successCallback, errorCallback, "AssistBoxRedirection", "goBackToMainApplication", [arg]);
};
module.exports = new AssistBoxRedirection();
