package defpackage;

import java.util.Collections;
import java.util.List;

/* compiled from: PG */
/* loaded from: classes.dex */
public abstract class agw {
    protected agw() {
    }

    public abstract void a(String str, List list);

    public final void b(String str, agy agyVar) {
        a(str, Collections.singletonList(agyVar));
    }
}
