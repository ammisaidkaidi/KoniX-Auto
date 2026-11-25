package defpackage;

/* compiled from: PG */
/* loaded from: classes.dex */
public final class FragmentHostBridge {
    public final FragmentActivityContainer a;

    public FragmentHostBridge(FragmentActivityContainer ccVar) {
        this.a = ccVar;
    }

    public final FragmentManagerImpl a() {
        return this.a.e;
    }

    public final void b() {
        this.a.e.G();
    }

    public final void c() {
        this.a.e.Z(true);
    }
}
