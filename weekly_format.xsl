<?xml version="1.0" encoding="utf-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
  <xsl:output method="html" doctype-system="about:legacy-compat" encoding="UTF-8" indent="yes" />
  
  
  <xsl:variable name="schedule" select="document('clm_sched.xml')" />
  <xsl:key name="week" match="week" use="date" />
  <xsl:key name="part" match="part" use="title"/>

  <xsl:template match="/">
    <html>
      <head>
        <title>Русский Орландо График Встреча в Будни</title>
        <link rel="stylesheet" type="text/css" href="weekly_style.css" />
      </head>
      <body>
        <header>
          <div id="header">
            <div id="head_title">
              <h2>Встреча в Будни</h2>
            </div>
          </div>
        </header>
        
          <xsl:for-each select="//week[generate-id()=generate-id(key('week', date)[1])]">
            <table id="dateTable" >
              <p id="{generate-id()}">
                <xsl:value-of select="date"/>
                <br/>
                <xsl:value-of select="reading"/>
              </p>
              <tr>
                <td id="date">
                  Песня: <xsl:value-of select="oSong"/>
                </td>
                <td>
                  молитва: <xsl:value-of select="opening"/>
                </td>
              </tr>
            </table>

            <table id="openComm">
              <tr>
                <td>
                  Вступительное слово
                  <br/>
                  <br/>
                  <br/>
                  <br/>
                  <br/>
                  <br/>
                  <br/>
                  <br/>
                </td>
              </tr>
            </table>


            <table id="treasure">
              <tr id="treasure">
                <td colspan="2">СОКРОВИЩА ИЗ СЛОВА БОГА</td>
                <td id="time">7:38 - 8:00</td>
              </tr>

              <xsl:for-each select="treasures/part">
                <tr style="background-color: white;">
                  <td>
                    <xsl:value-of select="title"/>
                  </td>
                  <td colspan="2">
                    <xsl:value-of select="person"/>
                  </td>
                </tr>
              </xsl:for-each>
              <xsl:for-each select="treasures/student">
                <tr style="background-color: white;">
                  <td id="studentRead">
                    <xsl:value-of select="title"/>
                    -
                    <xsl:value-of select="material"/>
                  </td>
                  <td id="student">
                    <xsl:value-of select="person"/>
                  </td>
                  <td id="studentLesson">
                    урок: <xsl:value-of select="lesson"/>
                  </td>
                </tr>
                <tr style="background-color: white;">
                  <td colspan="3">
                    <br/>
                    <br/>
                    <br/>
                    <br/>
                  </td>
                </tr>
              </xsl:for-each>
            </table>



            <table id="ministry">
              <tr id="ministry">
                <td colspan="3">СОКРОВИЩА ИЗ СЛОВА БОГА</td>
                <td id="time">8:00 - 8:15</td>
              </tr>

              <xsl:for-each select="ministry/part">
                <tr style="background-color: white;">
                  <td>
                    <xsl:value-of select="title"/>
                  </td>
                  <td>
                    <xsl:value-of select="person"/>
                  </td>
                </tr>
                <tr style="background-color: white;">
                  <td colspan="3">
                    <br/>
                    <br/>
                    <br/>
                    <br/>
                    <br/>
                    <br/>
                    <br/>
                    <br/>
                    <br/>
                    <br/>
                  </td>
                </tr>
              </xsl:for-each>
              <xsl:for-each select="ministry/student">
                <tr style="background-color: white;">
                  <td id="studentTitle">
                    <xsl:value-of select="title"/>
                  </td>
                  <td id="student">
                    <xsl:value-of select="person"/>/
                    <xsl:value-of select="assistant"/>
                  </td>
                  <td id="studentLesson">
                    урок: <xsl:value-of select="lesson"/>
                  </td>
                  <td id="studentDesc">
                    <xsl:value-of select="description"/>
                  </td>
                </tr>
                <tr style="background-color: white;">
                  <td colspan="4">
                    <br/>
                    <br/>
                    <br/>
                    <br/>
                  </td>
                </tr>
              </xsl:for-each>
            </table>



            <table id="living">
              <tr id="living">
                <td colspan="1">СОКРОВИЩА ИЗ СЛОВА БОГА</td>
                <td id="time">8:15 - 9:05</td>
              </tr>
              <tr style="background-color: white;">
                <td colspan="2">
                  Песня: <xsl:value-of select="living/song"/>
                </td>
              </tr>
              <xsl:for-each select="living/part">
                <tr style="background-color: white;">
                  <td>
                    <xsl:value-of select="title"/>
                  </td>
                  <td>
                    <xsl:value-of select="person"/>
                  </td>
                </tr>
              </xsl:for-each>
              <xsl:for-each select="living/study">
                <tr style="background-color: white;">
                  <td>
                    Изучение Библии в собрании
                  </td>
                  <td>
                    <xsl:value-of select="conductor"/>/
                    <xsl:value-of select="reader"/> (чтец)
                  </td>
                </tr>
              </xsl:for-each>
                <tr style="background-color: white;">
                  <td>
                    Песня: <xsl:value-of select="cSong"/>
                  </td>
                  <td>
                    молитва: <xsl:value-of select="closing"/>
                  </td>
                </tr>
            </table>

            <table id="close">
              <tr>
                <td>
                  обзор встреч
                  <br/>
                  <br/>
                  <br/>
                  <br/>
                  <br/>
                  <br/>
                  <br/>
                  <br/>
                </td>
                <td id="time" rowspan="2" width="10%">9:05 - 9:10</td>
              </tr>
              <tr>
                <td>
                  объявление / письма
                  <br/>
                  <br/>
                  <br/>
                  <br/>
                  <br/>
                  <br/>
                  <br/>
                  <br/>
                </td>
              </tr>
              
            </table>

          </xsl:for-each>
        
      </body>
    </html>
    
  </xsl:template>
</xsl:stylesheet>
