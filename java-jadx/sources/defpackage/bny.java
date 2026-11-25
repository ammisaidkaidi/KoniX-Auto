package defpackage;

import android.content.Context;
import android.os.Parcel;

/* compiled from: PG */
/* loaded from: classes.dex */
public final class bny extends bkc {
    private static final bjy j;
    private static final bjq k;

    static {
        bnx bnxVar = new bnx();
        k = bnxVar;
        j = new bjy("ClientTelemetry.API", bnxVar, null);
    }

    public bny(Context context, bns bnsVar) {
        super(context, j, bnsVar, bkb.a);
    }

    public final void a(final bnr bnrVar) {
        bmb a = bmc.a();
        a.b = new bjb[]{bix.a};
        a.b();
        a.a = new blx() { // from class: bnw
            @Override // defpackage.blx
            public final void a(Object obj, Object obj2) {
                bnr bnrVar2 = bnr.this;
                bnv bnvVar = (bnv) ((bnz) obj).w();
                Parcel a2 = bnvVar.a();
                asr.b(a2, bnrVar2);
                bnvVar.d(1, a2);
                ((brk) obj2).a(null);
            }
        };
        i(a.a());
    }
}
