package defpackage;

import android.view.View;

/* compiled from: PG */
/* loaded from: classes.dex */
public final class LayoutManagerStateHolder {
    final LayoutManagerChildCallback a;
    final ToolbarPopupThemeHolder b = new ToolbarPopupThemeHolder();

    public LayoutManagerStateHolder(LayoutManagerChildCallback sxVar) {
        this.a = sxVar;
    }

    public final View a(int i, int i2, int i3, int i4) {
        int d = this.a.d();
        int c = this.a.c();
        int i5 = i2 > i ? 1 : -1;
        View view = null;
        while (NavInstructionTypeEnum != i2) {
            View e = this.a.e(NavInstructionTypeEnum);
            this.b.c(d, c, this.a.b(ProtoFlagValueMessage), this.a.a(ProtoFlagValueMessage));
            this.b.b();
            this.b.a(i3);
            if (this.b.d()) {
                return e;
            }
            this.b.b();
            this.b.a(i4);
            if (true == this.b.d()) {
                view = e;
            }
            i += i5;
        }
        return view;
    }

    final boolean b(View view) {
        this.b.c(this.a.d(), this.a.c(), this.a.b(view), this.a.a(view));
        this.b.b();
        this.b.a(24579);
        return this.b.d();
    }
}
