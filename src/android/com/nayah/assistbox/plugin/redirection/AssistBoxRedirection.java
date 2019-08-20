package com.nayah.assistbox.plugin.redirection;


import android.app.Activity;


import org.json.JSONArray;
import org.json.JSONException;

import ast.org.apache.cordova.cordova.CallbackContext;
import ast.org.apache.cordova.cordova.CordovaPlugin;

public class AssistBoxRedirection extends CordovaPlugin {
    private static final String ACTION_GO_TO_MAIN_APPLICATION = "goBackToMainApplication";

    public AssistBoxRedirection() {

    }
    
    @Override
    public boolean execute(String action, JSONArray args, final CallbackContext callbackContext) throws JSONException {
        if (ACTION_GO_TO_MAIN_APPLICATION.equals(action)) {
            cordova.getActivity().runOnUiThread(new Runnable() {
                @Override
                public void run() {
                    try {
                        cordova.getActivity().setResult(Activity.RESULT_OK);
                        cordova.getActivity().finish();
                    } catch (Exception e) {
                        e.printStackTrace();
                        callbackContext.error(e.getMessage());
                    }
                }
            });
            return true;
        } else {
            callbackContext.error("AssistBoxRedirection plugin error." + action + " is not a supported function. Did you mean '" + ACTION_GO_TO_MAIN_APPLICATION + "'?");
            return false;
        }
    }
}