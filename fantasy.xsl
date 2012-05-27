<?xml version="1.0" encoding="ISO-8859-1"?>

<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

<xsl:output indent="no"/>
<xsl:template match="/">
  <html>
<link rel="stylesheet" type="text/css" href="fantasycss.css" title="Style"/>
  <body>
    <head>
      <title>A Page About Fantasy Literature</title>
      <link rel="stylesheet" type="text/css" href="table.css" title="Style"/>
    </head>
      <h2><center>A Page About Fantasy Literature</center></h2>
      <xsl:apply-templates/>
  </body>
  </html>
</xsl:template>

<xsl:template match="*">
  &lt;<xsl:value-of select="name()"></xsl:value-of>&gt;
  <xsl:apply-templates/>
  &lt;/<xsl:value-of select="name()"/>&gt;<br/>
</xsl:template>


<xsl:template match="text()">
  <xsl:value-of select="."/>
</xsl:template>

</xsl:stylesheet>
