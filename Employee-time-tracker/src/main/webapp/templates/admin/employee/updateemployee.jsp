<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<html>

<head>
    <style>
        body {
            font-family: Arial, sans-serif;
            background-color: #f4f4f4;
            margin: 0;
            padding: 0;
        }

        .container {
            max-width: 600px;
            margin: 0 auto;
            padding: 2px;
        }

        .update {
            background-color: #fff;
            border-radius: 10px;
            padding: 30px;
            box-shadow: 0 2px 10px rgba(0, 0, 0, 0.2);
            text-align: left;
            margin-top: 20px;
        }

        h1 {
            color: #007bff;
            font-weight: bold;
            text-align: center;
            margin-top: 20px;
        }

        span {
            color: red;
        }

        /* Customizing form elements */
        .form-group {
            margin-bottom: 20px;
        }

        label {
            font-weight: bold;
        }

        input[type="text"],
        input[type="number"],
        input[type="email"] {
            width: 100%;
            padding: 10px;
            border: 1px solid #ccc;
            border-radius: 5px;
            font-weight: bold;
        }

        select {
            width: 100%;
            padding: 10px;
            border: 1px solid #ccc;
            border-radius: 5px;
            font-weight: bold;
        }

        .btn-success {
            width: 100%;
            background-color: #007bff;
            color: #fff;
            padding: 12px;
            border: none;
            border-radius: 15px;
            cursor: pointer;
            font-weight: bold;
            font-size: large;
        }

        .btn-success:hover {
            background-color: #0056b3;
        }
    </style>
</head>

<body>
    <h1>Update Record View</h1>

    <div class="container">
        <div class="update">
            <form action="update-record">
                <div class="form-group">
                    <label for="pid">Employee Id</label>
                    <input type="text" class="form-control" id="pid" name="eid" value="${emsg.eid}" readonly="readonly">
                </div>
                <div class="form-group">
                    <label for="firstname">Enter First Name<span>*</span></label>
                    <input type="text" class="form-control" id="firstname" name="firstname" value="${emsg.firstname}" required>
                </div>
                <div class="form-group">
                    <label for="lastname">Enter Last Name<span>*</span></label>
                    <input type="text" class="form-control" id="lastname" name="lastname" value="${emsg.lastname}" required>
                </div>
                <div class="form-group">
                    <label for="phone">Enter Phone Number<span>*</span></label>
                    <input type="number" class="form-control" id="phone" name="phone" value="${emsg.phone}" required>
                </div>
                <div class="form-group">
                    <label for="email">Enter Email Id<span>*</span></label>
                    <input type="email" class="form-control" id="email" name="email" value="${emsg.email}" required>
                </div>
                <div class="form-group">
                    <label for="salary">Enter Salary<span>*</span></label>
                    <input type="text" class="form-control" id="salary" name="salary" value="${emsg.salary}" required>
                </div>
                <div class="form-group">
                    <label for="department">Select Department<span>*</span></label>
                    <select name="department" class="form-control" required>
                        <c:forEach var="department" items="${dlist}">
                            <c:if test="${emsg.department==department}">
                                <option selected>${department}</option>
                            </c:if>
                            <c:if test="${emsg.department!=department}">
                                <option>${department}</option>
                            </c:if>
                        </c:forEach>
                    </select>
                </div>
                <div class="form-group">
                    <button type="submit" class="btn btn-success">Update</button>
                </div>
            </form>
        </div>
    </div>
</body>

</html>
