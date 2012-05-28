<?xml version="1.0" encoding="ISO-8859-1"?>

<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

<xsl:output indent="no" method="html"/>
<xsl:template match="/">
  <html>
<link rel="stylesheet" type="text/css" href="fantasycss.css" title="Style"/>
  <body>
    <head>
      <title>Contributors to Fantasy Literature Wiki</title>
    </head>
      <h2><center>Contributors to Fantasy Literature Wiki</center></h2>
      <xsl:apply-templates/>
  </body>
  </html>
</xsl:template>

<xsl:template match="/category">
  <br/>
  <xsl:value-of select="mediawiki/category"><xsl:apply-templates/></xsl:value-of>
  <xsl:value-of select="title">  </xsl:value-of>
  <br/>
  <xsl:value-of select="contributor"></xsl:value-of>


</xsl:template>


</xsl:stylesheet>
