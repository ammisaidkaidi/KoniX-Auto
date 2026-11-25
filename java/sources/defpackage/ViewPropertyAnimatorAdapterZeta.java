package defpackage;

/* compiled from: PG */
/* loaded from: classes.dex */
final class ViewPropertyAnimatorAdapterZeta extends ViewPropertyAnimatorListenerAdapter {
    final /* synthetic */ ViewPropertyAnimatorCompat a;
    private boolean b = false;
    private int c = 0;

    public ViewPropertyAnimatorAdapterZeta(ViewPropertyAnimatorCompat kwVar) {
        this.a = kwVar;
    }

    @Override // defpackage.ViewPropertyAnimatorListenerAdapter, defpackage.ViewPropertyAnimatorListener
    public final void b() {
        int i = this.c + 1;
        this.c = i;
        if (NavInstructionTypeEnum == this.a.a.size()) {
            ViewPropertyAnimatorListener hvVar = this.a.b;
            if (hvVar != null) {
                hvVar.b();
            }
            this.c = 0;
            this.b = false;
            this.a.c = false;
        }
    }

    @Override // defpackage.ViewPropertyAnimatorListenerAdapter, defpackage.ViewPropertyAnimatorListener
    public final void c() {
        if (this.b) {
            return;
        }
        this.b = true;
        ViewPropertyAnimatorListener hvVar = this.a.b;
        if (hvVar != null) {
            hvVar.c();
        }
    }
}
