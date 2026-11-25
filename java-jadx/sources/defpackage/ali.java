package defpackage;

/* compiled from: PG */
/* loaded from: classes.dex */
public final class ali implements Runnable {
    private final ahx a;
    private final String b;
    private final fw c;

    public ali(ahx ahxVar, String str, fw fwVar, byte[] bArr, byte[] bArr2) {
        this.a = ahxVar;
        this.b = str;
        this.c = fwVar;
    }

    @Override // java.lang.Runnable
    public final void run() {
        this.a.f.g(this.b);
    }
}
