<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
  <xsl:output method="html" indent="yes"/>

  <xsl:template match="/">
    <table>
      <tr>
        <th>Time</th>
        <th>Event</th>
        <th>Location</th>
      </tr>
      <xsl:for-each select="events/event">
        <tr>
          <td>
            <xsl:value-of select="start_time"/>
          </td>
          <td>
            <xsl:value-of select="activity"/>
          </td>
          <td>
            <xsl:value-of select="venue"/>
            <xsl:text>, </xsl:text>
            <xsl:value-of select="room"/>
          </td>
        </tr>
      </xsl:for-each>
    </table>
  </xsl:template>
</xsl:stylesheet>
