<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ page import="java.util.List"%>
<!doctype html>
<html lang="en">

<head>
  <title>Home</title>
  <!-- Required meta tags -->
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

  <!-- Bootstrap CSS -->
  <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.8.2/css/all.css"
    integrity="sha384-oS3vJWv+0UjzBfQzYUhtDYW+Pj2yciDJxpsK1OYPAYjqT085Qq/1cq5FLXAZQ7Ay" crossorigin="anonymous">
  <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css"
    integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
</head>

<body class="bg-white">

  <div class="container my-5 bg-light border shadow rounded" style="min-height: 70vh;">
    <div class="row">
      <div class="col-12">
        <p class="display-3 font-italic font-weight-bold text-center">Event Reminder</p>
      </div>
    </div>
    <div role="separator" class="dropdown-divider"></div>
    <div class="row my-5">
      <div class="offset-1"></div>
      <div class="col-4 border shadow rounded">
        <div class="row">
          <div class="col-12">
            <p class="h4 text-center my-3 font-italic">Search by</p>
          </div>
        </div>
        <div role="separator" class="dropdown-divider"></div>
        <form action="find" method="GET">
          <div class="row">
            <div class="col-4">
              <p class="h4 text-center my-3 font-italic">Name</p>
            </div>
            <div class="col-1">
              <input class="form-check-input mt-4" type="radio" name="by" value="name">
            </div>
            <div class="col-6">
              <input type="text" class="form-control my-3" placeholder="e.g. Ammar" name="name">
            </div>
          </div>
          <div class="row">
            <div class="col-4">
              <p class="h4 text-center my-3  font-italic">Date</p>
            </div>
            <div class="col-1">
              <input class="form-check-input mt-4" type="radio" name="by" value="date">
            </div>
            <div class="col-6">
              <input type="text" class="form-control my-3" placeholder="e.g. 12/08" name="date">
            </div>
          </div>
          <button type="submit"
            class="btn btn-block btn-outline-primary border border-primary font-weight-bold mt-4 my-3">Search</button>
        </form>
      </div>
      <div class="offset-2"></div>
      <div class="col-4 border shadow rounded">
        <div class="row">
          <div class="col-12">
            <p class="h4 text-center my-3 font-italic">List by</p>
          </div>
        </div>
        <div role="separator" class="dropdown-divider"></div>
        <form action="find" method="GET">
          <div class="row">
            <div class="col-4">
              <p class="h4 text-center my-3 font-italic">Week</p>
            </div>
            <div class="col-1">
                <input class="form-check-input mt-4" type="radio" name="by" value="week">
            </div>
            <div class="col-6">
              <div class="form-group mt-3"  name="week">
                <select class="form-control">
                  <option>Current</option>
                  <option>Following</option>
                  <option>Previous</option>
                </select>
              </div>
            </div>
          </div>
          <div class="row">
            <div class="col-4">
              <p class="h4 text-center my-3 font-italic">Month</p>
            </div>
            <div class="col-1">
                <input class="form-check-input mt-4" type="radio" name="by" value="month">
            </div>
            <div class="col-6">
              <div class="form-group mt-3" name="month">
                <select class="form-control">
                  <option>Current</option>
                  <option>Januar</option>
                  <option>Februar</option>
                  <option>Mart</option>
                  <option>April</option>
                  <option>Maj</option>
                  <option>Juni</option>
                  <option>Juli</option>
                  <option>August</option>
                  <option>Septembar</option>
                  <option>Oktobar</option>
                  <option>Novembar</option>
                  <option>Decembar</option>
                </select>
              </div>
            </div>
          </div>
          <button type="submit"
            class="btn btn-block btn-outline-primary border border-primary font-weight-bold mt-4 my-3">List</button>
        </form>
      </div>
    </div>

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