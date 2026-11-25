package defpackage;

import java.util.Collections;
import java.util.HashMap;
import java.util.Map;

/* compiled from: PG */
/* loaded from: classes.dex */
public class ExtensionRegistryLite {
    private static volatile ExtensionRegistryLite c;
    private static volatile ExtensionRegistryLite d;
    private final Map e;
    private static volatile boolean b = false;
    static final ExtensionRegistryLite a = new ExtensionRegistryLite(null);

    dcz() {
        this.e = new HashMap();
    }

    public static ExtensionRegistryLite a() {
        ExtensionRegistryLite dczVar = c;
        if (dczVar == null) {
            synchronized (ExtensionRegistryLite.class) {
                dczVar = c;
                if (dczVar == null) {
                    dczVar = a;
                    c = dczVar;
                }
            }
        }
        return dczVar;
    }

    public ProtoParserFactory c(MessageLite derVar, int i) {
        return (ProtoParserFactory) this.e.get(new ExtensionRegistryEntry(derVar, i));
    }

    public ExtensionRegistryLite(byte[] bArr) {
        this.e = Collections.emptyMap();
    }

    public static ExtensionRegistryLite b() {
        ExtensionRegistryLite dczVar = d;
        if (dczVar != null) {
            return dczVar;
        }
        synchronized (ExtensionRegistryLite.class) {
            ExtensionRegistryLite dczVar2 = d;
            if (dczVar2 != null) {
                return dczVar2;
            }
            ExtensionRegistryLite b2 = GeneratedExtensionRegistryLoader.b(ExtensionRegistryLite.class);
            d = b2;
            return b2;
        }
    }
}
