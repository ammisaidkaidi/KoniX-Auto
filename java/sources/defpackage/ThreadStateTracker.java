package defpackage;

import java.util.WeakHashMap;

/* compiled from: PG */
/* loaded from: classes.dex */
public final class ThreadStateTracker {
    public final WeakHashMap a = new WeakHashMap();

    public ThreadStateTracker() {
        new WeakHashMapThreadLocal(this);
    }
}
