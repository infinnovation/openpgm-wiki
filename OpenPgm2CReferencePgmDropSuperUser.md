﻿#summary OpenPGM 2 : C Reference : Environment : pgm\_drop\_superuser()
#labels Phase-Implementation
#sidebar TOC2CReferenceEnvironment
_Function_
### Declaration ###
<pre>
#include <pgm/pgm.h><br>
<br>
void *pgm_drop_superuser* (void);<br>
</pre>

### Purpose ###
Drop superuser privileges needed to create PGM protocol sockets.


### Example ###
```
 pgm_transport_t* transport = NULL;
 struct pgm_transport_info_t* res = NULL;
 pgm_if_get_transport_info (";239.192.0.1", NULL, &res, NULL);
 pgm_gsi_create_from_hostname (&res->ti_gsi, NULL);
 pgm_transport_create (&transport, res, NULL);
 pgm_drop_superuser ();
 pgm_if_free_transport_info (res);
```

### See Also ###
  * <tt><a href='OpenPgm2CReferencePgmTransportCreate.md'>pgm_transport_create()</a></tt><br>
<ul><li><a href='OpenPgm2CReferenceEnvironment.md'>Environment</a> in OpenPGM C Reference.