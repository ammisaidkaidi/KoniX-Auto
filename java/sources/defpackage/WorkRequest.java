package defpackage;

import java.util.Set;
import java.util.UUID;

/* compiled from: PG */
/* loaded from: classes.dex */
public final class WorkRequest {
    public final WorkSpec a;
    public final Set b;
    private final UUID c;

    public WorkRequest(WorkRequestBuilder agxVar) {
        UUID uuid = agxVar.b;
        WorkSpec akkVar = agxVar.c;
        Set set = agxVar.d;
        this.c = uuid;
        this.a = akkVar;
        this.b = set;
    }

    public final String a() {
        return this.c.toString();
    }
}
