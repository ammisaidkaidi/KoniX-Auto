package defpackage;

import java.util.Set;
import java.util.UUID;

/* compiled from: PG */
/* loaded from: classes.dex */
public final class agy {
    public final akk a;
    public final Set b;
    private final UUID c;

    public agy(agx agxVar) {
        UUID uuid = agxVar.b;
        akk akkVar = agxVar.c;
        Set set = agxVar.d;
        this.c = uuid;
        this.a = akkVar;
        this.b = set;
    }

    public final String a() {
        return this.c.toString();
    }
}
