package defpackage;

import android.view.View;

/* compiled from: PG */
/* loaded from: classes.dex */
final class HorizontalOrientationHelper extends RecyclerViewOrientationHelper {
    public HorizontalOrientationHelper(RecyclerViewLayoutManager raVar) {
        super(raVar);
    }

    @Override // defpackage.RecyclerViewOrientationHelper
    public final int a(View view) {
        return ra.be(view) + ((RecyclerViewLayoutParams) view.getLayoutParams()).rightMargin;
    }

    @Override // defpackage.RecyclerViewOrientationHelper
    public final int b(View view) {
        RecyclerViewLayoutParams rbVar = (RecyclerViewLayoutParams) view.getLayoutParams();
        return ra.bd(view) + rbVar.leftMargin + rbVar.rightMargin;
    }

    @Override // defpackage.RecyclerViewOrientationHelper
    public final int c(View view) {
        RecyclerViewLayoutParams rbVar = (RecyclerViewLayoutParams) view.getLayoutParams();
        return ra.bc(view) + rbVar.topMargin + rbVar.bottomMargin;
    }

    @Override // defpackage.RecyclerViewOrientationHelper
    public final int d(View view) {
        return ra.bb(view) - ((RecyclerViewLayoutParams) view.getLayoutParams()).leftMargin;
    }

    @Override // defpackage.RecyclerViewOrientationHelper
    public final int e() {
        return this.a.D;
    }

    @Override // defpackage.RecyclerViewOrientationHelper
    public final int f() {
        RecyclerViewLayoutManager raVar = this.a;
        return raVar.D - raVar.as();
    }

    @Override // defpackage.RecyclerViewOrientationHelper
    public final int g() {
        return this.a.as();
    }

    @Override // defpackage.RecyclerViewOrientationHelper
    public final int h() {
        return this.a.B;
    }

    @Override // defpackage.RecyclerViewOrientationHelper
    public final int i() {
        return this.a.C;
    }

    @Override // defpackage.RecyclerViewOrientationHelper
    public final int j() {
        return this.a.ar();
    }

    @Override // defpackage.RecyclerViewOrientationHelper
    public final int k() {
        RecyclerViewLayoutManager raVar = this.a;
        return (raVar.D - raVar.ar()) - this.a.as();
    }

    @Override // defpackage.RecyclerViewOrientationHelper
    public final int l(View view) {
        this.a.bh(view, this.c);
        return this.c.right;
    }

    @Override // defpackage.RecyclerViewOrientationHelper
    public final int m(View view) {
        this.a.bh(view, this.c);
        return this.c.left;
    }

    @Override // defpackage.RecyclerViewOrientationHelper
    public final void n(int i) {
        this.a.aF(NavInstructionTypeEnum);
    }
}
