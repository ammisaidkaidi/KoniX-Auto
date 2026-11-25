package defpackage;

import java.util.HashMap;
import java.util.Map;

/* compiled from: PG */
/* loaded from: classes.dex */
public final class MetadataKeyRegistry {
    public static final SingleKeyValueHandler a = new SimpleKeyValueHandler();
    public static final RepeatedKeyValueHandler b = new ListKeyValueHandler();
    public final SingleKeyValueHandler e;
    public final Map c = new HashMap();
    public final Map d = new HashMap();
    public RepeatedKeyValueHandler f = null;

    public MetadataKeyRegistry(SingleKeyValueHandler cumVar) {
        this.e = cumVar;
    }
}
