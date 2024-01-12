<%@page contentType="text/html" pageEncoding="UTF-8"%>
<html>
<head>
<title>les conditions</title>
</head>
<body bgcolor=white>
<h1>Exercices sur les conditions</h1>
<form action="#" method="post">
    <p>Saisir la valeur 1 : <input type="text" id="inputValeur" name="valeur1">
    <p>Saisir la valeur 2 : <input type="text" id="inputValeur" name="valeur2">
    <p>Saisir la valeur 3 : <input type="text" id="inputValeur" name="valeur3">

    <p><input type="submit" value="Afficher">
</form>
<%-- Récupération des valeurs --%>
    <% String valeur1 = request.getParameter("valeur1"); %>
    <% String valeur2 = request.getParameter("valeur2"); %>
    <% String valeur3 = request.getParameter("valeur3"); %>


    <%-- Vérification de la condition entre les deux valeurs --%>
    <% if (valeur1 != null && valeur2 != null && valeur3 != null) { %>
        <%-- Conversion des valeurs en entiers pour la comparaison --%>
        <% int intValeur1 = Integer.parseInt(valeur1); %>
        <% int intValeur2 = Integer.parseInt(valeur2); %>
        <% int intValeur3 = Integer.parseInt(valeur3); %>

        
        <%-- Condition if pour comparer les valeurs --%>
        <% if (intValeur1 > intValeur2) { %>
            <p>Valeur 1 est supérieure à Valeur 2.</p>
        <% } else if (intValeur1 < intValeur2) { %>
            <p>Valeur 1 est inférieure à Valeur 2.</p>
        <% } else { %>
            <p>Valeur 1 est égale à Valeur 2.</p>
        <% } %>
   
    
<h2>Exercice 1 : Comparaison 1</h2>
<p>Ecrire un programme qui demande à l'utilisateur de saisir 3 valeurs (des chiffres),</br>
A, B et C et dites nous si la valeur de C est comprise entre A et B.</br>
<p> A : <% out.print(intValeur1); %> </p>
<p> B : <% out.print(intValeur2); %> </p>
<p> C : <% out.print(intValeur3); %> </p>

<%
    boolean res = false;

    if(intValeur3 > intValeur1){
       if(intValeur3 < intValeur2){
          res = true;
       }
    }

    if(intValeur3 > intValeur2){
       if(intValeur3 < intValeur1){
          res = true;
       }
    }

    if(res){
       %> <p> <% out.print("Oui, la valeur C est entre la valeur A et la valeur B"); %> </p> <%
    } else {
      %> <p> <%  out.print("Non, la valeur C n'est pas entre la valeur A et la valeur B"); %> </p> <%
    }
%>

<h2>Exercice 2 : Pair ou Impair ?</h2>
<p>Écrivez un programme pour vérifier si un nombre est pair ou impair en utilisant une structure if</p>
<p> A : <% out.print(intValeur1); %> </p>
<%
    if(intValeur1%2 != 0){
      %> <p> <% out.print("A est IMPAIR"); %> </p> <%
    } else {
      %> <p> <% out.print("A est PAIR"); %> </p> <%
    }
%>
<% } %>
<p><a href="index.html">Retour au sommaire</a></p>
</body>
</html>
