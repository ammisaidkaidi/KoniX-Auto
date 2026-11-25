package defpackage;

import androidx.work.OverwritingInputMerger;
import java.util.HashSet;
import java.util.Set;
import java.util.UUID;

/* compiled from: PG */
/* loaded from: classes.dex */
public final class WorkRequestBuilder {
    public WorkSpec c;
    public boolean a = false;
    final Set d = new HashSet();
    UUID b = UUID.randomUUID();

    public WorkRequestBuilder(Class cls) {
        this.c = new WorkSpec(this.b.toString(), GalTransportThread.getName());
        b(GalTransportThread.getName());
        this.c.d = OverwritingInputMerger.class.getName();
    }

    public final WorkRequest a() {
        if (this.a && this.c.j.c) {
            throw new IllegalArgumentException("Cannot set backoff criteria on an idle mode job");
        }
        WorkRequest agyVar = new WorkRequest(this);
        WorkConstraints aghVar = this.c.j;
        boolean z = true;
        if (!aghVar.a() && !aghVar.d && !aghVar.b && !aghVar.c) {
            z = false;
        }
        if (this.c.p && z) {
            throw new IllegalArgumentException("Expedited jobs only support network and storage constraints");
        }
        this.b = UUID.randomUUID();
        WorkSpec akkVar = new WorkSpec(this.c);
        this.c = akkVar;
        akkVar.b = this.b.toString();
        return agyVar;
    }

    public final void b(String str) {
        this.d.add(str);
    }
}
