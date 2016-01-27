<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="2.0"
    xmlns="http://www.w3.org/1999/xhtml" xmlns:tei="http://www.tei-c.org/ns/1.0"
    exclude-result-prefixes="tei">



    <xsl:template match="/">
        <xsl:apply-templates select="//tei:div[@type = 'section'][starts-with(@xml:id, 'l')]"/>
    </xsl:template>

<xsl:template match="tei:div">
<xsl:variable name="sect_id" select="substring-after(@xml:id, 'l')"/>
<xsl:result-document method="text" encoding="utf-8" href="../VH/VH-{$sect_id}.md">
    <xsl:text>---</xsl:text>
    <xsl:text>&#10;</xsl:text>
    <xsl:text>layout: edition</xsl:text>
    <xsl:text>&#10;</xsl:text>
    <xsl:text>panel_left:  |</xsl:text>
     <xsl:copy-of select="."/>
    <xsl:text>&#10;</xsl:text>
    <xsl:text>&#10;</xsl:text>
    <xsl:text>panel_right:  |</xsl:text>
    <xsl:text>&#10;</xsl:text>   
    <xsl:copy-of  select="following::tei:div[@type = 'section'][starts-with(@xml:id, 'e')][@xml:id = concat('e', $sect_id)]"/>
    <xsl:text>&#10;</xsl:text>
    <xsl:text>&#10;</xsl:text>
    <xsl:text>---</xsl:text>
    <xsl:text>&#10;</xsl:text>
    <xsl:text>&#10;</xsl:text>
    Technical Description
</xsl:result-document>
</xsl:template>
    
<xsl:template match="tei:div" mode="copyxml">
    <xsl:copy/>
</xsl:template>




    <!-- això és per crear un únic fitxer -->
 <!--   <xsl:template match="master">
        <html>
            <head>
                <title>Vída de Aníbal</title>
                <link rel="stylesheet" type="text/css" href="VHS.css"/>
            </head>
            <body>
                <h1>Vída de Aníbal</h1>
                <xsl:apply-templates/>
            </body>
        </html>
    </xsl:template>
 -->

    <!-- això era per fer fitxers diferents-->
     <!--<xsl:template match="//tei:div[@type='section']">       
        <xsl:result-document href="out/{@n}.html" method="xhtml"
            doctype-system="http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
            <html>
                <head>
                    <title>Vita de Aníbal</title>
                </head>
                <body>
                  <xsl:apply-templates></xsl:apply-templates>
                    <xsl:value-of select="tei:body/div[@type='section']"></xsl:value-of>
                </body>
            </html>
        </xsl:result-document>       
    </xsl:template>-->
    

   <!-- <xsl:template match="tei:teiHeader"/>


    <xsl:template match="tei:body/tei:div[@xml:id='orig']">
        <div id="left2">
            <xsl:apply-templates/>
        </div>
    </xsl:template>


    <xsl:template match="tei:body/tei:div[@xml:id='trad']">
        <div id="right2">
            <xsl:apply-templates/>
        </div>
    </xsl:template>



    <xsl:template match="tei:div[@type='title']">
        <div class="title">
            <xsl:apply-templates/>
        </div>
    </xsl:template>

    <xsl:template match="tei:p">
        <p>
            <xsl:apply-templates/>
        </p>
    </xsl:template>

    <xsl:template match="tei:num">
        <xsl:element name="a">
            <xsl:attribute name="href">
                <xsl:value-of select="@corresp"/>
            </xsl:attribute>
            <xsl:attribute name="id">
                <xsl:value-of select="@xml:id"/>
            </xsl:attribute>
            <xsl:apply-templates/>
        </xsl:element>
    </xsl:template>

    <xsl:template match="tei:pb">
        <xsl:element name="a">
            <xsl:attribute name="href">
                <xsl:value-of select="@facs"/>
            </xsl:attribute>
            <xsl:attribute name="target">new</xsl:attribute>
          <xsl:element name="img">
              <xsl:attribute name="src">
                  <xsl:value-of select="@facs"/>
              </xsl:attribute>
          </xsl:element>
            <!xx SAT: se deberá cambiar por la correspondiente cada vezxx>
           <!xx <img src="1491/165v.png" title="Facsímil"/>xx>
        </xsl:element>
    </xsl:template>
-->

</xsl:stylesheet>
