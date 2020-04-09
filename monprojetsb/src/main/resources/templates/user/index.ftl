<#import "/spring.ftl" as spring/>

<head>
  <#include "../includable/bootstrap.ftl">
</head>

<body>
  <h1> User Index </h1>
  <a href="create">Create new</a>
  <table class="table table-bordered table-hover">
    <tr>
      <th>Name</th>
      <th>Price</th>
    </tr>
    <#list items as item>
    <tr>
      <td>${item.name}</td>
      <td>${item.price}</td>
      <td><a href="show/${item["id"]}">Show</a></td>
      <td>
        <form action="delete" method="POST">
          <input type="hidden" name="id" value="${item["id"]}">
          <input type="submit" value="delete"/>
        </form>
      </td>
    </tr>
    </#list>
   </table>
</body>
