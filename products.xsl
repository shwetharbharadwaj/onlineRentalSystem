<?xml version="1.0"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

<xsl:template match="/">
  <html>
    <body>
      <style>
  table{
        margin: 20px 0;
        margin-top: 100px;
    }
  
th,
td {
  border: 1px solid black;
  border-collapse: collapse;
}

th,
td {
  padding: 5px;
}
</style>

  <h2>Accessing by node location</h2>
            <table border = "1">
               <tr bgcolor = "#9acd32">
                <th>id</th>
                  <th>name</th>
                  <th>rent</th>
                                    <th>duration</th>

                  
               </tr>
               <xsl:for-each select = "cutomerList/customerId">
                  <tr>
                    <td> <xsl:value-of select = "@id"/></td>

                     <td> <xsl:value-of select = "name"/></td>
                     <td><xsl:value-of select = "rent"/></td>
                     <td><xsl:value-of select = "duration"/></td>
                   
                  </tr>
               </xsl:for-each>
            </table>   

             <h2>Accessing by Predicate</h2>
            <table border = "1">
               <tr bgcolor = "#9acd32">
                <th>Items in row1</th>
                  <th>Last item</th>
                  <th>Item with id=3</th>
                  
               </tr>
               <xsl:for-each select = "cutomerList/customerId">
                  <tr>
                    <td><xsl:value-of select = "/cutomerList/customerId[1]"/></td>
                     <td><xsl:value-of select = "/cutomerList/customerId[last()]"/></td>
                     <td><xsl:value-of select = "/cutomerList/customerId[@id = 003]"/></td>
                  </tr>
               </xsl:for-each>
            </table>  


            <h2>String Function</h2>
            <table border = "1">
               <tr bgcolor = "#9acd32">
                
                  <th>name</th>
                  <th>size</th>
                  
               </tr>
               <xsl:for-each select = "cutomerList/customerId">
                  <tr>

                    <td><xsl:value-of select = "name"/></td>
                    <td><xsl:value-of select = "string-length(name)"/></td>
                  </tr>
               </xsl:for-each>
            </table>       
            

            <h2>String Concat</h2>
            <table border = "1">
               <tr bgcolor = "#9acd32">

                                  <th>Id</th>

                  <th>Name</th>
                  <th>Offer Coupons</th>
                  
               </tr>
               <xsl:for-each select = "cutomerList/customerId">
                  <tr>

                    <td><xsl:value-of select = "@id"/></td>
                                        <td><xsl:value-of select = "name"/></td>

                    <td><xsl:value-of select = "concat(name,id,code)"/></td>
                  </tr>
               </xsl:for-each>
            </table> 



<h2>Number Function</h2>
            <table border = "1">
               <tr bgcolor = "#9acd32">
                
                  <th>Name</th>
                  <th>Discount</th>
                                    <th>Discount on August 15</th>


                  
               </tr>
               <xsl:for-each select = "cutomerList/customerId">
                  <tr>

                    <td><xsl:value-of select = "name"/></td>
                    <td><xsl:value-of select = "discount "/></td>
                                        <td><xsl:value-of select = "discount * 3 "/></td>

                  </tr>
               </xsl:for-each>
            </table> 

            <h2>Number Function 2</h2>
            <table border = "1">
               <tr bgcolor = "#9acd32">
                
                  <th>Name</th>
                  <th>Discount</th>
                                    <th>Total Price</th>


                  
               </tr>
               <xsl:for-each select = "cutomerList/customerId">
                  <tr>

                    <td><xsl:value-of select = "name"/></td>
                    <td><xsl:value-of select = "discount "/></td>
                                        <td><xsl:value-of select = "round(discount) "/></td>


                  </tr>
               </xsl:for-each>
            </table> 

            <h2>Number Function 3</h2>
            <table border = "1">
               <tr bgcolor = "#9acd32">
                
                  <th>Name</th>
                  <th>Discount</th>
                                    <th>Total Price</th>


                  
               </tr>
               <xsl:for-each select = "cutomerList/customerId">
                  <tr>

                    <td><xsl:value-of select = "name"/></td>
                    <td><xsl:value-of select = "discount "/></td>
                                        <td><xsl:value-of select = "ceiling(discount) "/></td>
                                        

                  </tr>
               </xsl:for-each>
            </table> 

             <h2>NodeSet Function 1</h2>
            <table border = "1">
               <tr bgcolor = "#9acd32">
                
                  <th>Name</th>
                  <th>Discount</th>
                                    <th>Position</th>


                  
               </tr>
               <xsl:for-each select = "cutomerList/customerId">
                  <tr>

                    <td><xsl:value-of select = "name"/></td>
                    <td><xsl:value-of select = "discount "/></td>
                                        <td><xsl:value-of select = "position() "/></td>
                                        

                  </tr>
               </xsl:for-each>
            </table> 


<h2>Boolean</h2>
            <table border = "1">
               <tr bgcolor = "#9acd32">
                  <th>ID</th>
                  <th>Name</th>
                  <th>Release</th>
                  <th>Code</th>


                  <th>Cost</th>
                  <th>Discount</th>
                


                  
               </tr>
               <xsl:for-each select = "cutomerList/customerId[(@type = 'game') or (@type = 'movie') ]">
                  <tr>

                    <td><xsl:value-of select = "@id"/></td>
                    <td><xsl:value-of select = "name"/></td>
                    <td><xsl:value-of select = "release"/></td>

                    <td><xsl:value-of select = "code"/></td>

                    <td><xsl:value-of select = "cost"/></td>

                    <td><xsl:value-of select = "discount"/></td>
                                        

                  </tr>
               </xsl:for-each>
            </table> 





         </body>
      </html>
   </xsl:template>

</xsl:stylesheet>