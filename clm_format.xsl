<?xml version="1.0" encoding="utf-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
  <xsl:output method="html" doctype-system="about:legacy-compat" encoding="UTF-8" indent="yes" />
  <xsl:key name="week" match="week" use="date" />
  <xsl:key name="part" match="part" use="title"/>

  <xsl:template match="/">
    <html>
      <head>
        <title>Русский Орландо График Встреча в Будни</title>
        <meta charset="utf-8" />
        <meta name="viewport" content="width=device-width, initial-scale=1"/>
        <link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css"/>
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.0/jquery.min.js"></script>
        <script src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/js/bootstrap.min.js"></script>
        <link href="styles.css" rel="stylesheet" />
        <link rel="stylesheet" href="print.css" />
      </head>
      <body>
          <div id="header">
            <div id="head_title">
              <h2>Встреча в Будни</h2>
            </div>
     <div id="navbar">
        <nav class="navbar navbar-inverse">
            <div class="container-fluid">
                <div class="navbar-header">
                    <a class="navbar-brand" href="index.html">HOME</a>
                </div>
                <ul class="nav navbar-nav">
                    <li class="dropdown">
                        <a class="dropdown-toggle" data-toggle="dropdown" href="#">CLM <span class="caret"></span></a>
                        <ul class="dropdown-menu">
                            <li><a href="clm_sched_feb_2016.xml">February</a></li>
                            <li><a href="clm_sched_mar_2016.xml">March</a></li>
                            <li><a href="clm_sched_apr_2016.xml">April</a></li>
                        </ul>
                    </li>
                    <li><a href="#">Coming Soon</a></li>
                </ul>
            </div>
        </nav>
    </div>
          </div>
        <div id="wrap">
          <xsl:for-each select="//week[generate-id()=generate-id(key('week', date)[1])]">
            <table id="dateTable">
              <tr>
                <td id="date">
                  <h3 id="{generate-id()}">
                    <xsl:value-of select="date"/>
                  </h3>
                </td>
                <td>
                  Председатель: <b><xsl:value-of select="chairman"/> </b>
                </td>
                <td>
                  Вступительная молитва: <b><xsl:value-of select="opening"/> </b>
                </td>
                <td>
                  Заключительная молитва: <b><xsl:value-of select="closing"/> </b>
                </td>
              </tr>
            </table>


            <table id="assignments">
              <tr>
                <td id="treasure">СОКРОВИЩА ИЗ СЛОВА БОГА</td>
                <td id="ministry">ОТТАЧИВАЕМ НАВЫКИ СЛУЖЕНИЯ</td>
                <td id="living">ХРИСТИАНСКАЯ ЖИЗНЬ</td>
              </tr>

              <tr>
                <td>
                  <div id="treasures">
                    <xsl:for-each select="treasures/part">
                        <div id="person">
                          <xsl:value-of select="person"/>
                        </div>
                        <div id="time">
                          <xsl:value-of select="time"/> мин
                        </div>
                        <div id="title_part">
                          <xsl:value-of select="title"/>
                        </div>
                    </xsl:for-each>
                    <xsl:for-each select="treasures/student">
                        <div id="person">
                          <xsl:value-of select="person" />
                        </div>
                        <div id="time">
                          <xsl:value-of select="time"/> мин
                        </div>
                        <div id="title">
                          Чтение Библии
                        </div>
                        <div id="lesson">
                          Урок <xsl:value-of select="lesson"/>
                        </div>
                    </xsl:for-each>
                  </div>
                </td>

                <td>
                  <div id="ministry">
                    <xsl:for-each select="ministry/part">
                      <div id="person">
                          <xsl:value-of select="person"/>
                        </div>
                        <div id="time">
                          <xsl:value-of select="time"/> мин
                        </div>
                        <div id="title_part">
                          <xsl:value-of select="title"/>
                        </div>
                    </xsl:for-each>

                    <xsl:for-each select="ministry/student">
                        <div id="person">
                          <xsl:value-of select="person"/> / <xsl:value-of select="assistant"/>
                        </div>
                        <div id="time">
                          <xsl:value-of select="time"/> мин
                        </div>
                        <div id="title">
                          <xsl:value-of select="title"/>
                        </div>
                        <div id="lesson">
                          Урок <xsl:value-of select="lesson"/>
                        </div>
                    </xsl:for-each>
                  </div>
                </td>


                <td>
                  <div id="living">
                    <xsl:for-each select="living/part">
                      <div id="person">
                          <xsl:value-of select="person"/>
                        </div>
                      <div id="time">
                          <xsl:value-of select="time"/> мин
                        </div>
                      <div id="title_part">
                          <xsl:value-of select="title"/>
                        </div>
                    </xsl:for-each>

                    <xsl:for-each select="living/study">
                      <div id="title">
                          Изучение Библии в собрании
                        </div>
                      <div id="time">
                        <xsl:value-of select="time"/> мин
                      </div>
                      <div id="conductor">
                         Руководитель / Читатель 
                      </div>
                      <div id="person">
                      <xsl:value-of select="conductor"/> / <xsl:value-of select="reader"/>
                      </div>
                    </xsl:for-each>
                  </div>
                </td>
              </tr>
            </table>
          </xsl:for-each>
        </div>
      </body>
    </html>
    
  </xsl:template>
</xsl:stylesheet>
