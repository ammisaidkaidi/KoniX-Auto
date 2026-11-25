package defpackage;

import android.view.View;

/* compiled from: PG */
/* loaded from: classes.dex */
final class bk implements aaa {
    final /* synthetic */ bm a;

    public bk(bm bmVar) {
        this.a = bmVar;
    }

    @Override // defpackage.aaa
    public final /* bridge */ /* synthetic */ void a(Object obj) {
        if (((zq) obj) != null) {
            bm bmVar = this.a;
            if (bmVar.b) {
                View B = bmVar.B();
                if (B.getParent() != null) {
                    throw new IllegalStateException("DialogFragment can not be attached to a container view");
                }
                if (this.a.c != null) {
                    if (cr.R(3)) {
                        StringBuilder sb = new StringBuilder();
                        sb.append("DialogFragment ");
                        sb.append(this);
                        sb.append(" setting the content view on ");
                        sb.append(this.a.c);
                    }
                    this.a.c.setContentView(B);
                }
            }
        }
    }
}
