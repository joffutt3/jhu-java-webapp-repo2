<%@ page import="beans.Registration" %>
<html>
<head>
    <title>Joe Offutt's Assignment 5</title>
    <style>
        table, th, td {
            border: 1px solid black;
        }
    </style>
</head>
<body style="margin-right:10%; margin-left:10%; background-color: navy">
    <div style="background-color:navajowhite">
        <img src="img/jhu_logo.png" title="JOHNS HOPKINS UNIVERSITY" />
        <div style="background-color: beige;box-shadow: navajowhite">
            <% Registration registration = (Registration) session.getAttribute("registration")
            ;
            if (registration == null)
            {
            registration = new Registration();
            }
            %>
            <div style=""><h2>Johns Hopkins Annual Software Development Seminar</h2></div>
        <!-- TODO add line -->

            <form action="results.jsp" method="post">
                <div style="border: 1px solid burlywood; margin-left:5%;margin-right:5%">
                    <div style = "margin-left:7%; margin-right:7%; margin-bottom:3%">
                        <h3>Contact Information</h3>
                        <p>Name: <input type="text" name = "name" placeholder="Enter Name" value="<%=registration.getName()%>"/> </p>
                        <p>Email: <input type="text" name = "email" placeholder="Enter Email" value="<%=registration.getEmail()%>"/> </p>
                    </div>
                </div>
                <div style="border: 1px solid burlywood; margin-left:5%;margin-right:5%">
                    <div style = "margin-left:7%; margin-right:7%; margin-bottom:3%">
                        <h3>Select Your Courses</h3>
                        <select name="courses" multiple>
                            <option value="WebApps 101">Web Apps</option>
                            <option value="Programming 101 ">Programming 101</option>
                            <option value="how to be 1337">How to be 1337</option>
                            <option value="english 101">English 101</option>
                        </select>
                    </div>
                </div>
                <div style="border: 1px solid burlywood; margin-left:5%;margin-right:5%">
                    <div style = "margin-left:7%; margin-right:7%; margin-bottom:3%">
                        <h3>Employment Status</h3>
                        <input type="radio" name="employment" value="student" /> jhu student
                        <input type="radio" name="employment" value="employee" /> jhu employee
                        <input type="radio" name="employment" value="speaker" /> speaker
                        <input type="radio" name="employment" value="other" /> other
                    </div>
                </div>
                <div style="border: 1px solid burlywood; margin-left:5%;margin-right:5%">
                    <div style = "margin-left:7%; margin-right:7%; margin-bottom:3%">
                        <h3>Additional Fees and Charges</h3>
                        <input type="checkbox" name="fees" value="parking" /> Parking <br />
                        <input type="checkbox" name="fees" value="hotel" /> Hotel Accomodations <br />
                    </div>
                </div>
                <br />
                <div style="margin-left:7%"><input type="submit" value="Compute Seminar Costs" /></div>
                <br/>
            </form>
        </div>
    </div>
</body>
</html>