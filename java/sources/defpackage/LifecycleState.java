package defpackage;

/* compiled from: PG */
/* loaded from: classes.dex */
public enum LifecycleState {
    DESTROYED,
    INITIALIZED,
    CREATED,
    STARTED,
    RESUMED;

    public final boolean a(LifecycleState zmVar) {
        return compareTo(zmVar) >= 0;
    }
}
