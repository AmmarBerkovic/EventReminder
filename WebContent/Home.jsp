<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!doctype html>
<html lang="en">

<head>
    <title>Home</title>
    <!-- Required meta tags -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

    <!-- Bootstrap CSS -->
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css"
        integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
    <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.8.2/css/all.css"
        integrity="sha384-oS3vJWv+0UjzBfQzYUhtDYW+Pj2yciDJxpsK1OYPAYjqT085Qq/1cq5FLXAZQ7Ay" crossorigin="anonymous">
</head>

<body class="bg-white">
    <div class="modal" id="add">
        <div class="modal-dialog">
            <div class="modal-content">
                <div class="modal-header">
                    <h2 class="modal-title">Add Event!!</h2>
                    <button type="button" class="close"><span>&times;</span></button>
                </div>
                <form action="join" method="POST">
                    <div class="modal-body">
                        <div class="row">
                            <div class="col-3">
                                <p class="h5 mt-3 text-center">Name</p>
                            </div>
                            <div class="col">
                                <input type="text" class="form-control mt-3" placeholder="e.g. Rodjendan" name="event"
                                    required>
                            </div>
                        </div>
                        <div class="row">
                            <div class="col-3">
                                <p class="h5 mt-3 text-center">Date</p>
                            </div>
                            <div class="col-4">
                                <input type="text" class="form-control mt-3" placeholder="e.g. 12" name="day" required>
                            </div>
                            <div class="col">
                                <select class="form-control mt-3" name="month" required>
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
                        <div class="row">
                            <div class="col-3">
                                <p class="h5 mt-3 text-center">Desc</p>
                            </div>
                            <div class="col">
                                <input type="text" class="form-control mt-3" name="desc">
                            </div>
                        </div>
                    </div>
                    <div class="modal-footer">
                        <button type="submit"
                            class="btn btn-block rounded shadow-lg btn-outline-primary btn-light">Finish!</button>
                    </div>
                </form>
            </div>
        </div>
    </div>
    <div class="container my-5 bg-light border shadow rounded" style="min-height: 80vh;">
        <div class="row">
            <div class="col-12">
                <p class="display-3 font-italic font-weight-bold text-center text-primary">Event Reminder</p>
            </div>
        </div>
        <div role="separator" class="dropdown-divider"></div>
        <div class="row d-flex justify-content-around">
            <div class="col-4 my-4">
                <button type="submit" class="btn btn-block rounded shadow-lg btn-outline-primary btn-light"
                    data-toggle="modal" data-target="#add">
                    <i class="fas fa-10x fa-calendar-plus my-5"></i>
                    <p class="display-4 font-italic font-weight-bold">Add Event</p>
                </button>
            </div>
            <div class="col-4 my-4">
                <form action="Choose.jsp">
                    <button type="submit" class="btn btn-block rounded shadow-lg btn-outline-primary btn-light">
                        <i class="fas fa-10x fa-list-alt my-5"></i>
                        <p class="display-4 font-italic font-weight-bold">Find Event</p>
                    </button>
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