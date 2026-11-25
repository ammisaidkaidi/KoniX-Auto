package defpackage;

import android.os.Handler;
import android.os.SystemClock;
import com.google.android.gms.common.api.internal.BasePendingResult;
import java.util.ArrayList;
import java.util.TimeZone;

/* compiled from: PG */
/* loaded from: classes.dex */
public final class bih {
    public final bik a;
    boolean b;
    public ArrayList c;
    public ArrayList d;
    public String e;
    public final String f;
    public final bie g;
    public final int h;
    public btc i;
    public final ddh j;

    public bih(bik bikVar, bie bieVar) {
        ddh ddhVar = (ddh) dgt.j.n();
        this.j = ddhVar;
        this.b = false;
        this.c = null;
        this.d = null;
        this.a = bikVar;
        this.f = bikVar.j;
        this.e = null;
        this.h = bikVar.k;
        long currentTimeMillis = System.currentTimeMillis();
        if (ddhVar.c) {
            ddhVar.k();
            ddhVar.c = false;
        }
        dgt dgtVar = (dgt) ddhVar.b;
        dgtVar.a |= 1;
        dgtVar.b = currentTimeMillis;
        long offset = TimeZone.getDefault().getOffset(((dgt) ddhVar.b).b) / 1000;
        if (ddhVar.c) {
            ddhVar.k();
            ddhVar.c = false;
        }
        dgt dgtVar2 = (dgt) ddhVar.b;
        dgtVar2.a |= 65536;
        dgtVar2.g = offset;
        if (btj.b(bikVar.e)) {
            boolean b = btj.b(bikVar.e);
            if (ddhVar.c) {
                ddhVar.k();
                ddhVar.c = false;
            }
            dgt dgtVar3 = (dgt) ddhVar.b;
            dgtVar3.a |= 8388608;
            dgtVar3.h = b;
        }
        if (SystemClock.elapsedRealtime() != 0) {
            long elapsedRealtime = SystemClock.elapsedRealtime();
            if (ddhVar.c) {
                ddhVar.k();
                ddhVar.c = false;
            }
            dgt dgtVar4 = (dgt) ddhVar.b;
            dgtVar4.a |= 2;
            dgtVar4.c = elapsedRealtime;
        }
        this.g = bieVar;
    }

    public final ho a() {
        if (this.b) {
            throw new IllegalStateException("do not reuse LogEventBuilder");
        }
        boolean z = true;
        this.b = true;
        bkc bkcVar = this.a.l;
        bir birVar = new bir(bkcVar, this, bkcVar.h);
        if (!birVar.i && !((Boolean) BasePendingResult.b.get()).booleanValue()) {
            z = false;
        }
        birVar.i = z;
        bln blnVar = bkcVar.i;
        bko bkoVar = new bko(birVar);
        Handler handler = blnVar.l;
        handler.sendMessage(handler.obtainMessage(4, new blv(bkoVar, blnVar.j.get(), bkcVar)));
        return birVar;
    }

    public final String toString() {
        StringBuilder sb = new StringBuilder("ClearcutLogger.LogEventBuilder[");
        sb.append("uploadAccount: ");
        sb.append(this.e);
        sb.append(", logSourceName: ");
        sb.append(this.f);
        sb.append(", qosTier: ");
        int i = this.h;
        int i2 = i - 1;
        if (i == 0) {
            throw null;
        }
        sb.append(i2);
        sb.append(", loggingId: null, SourceExtensionByteStringProvider: ");
        sb.append(this.g);
        sb.append(", veMessage: ");
        sb.append((Object) null);
        sb.append(", testCodes: null, mendelPackages: ");
        ArrayList arrayList = this.c;
        sb.append(arrayList != null ? bik.b(arrayList) : null);
        sb.append(", experimentIds: ");
        ArrayList arrayList2 = this.d;
        sb.append(arrayList2 != null ? bik.b(arrayList2) : null);
        sb.append(", experimentTokens: null, experimentTokensBytes: ");
        bjy bjyVar = bik.a;
        sb.append("null, addPhenotype: ");
        sb.append(true);
        sb.append(", logVerifier: ");
        sb.append(this.i);
        sb.append("]");
        return sb.toString();
    }
}
