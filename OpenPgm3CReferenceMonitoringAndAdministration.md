# Introduction #
The OpenPGM suite provides two optional monitoring and administration interfaces, one a traditional SNMP agent that works with the popular [Net-SNMP](http://net-snmp.sourceforge.net/) daemon, the other a more convenient web-based HTTP interface.


# Topics in Alphabetical Order #
<table cellpadding='5' border='1' cellspacing='0'>
<tr>
<th>Function or Type</th>
<th>Description</th>
</tr>
<tr>
<td><tt><a href='OpenPgm3CReferencePgmSnmpInit.md'>pgm_snmp_init()</a></tt></td>
<td>Start the SNMP sub-agent.</td>
</tr><tr>
<td><tt><a href='OpenPgm3CReferencePgmSnmpShutdown.md'>pgm_snmp_shutdown()</a></tt></td>
<td>Terminates and destroys a running SNMP sub-agent.</td>
</tr><tr>
<td><tt><a href='OpenPgm3CReferencePgmHttpInit.md'>pgm_http_init()</a></tt></td>
<td>Start the HTTP or HTTPS interface.</td>
</tr><tr>
<td><tt><a href='OpenPgm3CReferencePgmHttpShutdown.md'>pgm_http_shutdown()</a></tt></td>
<td>Terminates and destroys a running HTTP/HTTPS interface.</td>
</tr>
</table>


# Example HTTP Screenshots #

<table cellpadding='5' border='1' cellspacing='0'>
<tr>
<td><a href='img/PGMHTTP_-_general_information.png'><img src='img/320px-PGMHTTP_-_general_information.png' /><br /><br /><img src='img/magnify-clip.png' align='right' /></a>General Information</td>
</tr>
</table>

<table cellpadding='5' border='1' cellspacing='0'>
<tr>
<td><a href='img/PGMHTTP_-_transports.png'><img src='img/320px-PGMHTTP_-_transports.png' /><br /><br /><img src='img/magnify-clip.png' align='right' /></a>Transports</td>
</tr>
</table>

<table cellpadding='5' border='1' cellspacing='0'>
<tr>
<td><a href='img/PGMHTTP_-_receive_transport.png'><img src='img/320px-PGMHTTP_-_receive_transport.png' /><br /><br /><img src='img/magnify-clip.png' align='right' /></a>Receive Transports</td>
</tr>
</table>

<table cellpadding='5' border='1' cellspacing='0'>
<tr>
<td><a href='img/PGMHTTP_-_send_transport.png'><img src='img/320px-PGMHTTP_-_send_transport.png' /><br /><br /><img src='img/magnify-clip.png' align='right' /></a>One Send Transport</td>
</tr>
</table>