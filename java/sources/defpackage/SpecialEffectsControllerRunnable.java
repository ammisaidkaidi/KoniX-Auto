package defpackage;

/* compiled from: PG */
/* loaded from: classes.dex */
final class SpecialEffectsControllerRunnable implements Runnable {
    final /* synthetic */ DefaultSpecialEffectsController a;
    final /* synthetic */ SpecialEffectsContainerState b;
    private final /* synthetic */ int c;

    public SpecialEffectsControllerRunnable(SpecialEffectsContainerState dmVar, DefaultSpecialEffectsController djVar, int i) {
        this.c = i;
        this.b = dmVar;
        this.a = djVar;
    }

    @Override // java.lang.Runnable
    public final void run() {
        switch (this.c) {
            case 0:
                this.b.b.remove(this.a);
                this.b.c.remove(this.a);
                break;
            default:
                if (this.b.b.contains(this.a)) {
                    DefaultSpecialEffectsController djVar = this.a;
                    r.o(djVar.e, djVar.a.P);
                    break;
                }
                break;
        }
    }
}
