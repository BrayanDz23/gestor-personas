<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="es">
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet" crossorigin="anonymous">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.6.0/css/all.min.css" crossorigin="anonymous" referrerpolicy="no-referrer" />
    <title>${empleado.id == 0 ? "Nuevo" : "Editar"} Empleado</title>
</head>
<body>
    <div class="container mt-5">
        <div class="card shadow-lg">
            <div class="card-body">
                <h3 class="card-title">${empleado.id == 0 ? "Nuevo" : "Editar"} Empleado</h3>
                <hr />
                
                <form action="EmpleadoControlador" method="post">
                    <div class="mb-3">
                        <label for="nombres" class="form-label">Nombres:</label>
                        <input id="nombres" value="${empleado.nombres}" name="nombres" type="text" maxlength="50" class="form-control" required="">
                    </div>

                    <div class="mb-3">
                        <label for="apellidos" class="form-label">Apellidos:</label>
                        <input id="apellidos" value="${empleado.apellidos}" name="apellidos" type="text" maxlength="50" class="form-control" required="">
                    </div>

                    <div class="mb-3">
                        <label for="fechaIngreso" class="form-label">Fecha Ingreso:</label>
                        <input id="fechaIngreso" value="${empleado.fechaIngreso}" name="fechaIngreso" type="date" class="form-control" required="">
                    </div>

                    <div class="mb-3">
                        <label for="sueldo" class="form-label">Sueldo:</label>
                        <input id="sueldo" value="${empleado.sueldo}" name="sueldo" type="number" class="form-control" required="">
                    </div>

                    <div class="mb-3">
                        <input type="hidden" name="id" value="${empleado.id}">
                        <input type="hidden" name="accion" value="guardar">
                        <button class="btn btn-primary btn-sm">
                            <i class="fa fa-save"></i> Guardar
                        </button>
                        <a href="EmpleadoControlador?accion=listar" class="btn btn-dark btn-sm">
                            <i class="fa fa-arrow-left"></i> Volver Atrás
                        </a>
                    </div>
                </form>
            </div>
        </div>
    </div>
</body>
</html>
