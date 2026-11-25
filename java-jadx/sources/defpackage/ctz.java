package defpackage;

/* compiled from: PG */
/* loaded from: classes.dex */
public enum ctz {
    GENERAL(true),
    BOOLEAN(false),
    CHARACTER(false),
    INTEGRAL(false),
    FLOAT(true);

    public final boolean f;

    ctz(boolean z) {
        this.f = z;
    }
}
