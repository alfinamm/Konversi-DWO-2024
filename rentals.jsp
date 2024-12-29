<%@ page session="true" contentType="text/html; charset=ISO-8859-1" %>
<%@ taglib uri="http://www.tonbeller.com/jpivot" prefix="jp" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jstl/core" %>

<jp:mondrianQuery id="query01" 
                  jdbcDriver="org.postgresql.Driver" 
                  jdbcUrl="jdbc:postgresql://localhost:5432/dw_dvdrental?user=postgres&password=pina" 
                  catalogUri="/WEB-INF/queries/rentals.xml">

SELECT  {[Measures].[Amount], [Measures].[Rental Duration], [Measures].[Replacement Cost]} ON COLUMNS,
{([Time],[Customer],[Film],[Rental],[Actor])} ON ROWS

FROM [FactPaymentCube]

</jp:mondrianQuery>

<c:set var="title01" scope="session">Query RENTALS using Mondrian OLAP</c:set>
