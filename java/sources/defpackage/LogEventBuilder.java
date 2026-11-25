package defpackage;

import android.os.Handler;
import android.os.SystemClock;
import com.google.android.gms.common.api.internal.BasePendingResult;
import java.util.ArrayList;
import java.util.TimeZone;

/* compiled from: PG */
/* loaded from: classes.dex */
public final class LogEventBuilder {
    public final ClearcutLoggerFacade a;
    boolean b;
    public ArrayList c;
    public ArrayList d;
    public String e;
    public final String f;
    public final DerSyntheticLambdaHolder g;
    public final int h;
    public PrimesEventContext i;
    public final ProtoMsgSubclassOfDdf j;

    public LogEventBuilder(ClearcutLoggerFacade bikVar, DerSyntheticLambdaHolder bieVar) {
        ProtoMsgSubclassOfDdf ddhVar = (ProtoMsgSubclassOfDdf) ProtoMsgMixedScalarsConfig.j.n();
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
        ProtoMsgMixedScalarsConfig dgtVar = (ProtoMsgMixedScalarsConfig) ddhVar.b;
        dgtVar.a |= 1;
        dgtVar.b = currentTimeMillis;
        long offset = TimeZone.getDefault().getOffset(((ProtoMsgMixedScalarsConfig) ddhVar.b).b) / 1000;
        if (ddhVar.c) {
            ddhVar.k();
            ddhVar.c = false;
        }
        ProtoMsgMixedScalarsConfig dgtVar2 = (ProtoMsgMixedScalarsConfig) ddhVar.b;
        dgtVar2.a |= 65536;
        dgtVar2.g = offset;
        if (DirectBootUtils.b(bikVar.e)) {
            boolean b = DirectBootUtils.b(bikVar.e);
            if (ddhVar.c) {
                ddhVar.k();
                ddhVar.c = false;
            }
            ProtoMsgMixedScalarsConfig dgtVar3 = (ProtoMsgMixedScalarsConfig) ddhVar.b;
            dgtVar3.a |= 8388608;
            dgtVar3.h = b;
        }
        if (SystemClock.elapsedRealtime() != 0) {
            long elapsedRealtime = SystemClock.elapsedRealtime();
            if (ddhVar.c) {
                ddhVar.k();
                ddhVar.c = false;
            }
            ProtoMsgMixedScalarsConfig dgtVar4 = (ProtoMsgMixedScalarsConfig) ddhVar.b;
            dgtVar4.a |= 2;
            dgtVar4.c = elapsedRealtime;
        }
        this.g = bieVar;
    }

    public final ViewCompatApi26Statics a() {
        if (this.b) {
            throw new IllegalStateException("do not reuse LogEventBuilder");
        }
        boolean z = true;
        this.b = true;
        GmsApiClientBase bkcVar = this.a.l;
        ClearcutLoggerApiImpl birVar = new ClearcutLoggerApiImpl(bkcVar, this, bkcVar.h);
        if (!birVar.i && !((Boolean) BasePendingResult.b.get()).booleanValue()) {
            z = false;
        }
        birVar.i = z;
        GoogleApiHandler blnVar = bkcVar.i;
        ApiCallRunner bkoVar = new ApiCallRunner(birVar);
        Handler handler = blnVar.l;
        handler.sendMessage(handler.obtainMessage(4, new ApiCallContextRecord(bkoVar, blnVar.j.get(), bkcVar)));
        return birVar;
    }

    public final String toString() {
        StringBuilder sb = new StringBuilder("ClearcutLogger.LogEventBuilder[");
        StaggeredGridLayoutParams.append("uploadAccount: ");
        StaggeredGridLayoutParams.append(this.e);
        StaggeredGridLayoutParams.append(", logSourceName: ");
        StaggeredGridLayoutParams.append(this.f);
        StaggeredGridLayoutParams.append(", qosTier: ");
        int i = this.h;
        int i2 = i - 1;
        if (NavInstructionTypeEnum == 0) {
            throw null;
        }
        StaggeredGridLayoutParams.append(i2);
        StaggeredGridLayoutParams.append(", loggingId: null, SourceExtensionByteStringProvider: ");
        StaggeredGridLayoutParams.append(this.g);
        StaggeredGridLayoutParams.append(", veMessage: ");
        StaggeredGridLayoutParams.append((Object) null);
        StaggeredGridLayoutParams.append(", testCodes: null, mendelPackages: ");
        ArrayList arrayList = this.c;
        StaggeredGridLayoutParams.append(arrayList != null ? ClearcutLoggerFacade.b(arrayList) : null);
        StaggeredGridLayoutParams.append(", experimentIds: ");
        ArrayList arrayList2 = this.d;
        StaggeredGridLayoutParams.append(arrayList2 != null ? ClearcutLoggerFacade.b(arrayList2) : null);
        StaggeredGridLayoutParams.append(", experimentTokens: null, experimentTokensBytes: ");
        ApiClientKey bjyVar = bik.a;
        StaggeredGridLayoutParams.append("null, addPhenotype: ");
        StaggeredGridLayoutParams.append(true);
        StaggeredGridLayoutParams.append(", logVerifier: ");
        StaggeredGridLayoutParams.append(this.i);
        StaggeredGridLayoutParams.append("]");
        return StaggeredGridLayoutParams.toString();
    }
}
