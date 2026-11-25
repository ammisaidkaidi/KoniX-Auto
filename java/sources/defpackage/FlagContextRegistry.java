package defpackage;

import j$.util.concurrent.ConcurrentHashMap;
import java.util.Map;

/* compiled from: PG */
/* loaded from: classes.dex */
public final class FlagContextRegistry {
    public final Map a;
    public final PhenotypeFlagsFactory b;

    public FlagContextRegistry(PhenotypeFlagsFactory cegVar, Map map) {
        this.a = new ConcurrentHashMap(map);
        this.b = cegVar;
    }
}
