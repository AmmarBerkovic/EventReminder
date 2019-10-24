<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ page import="java.util.List"%>
<%@ page import="model.Event"%>
<!doctype html>
<html lang="en">

<head>
  <title>Table</title>
  <!-- Required meta tags -->
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

  <!-- Bootstrap CSS -->
  <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css"
    integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
</head>

<body class="bg-white">
  <%List<Event> list=(List<Event>)request.getSession().getAttribute("list"); %>
  <div class="container my-5 bg-light border shadow" style="min-height: 75vh;">
    <div class="row justify-content-around">
      <p class="display-3 font-italic font-weight-bold">Events</p>
    </div>
    <div role="separator" class="dropdown-divider"></div>
    <div class="row">
      <div class="offset-1"></div>
      <div class="col-2">
        <form action="Home.jsp">
          <button type="submit" class="btn btn-block btn-outline-secondary border border-dark font-weight-bold mt-3">Go
            Back!</button>
        </form>
      </div>
      <div class="col-3">
        <p class="h4 font-weight-bold text-center mt-3">More info:</p>
      </div>
      <div class="col-3">
        <input type="text" class="form-control my-3" placeholder="Enter ID" name="date">
      </div>
      <div class="col-2">
        <button type="submit" class="btn btn-block btn-outline-secondary border border-dark font-weight-bold mt-3">Find
          Event</button>
      </div>

    </div>
    <div role="separator" class="dropdown-divider"></div>
    <%if(list.size()!=0){ %>

    <div class="row mt-5">
      <div class="offset-1"></div>
      <div class="col-10">
        <table class="table table-striped table-bordered">
          <thead>
            <tr>
              <th scope="col">Id</th>
              <th scope="col">Event</th>
              <th scope="col">Date</th>
            </tr>
          </thead>
          <tbody>
            <%for(int i=0;i<list.size();i++){ %>
            <tr>
              <td><%=list.get(i).getId() %></td>
              <td><%=list.get(i).getName() %></td>
              <td><%=list.get(i).getDate() %></td>
            </tr>
            <%} %>
          </tbody>
      </div>
    </div>
    <%} else {%>
    <div class="row">
      <div class="col">
        <p class="display-3 text-center">No result!</p>
      </div>
    </div>
    <%} %>

  </div>

  <!-- Optional JavaScript -->
  <!-- jQuery first, then Popper.js, then Bootstrap JS -->
  <script src="https://code.jquery.com/jquery-3.3.1.slim.min.js"
    integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo"
    crossorigin="anonymous"></script>
  <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js"
    integrity="sha384-UO2eT0CpHqdSJQ6hJty5KVphtPhzWj9WO1clHTMGa3JDZwrnQq4sF86dIHNDz0W1"
    crossorigin="anonymous"></script>
  <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js"
    integrity="sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM"
    crossorigin="anonymous"></script>
</body>

</html>