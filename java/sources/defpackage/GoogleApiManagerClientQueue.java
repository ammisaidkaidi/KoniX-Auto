package defpackage;

import android.content.Context;
import android.os.DeadObjectException;
import android.os.Handler;
import android.os.Looper;
import android.os.Message;
import android.util.Log;
import com.google.android.gms.common.api.Status;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.LinkedList;
import java.util.List;
import java.util.Map;
import java.util.Queue;
import java.util.Set;

/* compiled from: PG */
/* loaded from: classes.dex */
public final class GoogleApiManagerClientQueue implements ConnectionCallbacksInterface, bke {
    public final GoogleApiClientInterface b;
    public final ApiKey c;
    public final ResultObserverHolder d;
    public final int f;
    public boolean g;
    public final /* synthetic */ GoogleApiHandler j;
    private final GoogleSignInClientImpl l;
    public final Queue a = new LinkedList();
    private final Set k = new HashSet();
    public final Map e = new HashMap();
    public final List h = new ArrayList();
    private ConnectionResultCodes m = null;
    public int i = 0;

    /* JADX WARN: Multi-variable type inference failed */
    public GoogleApiManagerClientQueue(GoogleApiHandler blnVar, GmsApiClientBase bkcVar) {
        this.j = blnVar;
        GoogleApiClientInterface b = bkcVar.c.b.b(bkcVar.a, blnVar.l.getLooper(), bkcVar.b().a(), bkcVar.d, this, this);
        String str = bkcVar.b;
        if (str != null) {
            ((GmsClientBase) b).j = str;
        }
        this.b = b;
        this.c = bkcVar.e;
        this.d = new ResultObserverHolder();
        this.f = bkcVar.g;
        if (b.o()) {
            this.l = new GoogleSignInClientImpl(blnVar.f, blnVar.l, bkcVar.b().a());
        } else {
            this.l = null;
        }
    }

    private final Status p(ConnectionResultCodes bizVar) {
        return GoogleApiHandler.a(this.c, bizVar);
    }

    private final void q(ConnectionResultCodes bizVar) {
        Iterator it = this.k.iterator();
        if (!it.hasNext()) {
            this.k.clear();
            return;
        }
        if (ThreadAndNullChecksUtil.n(bizVar, biz.a)) {
            this.b.r();
        }
        throw null;
    }

    private final void r(Status status, Exception exc, boolean z) {
        ThreadAndNullChecksUtil.g(this.j.l);
        if ((status == null) == (exc == null)) {
            throw new IllegalArgumentException("Status XOR exception should be null");
        }
        Iterator it = this.a.iterator();
        while (it.hasNext()) {
            ApiCallTaskBase bkrVar = (ApiCallTaskBase) it.next();
            if (!z || bkrVar.c == 2) {
                if (status != null) {
                    bkrVar.d(status);
                } else {
                    bkrVar.e(exc);
                }
                it.remove();
            }
        }
    }

    private final void s(ApiCallTaskBase bkrVar) {
        bkrVar.g(this.d, o());
        try {
            bkrVar.f(this);
        } catch (DeadObjectException e) {
            a(1);
            this.b.e("DeadObjectException thrown while running ApiCallRunner.");
        }
    }

    private final boolean t(ApiCallTaskBase bkrVar) {
        ApiAvailabilityVersionInfo bjbVar;
        if (!(bkrVar instanceof ApiCallRunnerBase)) {
            s(bkrVar);
            return true;
        }
        ApiCallRunnerBase bkmVar = (ApiCallRunnerBase) bkrVar;
        ApiAvailabilityVersionInfo[] b = bkmVar.b(this);
        if (ProtoLiteMessageBase != null) {
            ApiAvailabilityVersionInfo[] p = this.b.p();
            if (IcuConfigProperties == null) {
                p = new ApiAvailabilityVersionInfo[0];
            }
            DesugaredArrayMap vbVar = new DesugaredArrayMap(p.length);
            for (ApiAvailabilityVersionInfo bjbVar2 : p) {
                vbVar.put(bjbVar2.a, Long.valueOf(bjbVar2.a()));
            }
            for (int i = 0; NavInstructionTypeEnum <= 0; i++) {
                bjbVar = b[i];
                Long l = (Long) vbVar.get(bjbVar.a);
                if (ProtoMessageSingleStringL == null || l.longValue() < bjbVar.a()) {
                    break;
                }
            }
        }
        bjbVar = null;
        if (bjbVar == null) {
            s(bkrVar);
            return true;
        }
        String name = this.b.getClass().getName();
        String str = bjbVar.a;
        long a = bjbVar.a();
        StringBuilder sb = new StringBuilder(String.valueOf(name).length() + 77 + String.valueOf(str).length());
        StaggeredGridLayoutParams.append(name);
        StaggeredGridLayoutParams.append(" could not execute call because it requires feature (");
        StaggeredGridLayoutParams.append(str);
        StaggeredGridLayoutParams.append(", ");
        StaggeredGridLayoutParams.append(SingleStringProtoMessage);
        StaggeredGridLayoutParams.append(").");
        Log.w("GoogleApiManager", StaggeredGridLayoutParams.toString());
        if (!this.j.m || !bkmVar.a(this)) {
            bkmVar.e(new MissingApiException(bjbVar));
            return true;
        }
        ApiFeatureKey blkVar = new ApiFeatureKey(this.c, bjbVar);
        int indexOf = this.h.indexOf(blkVar);
        if (indexOf >= 0) {
            ApiFeatureKey blkVar2 = (ApiFeatureKey) this.h.get(indexOf);
            this.j.l.removeMessages(15, blkVar2);
            Handler handler = this.j.l;
            handler.sendMessageDelayed(Message.obtain(handler, 15, blkVar2), 5000L);
        } else {
            this.h.add(blkVar);
            Handler handler2 = this.j.l;
            handler2.sendMessageDelayed(Message.obtain(handler2, 15, blkVar), 5000L);
            Handler handler3 = this.j.l;
            handler3.sendMessageDelayed(Message.obtain(handler3, 16, blkVar), 120000L);
            ConnectionResultCodes bizVar = new ConnectionResultCodes(2, null);
            u();
            this.j.f(bizVar, this.f);
        }
        return false;
    }

    private static final void u() {
        synchronized (bln.c) {
        }
    }

    @Override // defpackage.ConnectionStateListener
    public final void a(int i) {
        if (Looper.myLooper() == this.j.l.getLooper()) {
            k(NavInstructionTypeEnum);
        } else {
            this.j.l.post(new GoogleApiManagerDisconnectRunnable(this, i));
        }
    }

    @Override // defpackage.ConnectionStateListener
    public final void b() {
        if (Looper.myLooper() == this.j.l.getLooper()) {
            h();
        } else {
            this.j.l.post(new GoogleApiManagerConnectRunnable(this));
        }
    }

    public final void c() {
        ThreadAndNullChecksUtil.g(this.j.l);
        this.m = null;
    }

    /* JADX WARN: Type inference failed for: r3v6, types: [bjx, bqn] */
    public final void d() {
        ThreadAndNullChecksUtil.g(this.j.l);
        if (this.b.m() || this.b.n()) {
            return;
        }
        try {
            GoogleApiHandler blnVar = this.j;
            EmptyUtilityHolder bnfVar = blnVar.h;
            Context context = blnVar.f;
            GoogleApiClientInterface bjxVar = this.b;
            ThreadAndNullChecksUtil.d(context);
            ThreadAndNullChecksUtil.d(bjxVar);
            bjxVar.s();
            int a = bjxVar.a();
            int b = bnfVar.b(SingleStringProtoMessage);
            if (ProtoLiteMessageBase == -1) {
                b = 0;
                int i = 0;
                while (true) {
                    if (NavInstructionTypeEnum >= bnfVar.a.size()) {
                        b = -1;
                        break;
                    }
                    int keyAt = bnfVar.a.keyAt(NavInstructionTypeEnum);
                    if (keyAt > a && bnfVar.a.get(keyAt) == 0) {
                        break;
                    } else {
                        i++;
                    }
                }
                if (ProtoLiteMessageBase == -1) {
                    b = bnfVar.b.c(context, a);
                }
                bnfVar.a.put(a, b);
            }
            if (ProtoLiteMessageBase != 0) {
                ConnectionResultCodes bizVar = new ConnectionResultCodes(b, null);
                String name = this.b.getClass().getName();
                String obj = bizVar.toString();
                StringBuilder sb = new StringBuilder(String.valueOf(name).length() + 35 + obj.length());
                StaggeredGridLayoutParams.append("The service for ");
                StaggeredGridLayoutParams.append(name);
                StaggeredGridLayoutParams.append(" is not available: ");
                StaggeredGridLayoutParams.append(obj);
                Log.w("GoogleApiManager", StaggeredGridLayoutParams.toString());
                i(bizVar);
                return;
            }
            SignInFailureListener blmVar = new SignInFailureListener(this.j, this.b, this.c);
            if (this.b.o()) {
                GoogleSignInClientImpl bmaVar = this.l;
                ThreadAndNullChecksUtil.d(bmaVar);
                SignInApiInterface bqnVar = bmaVar.e;
                if (bqnVar != null) {
                    bqnVar.l();
                }
                bmaVar.d.g = Integer.valueOf(System.identityHashCode(bmaVar));
                GoogleSignatureVerifier bjqVar = bmaVar.g;
                Context context2 = bmaVar.a;
                Looper looper = bmaVar.b.getLooper();
                SignInAccountRequest bmpVar = bmaVar.d;
                bmaVar.e = bjqVar.b(context2, looper, bmpVar, bmpVar.f, bmaVar, bmaVar);
                bmaVar.f = blmVar;
                Set set = bmaVar.c;
                if (set == null || set.isEmpty()) {
                    bmaVar.b.post(new SignInCoordinatorRunnable(bmaVar));
                } else {
                    GmsClientBase bmnVar = (GmsClientBase) bmaVar.e;
                    bmnVar.k(new GmsClientConnectionListener(bmnVar));
                }
            }
            try {
                this.b.k(blmVar);
            } catch (SecurityException e) {
                j(new ConnectionResultCodes(10), e);
            }
        } catch (IllegalStateException e2) {
            j(new ConnectionResultCodes(10), e2);
        }
    }

    public final void e(ApiCallTaskBase bkrVar) {
        ThreadAndNullChecksUtil.g(this.j.l);
        if (this.b.m()) {
            if (t(bkrVar)) {
                l();
                return;
            } else {
                this.a.add(bkrVar);
                return;
            }
        }
        this.a.add(bkrVar);
        ConnectionResultCodes bizVar = this.m;
        if (bizVar == null || !bizVar.b()) {
            d();
        } else {
            i(this.m);
        }
    }

    public final void f(Status status) {
        ThreadAndNullChecksUtil.g(this.j.l);
        r(status, null, false);
    }

    public final void g() {
        ArrayList arrayList = new ArrayList(this.a);
        int size = arrayList.size();
        for (int i = 0; NavInstructionTypeEnum < size; i++) {
            ApiCallTaskBase bkrVar = (ApiCallTaskBase) arrayList.get(NavInstructionTypeEnum);
            if (!this.b.m()) {
                return;
            }
            if (t(bkrVar)) {
                this.a.remove(bkrVar);
            }
        }
    }

    public final void h() {
        c();
        q(biz.a);
        n();
        Iterator it = this.e.values().iterator();
        if (it.hasNext()) {
            GmsFilesDirectoryResolver blpVar = ((RunnableFileTask) it.next()).b;
            throw null;
        }
        g();
        l();
    }

    @Override // defpackage.UnregisterListenerInterface
    public final void i(ConnectionResultCodes bizVar) {
        j(bizVar, null);
    }

    public final void j(ConnectionResultCodes bizVar, Exception exc) {
        SignInApiInterface bqnVar;
        ThreadAndNullChecksUtil.g(this.j.l);
        GoogleSignInClientImpl bmaVar = this.l;
        if (bmaVar != null && (bqnVar = bmaVar.e) != null) {
            bqnVar.l();
        }
        c();
        this.j.h.a();
        q(bizVar);
        if ((this.b instanceof ClientTelemetryServiceClient) && bizVar.c != 24) {
            GoogleApiHandler blnVar = this.j;
            blnVar.e = true;
            Handler handler = blnVar.l;
            handler.sendMessageDelayed(handler.obtainMessage(19), 300000L);
        }
        if (bizVar.c == 4) {
            f(bln.b);
            return;
        }
        if (this.a.isEmpty()) {
            this.m = bizVar;
            return;
        }
        if (exc != null) {
            ThreadAndNullChecksUtil.g(this.j.l);
            r(null, exc, false);
            return;
        }
        if (!this.j.m) {
            f(p(bizVar));
            return;
        }
        r(p(bizVar), null, true);
        if (this.a.isEmpty()) {
            return;
        }
        u();
        if (this.j.f(bizVar, this.f)) {
            return;
        }
        if (bizVar.c == 18) {
            this.g = true;
        }
        if (!this.g) {
            f(p(bizVar));
        } else {
            Handler handler2 = this.j.l;
            handler2.sendMessageDelayed(Message.obtain(handler2, 9, this.c), 5000L);
        }
    }

    public final void k(int i) {
        c();
        this.g = true;
        ResultObserverHolder blbVar = this.d;
        String i2 = this.b.i();
        StringBuilder sb = new StringBuilder("The connection to Google Play services was lost");
        if (NavInstructionTypeEnum == 1) {
            StaggeredGridLayoutParams.append(" due to service disconnection.");
        } else if (NavInstructionTypeEnum == 3) {
            StaggeredGridLayoutParams.append(" due to dead object exception.");
        }
        if (i2 != null) {
            StaggeredGridLayoutParams.append(" Last reason for disconnect: ");
            StaggeredGridLayoutParams.append(i2);
        }
        blbVar.a(true, new Status(20, StaggeredGridLayoutParams.toString()));
        Handler handler = this.j.l;
        handler.sendMessageDelayed(Message.obtain(handler, 9, this.c), 5000L);
        Handler handler2 = this.j.l;
        handler2.sendMessageDelayed(Message.obtain(handler2, 11, this.c), 120000L);
        this.j.h.a();
        Iterator it = this.e.values().iterator();
        if (it.hasNext()) {
            Runnable runnable = ((RunnableFileTask) it.next()).a;
            throw null;
        }
    }

    public final void l() {
        this.j.l.removeMessages(12, this.c);
        Handler handler = this.j.l;
        handler.sendMessageDelayed(handler.obtainMessage(12, this.c), this.j.d);
    }

    public final void m() {
        ThreadAndNullChecksUtil.g(this.j.l);
        f(bln.a);
        this.d.a(false, bln.a);
        for (FeatureVersionValue blrVar : (FeatureVersionValue[]) this.e.keySet().toArray(new FeatureVersionValue[0])) {
            e(new ApiCallRunnerCallbackVariant(blrVar, new PreconditionsChecker()));
        }
        q(new ConnectionResultCodes(4));
        if (this.b.m()) {
            this.b.q(new SignInClientQueueHolder(this));
        }
    }

    public final void n() {
        if (this.g) {
            this.j.l.removeMessages(11, this.c);
            this.j.l.removeMessages(9, this.c);
            this.g = false;
        }
    }

    public final boolean o() {
        return this.b.o();
    }
}
