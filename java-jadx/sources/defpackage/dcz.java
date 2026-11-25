package defpackage;

import java.util.Collections;
import java.util.HashMap;
import java.util.Map;

/* compiled from: PG */
/* loaded from: classes.dex */
public class dcz {
    private static volatile dcz c;
    private static volatile dcz d;
    private final Map e;
    private static volatile boolean b = false;
    static final dcz a = new dcz(null);

    dcz() {
        this.e = new HashMap();
    }

    public static dcz a() {
        dcz dczVar = c;
        if (dczVar == null) {
            synchronized (dcz.class) {
                dczVar = c;
                if (dczVar == null) {
                    dczVar = a;
                    c = dczVar;
                }
            }
        }
        return dczVar;
    }

    public dcx c(der derVar, int i) {
        return (dcx) this.e.get(new dcy(derVar, i));
    }

    public dcz(byte[] bArr) {
        this.e = Collections.emptyMap();
    }

    public static dcz b() {
        dcz dczVar = d;
        if (dczVar != null) {
            return dczVar;
        }
        synchronized (dcz.class) {
            dcz dczVar2 = d;
            if (dczVar2 != null) {
                return dczVar2;
            }
            dcz b2 = dde.b(dcz.class);
            d = b2;
            return b2;
        }
    }
}
