package defpackage;

/* compiled from: PG */
/* loaded from: classes.dex */
final class WidgetWrapperOverflowMenuButton extends ViewPropertyAnimatorListenerAdapter {
    final /* synthetic */ int a;
    final /* synthetic */ ToolbarWidgetWrapper b;
    private boolean c = false;

    public WidgetWrapperOverflowMenuButton(ToolbarWidgetWrapper svVar, int i) {
        this.b = svVar;
        this.a = i;
    }

    @Override // defpackage.ViewPropertyAnimatorListenerAdapter, defpackage.ViewPropertyAnimatorListener
    public final void a() {
        this.c = true;
    }

    @Override // defpackage.ViewPropertyAnimatorListenerAdapter, defpackage.ViewPropertyAnimatorListener
    public final void b() {
        if (this.c) {
            return;
        }
        this.b.a.setVisibility(this.a);
    }

    @Override // defpackage.ViewPropertyAnimatorListenerAdapter, defpackage.ViewPropertyAnimatorListener
    public final void c() {
        this.b.a.setVisibility(0);
    }
}
