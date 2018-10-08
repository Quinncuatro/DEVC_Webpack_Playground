<cftry>
 <cfquery name="qGetRowNames" dataSource="elidb">
   SELECT ItemName,ItemLink
   FROM infotables
   WHERE ItemTableName = "#URL.TableName#"
   AND ItemCategory = "#URL.TableCategory#"
  </cfquery>
  <cfcatch>
    <cfset qGetRowNames = "1">
  </cfcatch>
</cftry>

<cfoutput>#SerializeJSON( qGetRowNames )#</cfoutput>