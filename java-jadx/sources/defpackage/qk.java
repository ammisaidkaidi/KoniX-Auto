package defpackage;

import android.view.View;

/* compiled from: PG */
/* loaded from: classes.dex */
final class qk extends qm {
    public qk(ra raVar) {
        super(raVar);
    }

    @Override // defpackage.qm
    public final int a(View view) {
        return ra.be(view) + ((rb) view.getLayoutParams()).rightMargin;
    }

    @Override // defpackage.qm
    public final int b(View view) {
        rb rbVar = (rb) view.getLayoutParams();
        return ra.bd(view) + rbVar.leftMargin + rbVar.rightMargin;
    }

    @Override // defpackage.qm
    public final int c(View view) {
        rb rbVar = (rb) view.getLayoutParams();
        return ra.bc(view) + rbVar.topMargin + rbVar.bottomMargin;
    }

    @Override // defpackage.qm
    public final int d(View view) {
        return ra.bb(view) - ((rb) view.getLayoutParams()).leftMargin;
    }

    @Override // defpackage.qm
    public final int e() {
        return this.a.D;
    }

    @Override // defpackage.qm
    public final int f() {
        ra raVar = this.a;
        return raVar.D - raVar.as();
    }

    @Override // defpackage.qm
    public final int g() {
        return this.a.as();
    }

    @Override // defpackage.qm
    public final int h() {
        return this.a.B;
    }

    @Override // defpackage.qm
    public final int i() {
        return this.a.C;
    }

    @Override // defpackage.qm
    public final int j() {
        return this.a.ar();
    }

    @Override // defpackage.qm
    public final int k() {
        ra raVar = this.a;
        return (raVar.D - raVar.ar()) - this.a.as();
    }

    @Override // defpackage.qm
    public final int l(View view) {
        this.a.bh(view, this.c);
        return this.c.right;
    }

    @Override // defpackage.qm
    public final int m(View view) {
        this.a.bh(view, this.c);
        return this.c.left;
    }

    @Override // defpackage.qm
    public final void n(int i) {
        this.a.aF(i);
    }
}
