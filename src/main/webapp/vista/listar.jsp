<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="es">
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet" crossorigin="anonymous">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.6.0/css/all.min.css" crossorigin="anonymous" referrerpolicy="no-referrer" />
    <title>Gestión de Empleados</title>
</head>
<body>
    <div class="container mt-5">
        <div class="card shadow-lg">
            <div class="card-body">
                <h3 class="card-title">Gestión de Empleados - Actividad Puesta en marcha de una página web</h3>
                <hr />

                <a href="EmpleadoControlador?accion=nuevo" class="btn btn-success btn-sm mb-3">
                    <i class="fa fa-plus-circle"></i> Nuevo Empleado
                </a>

                <jsp:include page="../components/Mensaje.jsp" />

                <table class="table table-striped table-hover table-bordered">
                    <thead class="table-dark">
                        <tr>
                            <th>ID</th>
                            <th>Nombres</th>
                            <th>Apellidos</th>
                            <th>Fecha Ingreso</th>
                            <th>Sueldo</th>
                            <th>Acción</th>
                        </tr>
                    </thead>
                    <tbody>
                        <c:forEach items="${empleados}" var="item">
                            <tr>
                                <td>${item.id}</td>
                                <td>${item.nombres}</td>
                                <td>${item.apellidos}</td>
                                <td>${item.fechaIngreso}</td>
                                <td>${item.sueldo}</td>
                                <td>
                                    <a href="EmpleadoControlador?accion=editar&id=${item.id}" class="btn btn-info btn-sm">
                                        <i class="fa fa-edit"></i>
                                    </a>
                                    <a href="EmpleadoControlador?accion=eliminar&id=${item.id}" onclick="return confirm('Está seguro que desea eliminar el empleado con id ${item.id}')" class="btn btn-danger btn-sm">
                                        <i class="fa fa-trash"></i>
                                    </a>
                                </td>
                            </tr>
                        </c:forEach>
                        <c:if test="${empleados.size() == 0}">
                            <tr class="text-center">
                                <td colspan="6">No hay registros</td>
                            </tr>
                        </c:if>
                    </tbody>
                </table>
            </div>
        </div>
    </div>
</body>
</html>
