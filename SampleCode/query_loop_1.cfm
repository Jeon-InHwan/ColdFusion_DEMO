<!-- This is just a sample Not actual code -->

<!-- Without other options -->
<cfloop query="queryName">
    <cfoutput>#queryName.fieldName#</cfoutput>
</cfloop>

<!-- With some options -->
<cfloop query="queryName" startrow="5">
    <cfoutput>#queryName.fieldName#</cfoutput>
</cfloop>