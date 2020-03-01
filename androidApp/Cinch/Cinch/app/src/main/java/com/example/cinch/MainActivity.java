package com.example.cinch;

import androidx.appcompat.app.AppCompatActivity;
import android.os.Bundle;
import android.util.Log;
import android.view.View;
import android.widget.Button;
import android.widget.TextView;

import com.android.volley.Request;
import com.android.volley.RequestQueue;
import com.android.volley.VolleyError;
import com.android.volley.toolbox.JsonObjectRequest;
import com.android.volley.toolbox.Volley;

import org.json.JSONException;
import org.json.JSONObject;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

public class MainActivity extends AppCompatActivity {

    TextView textView;
    final static Map<String, String> apiUrlMap = new HashMap<String, String>() {
        {
            put("2131165284", "/API/startMachineRequest");
            put("2131165285", "/API/stopMachineRequest");
            put("2131165283", "/API/materialOutOfStock");
            put("2131165280", "/API/materialInStock");
            put("2131165281", "/API/machineBreakdownRequest");
            put("2131165282", "/API/machineWorkingRequest");
        }
    };
    final static ArrayList<String> validActions  = new ArrayList<String>() {
        {
            add("2131165284");
            add("2131165285");
            add("2131165283");
            add("2131165280");
            add("2131165281");
            add("2131165282");
        }
    };

    final static HashMap<String, String> relativeActionMap = new HashMap<String, String>() {
        {
            put("idStartMachine", "idStopMachine");
            put("idMachineBreakdown", "idMachineFixed");
            put("idOutOfStock", "idInStock");
        }
    };

    final static ArrayList<String> buttonsIds = new ArrayList<String>() {
        {
            add("idStartMachine");
            add("idStopMachine");
            add("idMachineFixed");
            add("idMachineBreakdown");
            add("idOutOfStock");
            add("idInStock");
        }
    };

    public boolean isValidAction(String action) {
        return validActions.contains(action);
    }

    public String getApiUrl(String apiType) {
        return apiUrlMap.get(apiType);
    }

    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_main);
        System.out.println("In on create");
    }

   public void onClick(View v) throws JSONException {
        switch (v.getId()) {
            case R.id.idStartMachine:
                callStartMachineAPI(v.getId());
                break;
            case R.id.idStopMachine:
                break;
            default:
                throw new RuntimeException("Unknown button ID");
        }
    }

    public void callStartMachineAPI(Integer action) throws JSONException {
        JSONObject request = createJsonPayload(action);
        System.out.println("JSONObject is: " + request);
        JSONObject request1 = new JSONObject();
        request1.put("name", "morpheus");
        request1.put("job", "leader");
        callServerAPI(request1, "https://reqres.in/api/users"/*+getApiUrl(Integer.toString(action))*/);
    }

    public JSONObject createJsonPayload(Integer action) throws JSONException {
        JSONObject requestPayload = new JSONObject();
        requestPayload.put("action", action);
        return requestPayload;
    }

    public void callServerAPI(final JSONObject requestPayload, String apiUrl) {
        System.out.println("Inside callServerAPI");
        RequestQueue queue = Volley.newRequestQueue(MainActivity.this);
        JsonObjectRequest jsonObjectRequest = new JsonObjectRequest(Request.Method.POST, apiUrl, requestPayload, new com.android.volley.Response.Listener<JSONObject>() {
            @Override
            public void onResponse(JSONObject response) {
                System.out.println("Inside on response");
                try {
                    String server_data = response.toString();
                    JSONObject object = new JSONObject(server_data);
                    disableAllButtonExceptRequired(requestPayload.getString("name"));
                    setTextInStatusWindow(object);
                    Log.e("data", response.toString());
                } catch (Exception e) {
                    e.printStackTrace();
                }
            }
        }, new com.android.volley.Response.ErrorListener() {
            @Override
            public void onErrorResponse(VolleyError error) {
                Log.d("error8", error.toString());
            }
        });
        queue.add(jsonObjectRequest);
        System.out.println("jsonObjectResponse: " + jsonObjectRequest);
    }

    public void setTextInStatusWindow(JSONObject data) throws JSONException {
        textView.setText(data.getString("name"));
    }

    public void disableAllButtonExceptRequired(String data) {
        buttonsIds.remove(relativeActionMap.get(data));
        for(String button : buttonsIds) {
            int buttonId = getResources().getIdentifier(button, "id", getPackageName());
            Button buttonObj = (Button) findViewById(buttonId);
            buttonObj.setEnabled(false);
        }
    }


    /*RequestQueue queue = Volley.newRequestQueue(MainActivity.this);
    JsonObjectRequest jsonObjectRequest = new JsonObjectRequest(Request.Method.POST, url7, new JSONObject(), new com.android.volley.Response.Listener<JSONObject>() {
        @Override
        public void onResponse(JSONObject response) {
            try {
                String server_data = response.toString();
                JSONObject object = new JSONObject(server_data);
                textView.setText(object.getString("name"));
                Log.e("data", response.toString());
            } catch (Exception e) {
                e.printStackTrace();
            }

        }
    }, new com.android.volley.Response.ErrorListener() {
        @Override
        public void onErrorResponse(VolleyError error) {
            Log.d("error8", error.toString());
        }
    });*/
}



   /* @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_main);

        textView = findViewById(R.id.textView);
        startMachine = findViewById(R.id.idStartMachine);
        final String startMachineAPI = "your server url";

        startMachine.setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View v) {
                // Instantiate the RequestQueue.
                RequestQueue queue = Volley.newRequestQueue(MainActivity.this);
                JsonObjectRequest jsonObjectRequest = new JsonObjectRequest(Request.Method.POST, url7, new JSONObject(), new com.android.volley.Response.Listener<JSONObject>() {
                    @Override
                    public void onResponse(JSONObject response) {
                        try {
                            String server_data = response.toString();
                            JSONObject object = new JSONObject(server_data);
                            textView.setText(object.getString("name"));
                            Log.e("data", response.toString());
                        } catch (Exception e) {
                            e.printStackTrace();
                        }

                    }
                }, new com.android.volley.Response.ErrorListener() {
                    @Override
                    public void onErrorResponse(VolleyError error) {
                        Log.d("error8", error.toString());
                    }
                });

                //queue.add();
            }
    });
}*/
