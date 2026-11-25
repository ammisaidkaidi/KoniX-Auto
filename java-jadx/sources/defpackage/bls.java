package defpackage;

import android.os.Handler;
import android.os.SystemClock;
import com.google.android.gms.common.api.Status;

/* compiled from: PG */
/* loaded from: classes.dex */
public final class bls implements brc {
    private final bln a;
    private final int b;
    private final bks c;
    private final long d;
    private final long e;

    public bls(bln blnVar, int i, bks bksVar, long j, long j2) {
        this.a = blnVar;
        this.b = i;
        this.c = bksVar;
        this.d = j;
        this.e = j2;
    }

    public static bms b(blj bljVar, bmn bmnVar, int i) {
        int[] iArr;
        int[] iArr2;
        bmr bmrVar = bmnVar.m;
        bms bmsVar = bmrVar == null ? null : bmrVar.d;
        if (bmsVar == null || !bmsVar.b || ((iArr = bmsVar.d) != null ? !ir.d(iArr, i) : !((iArr2 = bmsVar.f) == null || !ir.d(iArr2, i))) || bljVar.i >= bmsVar.e) {
            return null;
        }
        return bmsVar;
    }

    @Override // defpackage.brc
    public final void a(brh brhVar) {
        blj b;
        int i;
        int i2;
        int i3;
        int i4;
        long j;
        long j2;
        int i5;
        if (this.a.e()) {
            bnq bnqVar = bnp.a().a;
            if ((bnqVar == null || bnqVar.b) && (b = this.a.b(this.c)) != null) {
                Object obj = b.b;
                if (obj instanceof bmn) {
                    int i6 = 0;
                    boolean z = this.d > 0;
                    bmn bmnVar = (bmn) obj;
                    int i7 = bmnVar.i;
                    if (bnqVar != null) {
                        z &= bnqVar.c;
                        int i8 = bnqVar.d;
                        int i9 = bnqVar.e;
                        i = bnqVar.a;
                        if (bmnVar.z() && !bmnVar.n()) {
                            bms b2 = b(b, bmnVar, this.b);
                            if (b2 == null) {
                                return;
                            }
                            boolean z2 = b2.c && this.d > 0;
                            i9 = b2.e;
                            z = z2;
                        }
                        i2 = i8;
                        i3 = i9;
                    } else {
                        i = 0;
                        i2 = 5000;
                        i3 = 100;
                    }
                    bln blnVar = this.a;
                    if (brhVar.d()) {
                        i4 = 0;
                    } else if (((bro) brhVar).d) {
                        i6 = 100;
                        i4 = -1;
                    } else {
                        Exception a = brhVar.a();
                        if (a instanceof bjz) {
                            Status status = ((bjz) a).a;
                            int i10 = status.e;
                            biz bizVar = status.h;
                            i4 = bizVar == null ? -1 : bizVar.c;
                            i6 = i10;
                        } else {
                            i6 = 101;
                            i4 = -1;
                        }
                    }
                    if (z) {
                        long j3 = this.d;
                        long currentTimeMillis = System.currentTimeMillis();
                        i5 = (int) (SystemClock.elapsedRealtime() - this.e);
                        j = j3;
                        j2 = currentTimeMillis;
                    } else {
                        j = 0;
                        j2 = 0;
                        i5 = -1;
                    }
                    bnm bnmVar = new bnm(this.b, i6, i4, j, j2, null, null, i7, i5);
                    Handler handler = blnVar.l;
                    handler.sendMessage(handler.obtainMessage(18, new blt(bnmVar, i, i2, i3)));
                }
            }
        }
    }
}
