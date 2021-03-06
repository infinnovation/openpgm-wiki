﻿#summary OpenPGM : C Reference : pgm\_transport\_set\_peer\_expiry()
#labels Phase-Implementation

_Function_
### Declaration ###
<pre>
#include <pgm/pgm.h><br>
<br>
int *pgm_transport_set_peer_expiry* (<br>
[OpenPgmCReferencePgmTransportT pgm_transport_t]*     transport,<br>
[http://library.gnome.org/devel/glib/stable/glib-Basic-Types.html#guint guint]                peer_expiry<br>
);<br>
</pre>

### Purpose ###
Set timeout for removing a dead peer.

### Remarks ###
The absence of regular Source Path Messages (SPMs) indicates the failure of a network element or the PGM source.

TIBCO Rendezvous handles session timeouts based on <tt>HOST.STATUS</tt> broadcasts, independent of whether TRDP or PGM is used as the underlying network transport.  The host timeout interval is 300 seconds.

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
<td><tt>peer_expiry</tt></td>
<td>Timeout in microseconds.</td>
</tr>
</table>


### Return Value ###
On success, returns 0.  On invalid parameter, returns <tt>-EINVAL</tt>.

### Example ###
Set expiration timeout to five times the ambient SPM interval, in effect allowing up to five lost broadcasts.

```
 pgm_transport_set_peer_expiry (transport, 5*8192*1000);
```

Set expiration interval to 300 seconds.

```
 pgm_transport_set_peer_expiry (transport, 300*1000*1000);
```

### See Also ###
  * <tt><a href='OpenPgmCReferencePgmTransportT.md'>pgm_transport_t</a></tt><br>
<ul><li><tt><a href='OpenPgmCReferencePgmTransportSetAmbientSpm.md'>pgm_transport_set_ambient_spm()</a></tt><br>
</li><li><a href='OpenPgmCReferenceTransport.md'>Transport</a> in OpenPGM C Reference.