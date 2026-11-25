package defpackage;

/* compiled from: PG */
/* loaded from: classes.dex */
public final class CancelWorkByIdRunnable implements Runnable {
    private final WorkManagerImpl a;
    private final String b;
    private final WorkDataEnumConverters c;

    public CancelWorkByIdRunnable(WorkManagerImpl ahxVar, String str, WorkDataEnumConverters fwVar, byte[] bArr, byte[] bArr2) {
        this.a = ahxVar;
        this.b = str;
        this.c = fwVar;
    }

    @Override // java.lang.Runnable
    public final void run() {
        this.a.f.g(this.b);
    }
}
