<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!--begin of menu-->
<nav class="navbar navbar-expand-md navbar-dark bg-dark">
    <div class="container">
        <a class="navbar-brand" href="Home.jsp">Shop online</a>
        <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarsExampleDefault" aria-controls="navbarsExampleDefault" aria-expanded="false" aria-label="Toggle navigation">
            <span class="navbar-toggler-icon"></span>
        </button>
        <c:set var="ACCOUNT" value="${sessionScope.ACC}"/>
        <div class="collapse navbar-collapse justify-content-end" id="navbarsExampleDefault">
            <ul class="navbar-nav m-auto">
                <c:if test="${ACCOUNT!=null}">
                    <li class="nav-item"${ACCOUNT.isCustomer()?"style='display: none;'":""}>
                        <a class="nav-link"style='color: white;'":"" href="LoadManagerOrder">Manager Order</a>
                    </li>
                    <li class="nav-item" ${!ACCOUNT.isAdmin()?"style='display: none;'":""}>
                        <a class="nav-link"style='color: white;'":"" href="ManagerAccount">Manager Account</a>
                    </li>
                    <li class="nav-item"${ACCOUNT.isCustomer()?"style='display: none;'":""}>
                        <a class="nav-link"style='color: white;'":"" href="ManagerProduct.jsp">Manager Product</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link"style='color: white;'":"" href="#">Hello ${ACCOUNT.name}</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link"style='color: white;'":"" href="LogoutServlet">Logout</a>
                    </li>
                </c:if>
                <li class="nav-item"  ${ACCOUNT!=null?"style='display: none;'":""}>
                    <a class="nav-link" href="Login.jsp">Login</a>
                </li>
            </ul>

            <form action="search" method="post" class="form-inline my-2 my-lg-0">
                
                <jsp:useBean id="CartDAO" scope="page" class="dao.CartDAO" />
                <jsp:setProperty name="CartDAO" property="*" />

                <a class="btn btn-success btn-sm ml-3" href="LoadCart">
                    <i class="fa fa-shopping-cart"></i> Cart
                    <span class="badge badge-light">${CartDAO.getTotal(sessionScope.ACC.uId)}</span>
                </a>
            </form>
        </div>
    </div>
</nav>
<section class="jumbotron text-center"style='background:#7d9fe8;'":"">
    <div class="container">
        <h1 class="jumbotron-heading">Shopping technology</h1>
        <p class="lead text-muted mb-0">Uy tín tạo nên thương hiệu</p>
    </div>
</section>
<!--end of menu-->
