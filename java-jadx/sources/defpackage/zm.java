package defpackage;

/* compiled from: PG */
/* loaded from: classes.dex */
public enum zm {
    DESTROYED,
    INITIALIZED,
    CREATED,
    STARTED,
    RESUMED;

    public final boolean a(zm zmVar) {
        return compareTo(zmVar) >= 0;
    }
}
