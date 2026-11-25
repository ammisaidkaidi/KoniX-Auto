package defpackage;

import android.view.View;

/* compiled from: PG */
/* loaded from: classes.dex */
final class qy implements sx {
    final /* synthetic */ ra a;
    private final /* synthetic */ int b;

    public qy(ra raVar, int i) {
        this.b = i;
        this.a = raVar;
    }

    @Override // defpackage.sx
    public final int c() {
        switch (this.b) {
            case 0:
                ra raVar = this.a;
                return raVar.E - raVar.aq();
            default:
                ra raVar2 = this.a;
                return raVar2.D - raVar2.as();
        }
    }

    @Override // defpackage.sx
    public final int d() {
        switch (this.b) {
            case 0:
                return this.a.at();
            default:
                return this.a.ar();
        }
    }

    @Override // defpackage.sx
    public final View e(int i) {
        switch (this.b) {
        }
        return this.a.aw(i);
    }

    @Override // defpackage.sx
    public final int a(View view) {
        switch (this.b) {
            case 0:
                return ra.ba(view) + ((rb) view.getLayoutParams()).bottomMargin;
            default:
                return ra.be(view) + ((rb) view.getLayoutParams()).rightMargin;
        }
    }

    @Override // defpackage.sx
    public final int b(View view) {
        switch (this.b) {
            case 0:
                return ra.bf(view) - ((rb) view.getLayoutParams()).topMargin;
            default:
                return ra.bb(view) - ((rb) view.getLayoutParams()).leftMargin;
        }
    }
}
