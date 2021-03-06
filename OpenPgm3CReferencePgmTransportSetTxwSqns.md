﻿#summary OpenPGM 3 : C Reference : Transport : pgm\_transport\_set\_txw\_sqns()
#labels Phase-Implementation
#sidebar TOC3CReferenceTransport
_Function_
### Declaration ###
<pre>
#include <pgm/pgm.h><br>
<br>
bool *pgm_transport_set_txw_sqns* (<br>
[OpenPgm3CReferencePgmTransportT pgm_transport_t]*     transport,<br>
unsigned                sqns<br>
);<br>
</pre>

### Purpose ###
Set send window size in sequence numbers.

### Remarks ###
Microsoft PGM sets its transmt window size in bytes, a default size of 10 MB which is roughly 7,000 sequence numbers when using 1,500 MTU sized IPv4 packets.  Microsoft PGM stores its window contents on disk to enable large window sizes, OpenPGM only stores in memory.

### Parameters ###
<table cellpadding='5' border='1' cellspacing='0'>
<tr>
<th>Parameter</th>
<th>Description</th>
</tr>
<tr>
<td><tt>transport</tt></td>
<td>The PGM transport object.</td>
</tr><tr>
<td><tt>sqns</tt></td>
<td>Size of window in sequence numbers.</td>
</tr>
</table>


### Return Value ###
On success, returns <tt>true</tt>.  On invalid parameter, returns <tt>false</tt>.

### Example ###
Create a reliability window sufficient to store 400,000 packets.

```
 pgm_transport_set_txw_sqns (transport, 400*1000);
```

### See Also ###
  * <tt><a href='OpenPgm3CReferencePgmTransportT.md'>pgm_transport_t</a></tt><br>
<ul><li><tt><a href='OpenPgm3CReferencePgmTransportSetRxwSqns.md'>pgm_transport_set_rxw_sqns()</a></tt><br>
</li><li><a href='OpenPgm3CReferenceTransport.md'>Transport</a> in OpenPGM C Reference.</li></ul>
