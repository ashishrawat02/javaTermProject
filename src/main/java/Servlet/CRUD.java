/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Servlet;

/**
 *
 * @author ashish
 */
import database.Credentials;
import java.io.StringReader;
import static java.lang.System.out;
import java.math.BigDecimal;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.HashMap;
import java.util.LinkedHashMap;
import java.util.LinkedList;
import java.util.List;
import java.util.Map;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.json.Json;
import javax.json.JsonArrayBuilder;
import javax.json.JsonObject;
import javax.json.JsonObjectBuilder;
import javax.json.stream.JsonParser;
import javax.ws.rs.Consumes;
import javax.ws.rs.DELETE;
import javax.ws.rs.GET;
import static javax.ws.rs.HttpMethod.POST;
import javax.ws.rs.POST;
import javax.ws.rs.PUT;
import javax.ws.rs.Path;
import javax.ws.rs.PathParam;
import javax.ws.rs.Produces;

/**
 *
 * @author c0649005
 */
@Path("/student")
public class CRUD {

    @GET
    @Produces("application/json")

    public String doGet() {
        String result = getResults("SELECT * FROM student");
        return result;
    }

    @GET
    @Path("{id}")
    @Produces("application/json")
    public String doGet(@PathParam("id") String id) {

        String result = getResults("SELECT * FROM student where studentId = ?", id);
        return result;

    }

  
    @POST
    @Consumes("application/json")
    public void doPost(String str) {
        JsonParser parser = Json.createParser(new StringReader(str));
        Map<String, String> map = new HashMap<>();
        String name = "", value;

        while (parser.hasNext()) {
            JsonParser.Event event = parser.next();
            switch (event) {
                case KEY_NAME:
                    name = parser.getString();
                    break;
                case VALUE_STRING:
                    value = parser.getString();
                    map.put(name, value);
                    break;
                case VALUE_NUMBER:
                    value = Integer.toString(parser.getInt());
                    map.put(name, value);
                    break;
            }
        }
        System.out.println(map);
        String studentId = map.get("studentId");
        String fName = map.get("firstName");
        String lName = map.get("lastName");
        String cor = map.get("course");
        String dur = map.get("duration");
        String ad = map.get("address");
        String bir = map.get("birthDate");
        String num = map.get("phoneNumber");

        doUpdate("INSERT INTO student (studentId,firstName,lastName,course,duration,address,birthDate,phoneNumber)VALUES (?,?,?,?,?,?,?,?)",studentId, fName,
                lName, cor, dur, ad, bir, num);
        
    }

    @PUT
    @Path("{id}")
    @Consumes("application/json")
    public void doPut(@PathParam("id") String id, String str) {
        JsonParser parser = Json.createParser(new StringReader(str));
        Map<String, String> map = new HashMap<>();
        String name = "", value;

        while (parser.hasNext()) {
            JsonParser.Event event = parser.next();
            switch (event) {
                case KEY_NAME:
                    name = parser.getString();
                    break;
                case VALUE_STRING:
                    value = parser.getString();
                    map.put(name, value);
                    break;
                case VALUE_NUMBER:
                    value = Integer.toString(parser.getInt());
                    map.put(name, value);
                    break;
            }
        }
        System.out.println(map);

        String fName = map.get("firstName");
        String lName = map.get("lastName");
        String cor = map.get("course");
        String dur = map.get("duration");
        String ad = map.get("address");
        String bir = map.get("birthDate");
        String num = map.get("phoneNumber");

        doUpdate("update student set studentId = ?, firstName = ?, lastName = ?, course = ?,"
                + "duration = ?, address = ?, birthDate = ?, phoneNumber = ? where studentId = ?", id, fName, lName, cor, dur, ad, bir, num, id);
    }

    @DELETE
    @Path("{id}")
    public void doDelete(@PathParam("id") String id, String str) {

        doUpdate("DELETE FROM student WHERE studentId = ?", id);

    }

    private int doUpdate(String query, String... params) {
        int numChanges = 0;
        try (Connection conn = Credentials.getConnection()) {
            PreparedStatement pstmt = conn.prepareStatement(query);
            for (int i = 1; i <= params.length; i++) {
                pstmt.setString(i, params[i - 1]);
            }
            numChanges = pstmt.executeUpdate();
        } catch (SQLException ex) {
            Logger.getLogger(CRUD.class.getName()).log(Level.SEVERE, null, ex);
        }
        return numChanges;
    }

    private String getResults(String query, String... params) {
        JsonArrayBuilder productArray = Json.createArrayBuilder();
        
        JsonObjectBuilder jsonLastObj = null;
        String jsonString = "";
        try (Connection conn = Credentials.getConnection()) {
            PreparedStatement pstmt = conn.prepareStatement(query);
            for (int i = 1; i <= params.length; i++) {
                pstmt.setString(i, params[i - 1]);
            }
            ResultSet rs = pstmt.executeQuery();

            while (rs.next()) {
                JsonObject json  = Json.createObjectBuilder()
                        .add("studentId", rs.getInt("studentId"))
                        .add("firstName", rs.getString("firstName"))
                        .add("lastName", rs.getString("lastName"))
                        .add("course", rs.getString("course"))
                        .add("duration", rs.getInt("duration"))
                        .add("address", rs.getString("address"))
                        .add("birthDate", rs.getString("birthDate"))
                        .add("phoneNumber", rs.getInt("phoneNumber")).build();

               productArray.add(json);
            }
            jsonString = productArray.build().toString();
           

        } catch (SQLException ex) {
            Logger.getLogger(CRUD.class.getName()).log(Level.SEVERE, null, ex);
        }
        if (params.length == 0) {
            jsonString = productArray.build().toString();
        }
        return jsonString;
    }
}
