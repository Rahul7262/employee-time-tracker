<%@include file="../../../CSS/bootstrap.jsp"%>

<style>
    /* Added flex-container and flex-item classes */
    .flex-container {
        display: flex;
        justify-content: space-between;
    }

    .flex-item {
        flex: 1;
        margin-right: 10px;
    }

    .ragister {
        margin: auto;
        margin-top: 20px;
        background-color: #f8f9fa;
        padding: 20px;
        border-radius: 10px;
        font-weight: bolder;
    }

   
    h1 {
        text-align: center;
        color: #FFA500;
        margin-top: 50px;
        font-family: serif;
        font-weight: bold;
    }

    span {
        color: red;
    }
</style>

<body class="bg-secondary" >>
    <h1>${msg}</h1>
    <h1 style="color: blue">Employee Register Page</h1>
    <div class="ragister  w-50 p-4 bg-info">
        <form>
            <div class="form-row">
                <div class="col-md-6 mb-3">
                    <label for="firstname">Enter First Name<span> *</span></label>
                    <input type="text" class="form-control" id="firstname" name="firstname" required>
                </div>
                <div class="col-md-6 mb-3">
                    <label for="lastname">Enter Last Name<span> *</span></label>
                    <input type="text" class="form-control" id="lastname" name="lastname" required>
                </div>
            </div>
            <div class="form-row">
                <div class="col-md-6 mb-3">
                    <label for="phone">Enter Phone Number<span> *</span></label>
                    <input type="text" class="form-control" id="phone" name="phone" required>
                </div>
                <div class="col-md-6 mb-3">
                    <label for="email">Enter Email ID<span> *</span></label>
                    <input type="email" class="form-control" id="email" name="email" required>
                </div>
            </div>
            <div class="form-row">
                <div class="col-md-6 mb-3">
                    <label for="department">Select Department<span> *</span></label>
                    <select name="department" class="form-control" required>
                        <option value="">Choose Department</option>
                        <option>Training</option>
                        <option>Marketing</option>
                        <option>Accounts</option>
                        <option>Inventory</option>
                        <option>Sales</option>
                        <option>Human Resource</option>
                    </select>
                </div>
                <div class="col-md-6 mb-3">
                    <label for="salary">Enter Salary<span> *</span></label>
                    <input type="text" class="form-control" id="salary" name="salary" required>
                </div>
            </div>

            <div class="form-group flex-container">
                <button type="submit" formaction="save-record" class="submit btn btn-success flex-item">Submit</button>
                <a href="/Employee-time-tracker/admin/home" class="btn btn-secondary ">Home</a>
            </div>
        </form>
    </div>
</body>
