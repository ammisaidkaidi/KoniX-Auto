package defpackage;

import android.view.View;

/* compiled from: PG */
/* loaded from: classes.dex */
final class ql extends qm {
    public ql(ra raVar) {
        super(raVar);
    }

    @Override // defpackage.qm
    public final int a(View view) {
        return ra.ba(view) + ((rb) view.getLayoutParams()).bottomMargin;
    }

    @Override // defpackage.qm
    public final int b(View view) {
        rb rbVar = (rb) view.getLayoutParams();
        return ra.bc(view) + rbVar.topMargin + rbVar.bottomMargin;
    }

    @Override // defpackage.qm
    public final int c(View view) {
        rb rbVar = (rb) view.getLayoutParams();
        return ra.bd(view) + rbVar.leftMargin + rbVar.rightMargin;
    }

    @Override // defpackage.qm
    public final int d(View view) {
        return ra.bf(view) - ((rb) view.getLayoutParams()).topMargin;
    }

    @Override // defpackage.qm
    public final int e() {
        return this.a.E;
    }

    @Override // defpackage.qm
    public final int f() {
        ra raVar = this.a;
        return raVar.E - raVar.aq();
    }

    @Override // defpackage.qm
    public final int g() {
        return this.a.aq();
    }

    @Override // defpackage.qm
    public final int h() {
        return this.a.C;
    }

    @Override // defpackage.qm
    public final int i() {
        return this.a.B;
    }

    @Override // defpackage.qm
    public final int j() {
        return this.a.at();
    }

    @Override // defpackage.qm
    public final int k() {
        ra raVar = this.a;
        return (raVar.E - raVar.at()) - this.a.aq();
    }

    @Override // defpackage.qm
    public final int l(View view) {
        this.a.bh(view, this.c);
        return this.c.bottom;
    }

    @Override // defpackage.qm
    public final int m(View view) {
        this.a.bh(view, this.c);
        return this.c.top;
    }

    @Override // defpackage.qm
    public final void n(int i) {
        this.a.aG(i);
    }
}
