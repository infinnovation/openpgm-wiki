﻿#summary OpenPGM 3 : C Reference : Transport : pgm\_transport\_set\_txw\_max\_rte()
#labels Phase-Implementation
#sidebar TOC3CReferenceTransport
_Function_
### Declaration ###
<pre>
#include <pgm/pgm.h><br>
<br>
bool *pgm_transport_set_txw_max_rte* (<br>
[OpenPgm3CReferencePgmTransportT pgm_transport_t]*     transport,<br>
unsigned                max_rte<br>
);<br>
</pre>

### Purpose ###
Set the size of the send window size by data rate in bytes per second (<tt><a href='OpenPgmConceptsTxwMaxRte.md'>TXW_MAX_RTE</a></tt>).

### Remarks ###
The transmit window size can be set by count of sequence numbers using <tt><a href='OpenPgm3CReferencePgmTransportSetTxwSqns.md'>pgm_transport_set_txw_sqns()</a></tt>, or by maximum transmit rate (<tt>pgm_transport_set_txw_max_rte()</tt>) and a time interval (<tt><a href='OpenPgm3CReferencePgmTransportSetTxwSecs.md'>pgm_transport_set_txw_secs()</a></tt>).

Note that setting <tt>TXW_SQNS</tt> and <tt>TXW_MAX_RTE</tt> defines a window size in sequence numbers and installs a rate limiting engine.

Microsoft PGM default transmit rate limit is 56kbps or 7,000 bytes per second.

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
<td><tt>max_rte</tt></td>
<td>Maximum rate of bytes per second, 0 to disable.</td>
</tr>
</table>


### Return Value ###
On success, returns <tt>true</tt>.  On invalid parameter, returns <tt>false</tt>.

### Example ###
Create a 10 second reliability window with maximum data rate of 400,000 bytes per second.

```
 pgm_transport_set_txw_max_rte (transport, 400*1000);
 pgm_transport_set_txw_secs (transport, 10);
```

### See Also ###
  * <tt><a href='OpenPgmConceptsTxwMaxRte.md'>TXW_MAX_RTE</a></tt> in OpenPGM Concepts.<br>
<ul><li><tt><a href='OpenPgmConceptsTxwSecs.md'>TXW_SECS</a></tt> in OpenPGM Concepts.<br>
</li><li><tt><a href='OpenPgm3CReferencePgmTransportT.md'>pgm_transport_t</a></tt><br>
</li><li><tt><a href='OpenPgm3CReferencePgmTransportSetRxwMaxRte.md'>pgm_transport_set_rxw_max_rte()</a></tt><br>
</li><li><tt><a href='OpenPgm3CReferencePgmTransportSetTxwSqns.md'>pgm_transport_set_txw_sqns()</a></tt><br>
</li><li><tt><a href='OpenPgm3CReferencePgmTransportSetTxwSecs.md'>pgm_transport_set_txw_secs()</a></tt><br>
</li><li><a href='OpenPgm3CReferenceTransport.md'>Transport</a> in OpenPGM C Reference.</li></ul>
