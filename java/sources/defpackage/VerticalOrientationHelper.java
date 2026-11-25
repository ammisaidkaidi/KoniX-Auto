package defpackage;

import android.view.View;

/* compiled from: PG */
/* loaded from: classes.dex */
final class VerticalOrientationHelper extends RecyclerViewOrientationHelper {
    public VerticalOrientationHelper(RecyclerViewLayoutManager raVar) {
        super(raVar);
    }

    @Override // defpackage.RecyclerViewOrientationHelper
    public final int a(View view) {
        return ra.ba(view) + ((RecyclerViewLayoutParams) view.getLayoutParams()).bottomMargin;
    }

    @Override // defpackage.RecyclerViewOrientationHelper
    public final int b(View view) {
        RecyclerViewLayoutParams rbVar = (RecyclerViewLayoutParams) view.getLayoutParams();
        return ra.bc(view) + rbVar.topMargin + rbVar.bottomMargin;
    }

    @Override // defpackage.RecyclerViewOrientationHelper
    public final int c(View view) {
        RecyclerViewLayoutParams rbVar = (RecyclerViewLayoutParams) view.getLayoutParams();
        return ra.bd(view) + rbVar.leftMargin + rbVar.rightMargin;
    }

    @Override // defpackage.RecyclerViewOrientationHelper
    public final int d(View view) {
        return ra.bf(view) - ((RecyclerViewLayoutParams) view.getLayoutParams()).topMargin;
    }

    @Override // defpackage.RecyclerViewOrientationHelper
    public final int e() {
        return this.a.E;
    }

    @Override // defpackage.RecyclerViewOrientationHelper
    public final int f() {
        RecyclerViewLayoutManager raVar = this.a;
        return raVar.E - raVar.aq();
    }

    @Override // defpackage.RecyclerViewOrientationHelper
    public final int g() {
        return this.a.aq();
    }

    @Override // defpackage.RecyclerViewOrientationHelper
    public final int h() {
        return this.a.C;
    }

    @Override // defpackage.RecyclerViewOrientationHelper
    public final int i() {
        return this.a.B;
    }

    @Override // defpackage.RecyclerViewOrientationHelper
    public final int j() {
        return this.a.at();
    }

    @Override // defpackage.RecyclerViewOrientationHelper
    public final int k() {
        RecyclerViewLayoutManager raVar = this.a;
        return (raVar.E - raVar.at()) - this.a.aq();
    }

    @Override // defpackage.RecyclerViewOrientationHelper
    public final int l(View view) {
        this.a.bh(view, this.c);
        return this.c.bottom;
    }

    @Override // defpackage.RecyclerViewOrientationHelper
    public final int m(View view) {
        this.a.bh(view, this.c);
        return this.c.top;
    }

    @Override // defpackage.RecyclerViewOrientationHelper
    public final void n(int i) {
        this.a.aG(NavInstructionTypeEnum);
    }
}
