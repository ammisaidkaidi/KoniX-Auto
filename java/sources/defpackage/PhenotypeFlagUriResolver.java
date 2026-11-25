package defpackage;

import android.net.Uri;
import java.util.Map;

/* compiled from: PG */
/* loaded from: classes.dex */
public final class PhenotypeFlagUriResolver {
    public final Map a;

    public PhenotypeFlagUriResolver() {
        this.a = new CompactHashMap();
    }

    public PhenotypeFlagUriResolver(Map map) {
        this.a = map;
    }

    public final String a(Uri uri, String str, String str2, String str3) {
        if (uri != null) {
            str = uri.toString();
        } else if (str == null) {
            return null;
        }
        Map map = (Map) this.a.get(str);
        if (map == null) {
            return null;
        }
        if (str2 != null) {
            String valueOf = String.valueOf(str3);
            str3 = valueOf.length() != 0 ? str2.concat(valueOf) : new String(str2);
        }
        return (String) map.get(str3);
    }
}
