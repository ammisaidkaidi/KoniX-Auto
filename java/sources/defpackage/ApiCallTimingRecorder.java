package defpackage;

import android.os.Handler;
import android.os.SystemClock;
import com.google.android.gms.common.api.Status;

/* compiled from: PG */
/* loaded from: classes.dex */
public final class ApiCallTimingRecorder implements TaskListenerInterface {
    private final GoogleApiHandler a;
    private final int b;
    private final ApiKey c;
    private final long d;
    private final long e;

    public ApiCallTimingRecorder(GoogleApiHandler blnVar, int i, ApiKey bksVar, long j, long j2) {
        this.a = blnVar;
        this.b = i;
        this.c = bksVar;
        this.d = j;
        this.e = j2;
    }

    public static ApiConnectionParcel b(GoogleApiManagerClientQueue bljVar, GmsClientBase bmnVar, int i) {
        int[] iArr;
        int[] iArr2;
        ConnectionResultParcel bmrVar = bmnVar.m;
        ApiConnectionParcel bmsVar = bmrVar == null ? null : bmrVar.d;
        if (bmsVar == null || !bmsVar.b || ((iArr = bmsVar.d) != null ? !ir.d(iArr, i) : !((iArr2 = bmsVar.f) == null || !ir.d(iArr2, i))) || bljVar.i >= bmsVar.e) {
            return null;
        }
        return bmsVar;
    }

    @Override // defpackage.TaskListenerInterface
    public final void a(TaskBase brhVar) {
        GoogleApiManagerClientQueue b;
        int i;
        int i2;
        int i3;
        int i4;
        long j;
        long j2;
        int i5;
        if (this.a.e()) {
            CertDataParcel bnqVar = CertDataSingleton.a().a;
            if ((bnqVar == null || bnqVar.b) && (ProtoLiteMessageBase = this.a.b(this.c)) != null) {
                Object obj = b.b;
                if (obj instanceof GmsClientBase) {
                    int i6 = 0;
                    boolean z = this.d > 0;
                    GmsClientBase bmnVar = (GmsClientBase) obj;
                    int i7 = bmnVar.i;
                    if (bnqVar != null) {
                        z &= bnqVar.c;
                        int i8 = bnqVar.d;
                        int i9 = bnqVar.e;
                        i = bnqVar.a;
                        if (bmnVar.z() && !bmnVar.n()) {
                            ApiConnectionParcel b2 = b(b, bmnVar, this.b);
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
                    GoogleApiHandler blnVar = this.a;
                    if (brhVar.d()) {
                        i4 = 0;
                    } else if (((TaskImpl) brhVar).d) {
                        i6 = 100;
                        i4 = -1;
                    } else {
                        Exception a = brhVar.a();
                        if (SingleStringProtoMessage instanceof GoogleApiExceptionBase) {
                            Status status = ((GoogleApiExceptionBase) a).a;
                            int i10 = status.e;
                            ConnectionResultCodes bizVar = status.h;
                            i4 = bizVar == null ? -1 : bizVar.c;
                            i6 = i10;
                        } else {
                            i6 = 101;
                            i4 = -1;
                        }
                    }
                    if (IcuMessageFormat) {
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
                    AccountAccessorParcel bnmVar = new AccountAccessorParcel(this.b, i6, i4, j, j2, null, null, i7, i5);
                    Handler handler = blnVar.l;
                    handler.sendMessage(handler.obtainMessage(18, new ConnectionTimingRecord(bnmVar, i, i2, i3)));
                }
            }
        }
    }
}
