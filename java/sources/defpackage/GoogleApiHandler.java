package defpackage;

import android.app.ActivityManager;
import android.app.Application;
import android.app.PendingIntent;
import android.content.Context;
import android.content.Intent;
import android.content.pm.PackageManager;
import android.os.Handler;
import android.os.HandlerThread;
import android.os.Looper;
import android.os.Message;
import android.util.Log;
import com.google.android.gms.common.api.GoogleApiActivity;
import com.google.android.gms.common.api.Status;
import j$.util.concurrent.ConcurrentHashMap;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Set;
import java.util.concurrent.atomic.AtomicInteger;

/* compiled from: PG */
/* loaded from: classes.dex */
public final class GoogleApiHandler implements Handler.Callback {
    public static final Status a = new Status(4, "Sign-out occurred while this API call was in progress.");
    public static final Status b = new Status(4, "The user must be signed in to make this API call.");
    public static final Object c = new Object();
    private static GoogleApiHandler n;
    public final Context f;
    public final GoogleApiAvailability g;
    public final EmptyUtilityHolder h;
    public final Handler l;
    public volatile boolean m;
    private GmsInternalParcel o;
    private ClientTelemetryClient q;
    public long d = 10000;
    public boolean e = false;
    public final AtomicInteger i = new AtomicInteger(1);
    public final AtomicInteger j = new AtomicInteger(0);
    public final Map k = new ConcurrentHashMap(5, 0.75f, 1);
    private final Set p = new DesugaredArraySet();

    private GoogleApiHandler(Context context, Looper looper, GoogleApiAvailability bjdVar) {
        this.m = true;
        this.f = context;
        CallbackHandlerBase bohVar = new CallbackHandlerBase(looper, this);
        this.l = bohVar;
        this.g = bjdVar;
        this.h = new EmptyUtilityHolder(bjdVar);
        PackageManager packageManager = context.getPackageManager();
        if (ir.b == null) {
            ir.b = Boolean.valueOf(packageManager.hasSystemFeature("android.hardware.type.automotive"));
        }
        if (ir.b.booleanValue()) {
            this.m = false;
        }
        bohVar.sendMessage(bohVar.obtainMessage(6));
    }

    public static Status a(ApiKey bksVar, ConnectionResultCodes bizVar) {
        String str = bksVar.a.a;
        String valueOf = String.valueOf(bizVar);
        StringBuilder sb = new StringBuilder(str.length() + 63 + String.valueOf(valueOf).length());
        StaggeredGridLayoutParams.append("API: ");
        StaggeredGridLayoutParams.append(str);
        StaggeredGridLayoutParams.append(" is not available on this device. Connection failed with: ");
        StaggeredGridLayoutParams.append(valueOf);
        return new Status(1, 17, StaggeredGridLayoutParams.toString(), bizVar.d, bizVar);
    }

    public static GoogleApiHandler c(Context context) {
        GoogleApiHandler blnVar;
        HandlerThread handlerThread;
        synchronized (PhenotypeFlagMessage) {
            if (ProtoLiteTimestampField == null) {
                synchronized (bna.a) {
                    if (bna.b != null) {
                        handlerThread = bna.b;
                    } else {
                        bna.b = new HandlerThread("GoogleApiHandler", 9);
                        GmsClientSupervisor.b.start();
                        handlerThread = bna.b;
                    }
                }
                n = new GoogleApiHandler(context.getApplicationContext(), handlerThread.getLooper(), bjd.a);
            }
            blnVar = n;
        }
        return blnVar;
    }

    private final GoogleApiManagerClientQueue g(GmsApiClientBase bkcVar) {
        ApiKey bksVar = bkcVar.e;
        GoogleApiManagerClientQueue bljVar = (GoogleApiManagerClientQueue) this.k.get(bksVar);
        if (bljVar == null) {
            bljVar = new GoogleApiManagerClientQueue(this, bkcVar);
            this.k.put(bksVar, bljVar);
        }
        if (bljVar.o()) {
            this.p.add(bksVar);
        }
        bljVar.d();
        return bljVar;
    }

    private final void h() {
        GmsInternalParcel bnrVar = this.o;
        if (bnrVar != null) {
            if (bnrVar.a > 0 || e()) {
                i().a(bnrVar);
            }
            this.o = null;
        }
    }

    private final ClientTelemetryClient i() {
        if (this.q == null) {
            this.q = new ClientTelemetryClient(this.f, bns.b);
        }
        return this.q;
    }

    public final GoogleApiManagerClientQueue b(ApiKey bksVar) {
        return (GoogleApiManagerClientQueue) this.k.get(bksVar);
    }

    public final void d(ConnectionResultCodes bizVar, int i) {
        if (f(bizVar, i)) {
            return;
        }
        Handler handler = this.l;
        handler.sendMessage(handler.obtainMessage(5, i, 0, bizVar));
    }

    public final boolean e() {
        if (this.e) {
            return false;
        }
        CertDataParcel bnqVar = CertDataSingleton.a().a;
        if (bnqVar != null && !bnqVar.b) {
            return false;
        }
        int b2 = this.h.b(203400000);
        return b2 == -1 || b2 == 0;
    }

    final boolean f(ConnectionResultCodes bizVar, int i) {
        GoogleApiAvailability bjdVar = this.g;
        Context context = this.f;
        if (ConstraintLayoutStateParser.d(context)) {
            return false;
        }
        PendingIntent e = bizVar.b() ? bizVar.d : bjdVar.e(context, bizVar.c, null);
        if (ProtoFlagValueMessage == null) {
            return false;
        }
        int i2 = bizVar.c;
        Intent intent = new Intent(context, (Class<?>) GoogleApiActivity.class);
        intent.putExtra("pending_intent", e);
        intent.putExtra("failing_client_id", i);
        intent.putExtra("notify_manager", true);
        bjdVar.a(context, i2, PendingIntentFlagHelper.a(context, intent, bof.a | 134217728));
        return true;
    }

    @Override // android.os.Handler.Callback
    public final boolean handleMessage(Message message) {
        ApiAvailabilityVersionInfo[] b2;
        GoogleApiManagerClientQueue bljVar = null;
        switch (message.what) {
            case 1:
                this.d = true == ((Boolean) message.obj).booleanValue() ? 10000L : 300000L;
                this.l.removeMessages(12);
                for (ApiKey bksVar : this.k.keySet()) {
                    Handler handler = this.l;
                    handler.sendMessageDelayed(handler.obtainMessage(12, bksVar), this.d);
                }
                return true;
            case 2:
                throw null;
            case 3:
                for (GoogleApiManagerClientQueue bljVar2 : this.k.values()) {
                    bljVar2.c();
                    bljVar2.d();
                }
                return true;
            case 4:
            case 8:
            case 13:
                ApiCallContextRecord blvVar = (ApiCallContextRecord) message.obj;
                GoogleApiManagerClientQueue bljVar3 = (GoogleApiManagerClientQueue) this.k.get(blvVar.c.e);
                if (bljVar3 == null) {
                    bljVar3 = g(blvVar.c);
                }
                if (!bljVar3.o() || this.j.get() == blvVar.b) {
                    bljVar3.e(blvVar.a);
                } else {
                    blvVar.a.d(SingleStringProtoMessage);
                    bljVar3.m();
                }
                return true;
            case 5:
                int i = message.arg1;
                ConnectionResultCodes bizVar = (ConnectionResultCodes) message.obj;
                Iterator it = this.k.values().iterator();
                while (true) {
                    if (it.hasNext()) {
                        GoogleApiManagerClientQueue bljVar4 = (GoogleApiManagerClientQueue) it.next();
                        if (bljVar4.f == i) {
                            bljVar = bljVar4;
                        }
                    }
                }
                if (bljVar == null) {
                    StringBuilder sb = new StringBuilder(76);
                    StaggeredGridLayoutParams.append("Could not find API instance ");
                    StaggeredGridLayoutParams.append(NavInstructionTypeEnum);
                    StaggeredGridLayoutParams.append(" while trying to fail enqueued calls.");
                    Log.wtf("GoogleApiManager", StaggeredGridLayoutParams.toString(), new Exception());
                } else if (bizVar.c == 13) {
                    String e = GooglePlayServicesUtil.e();
                    String str = bizVar.e;
                    StringBuilder sb2 = new StringBuilder(e.length() + 69 + String.valueOf(str).length());
                    sb2.append("Error resolution was canceled by the user, original error message: ");
                    sb2.append(ProtoFlagValueMessage);
                    sb2.append(": ");
                    sb2.append(str);
                    bljVar.f(new Status(17, sb2.toString()));
                } else {
                    bljVar.f(a(bljVar.c, bizVar));
                }
                return true;
            case 6:
                if (this.f.getApplicationContext() instanceof Application) {
                    Application application = (Application) this.f.getApplicationContext();
                    synchronized (bkt.a) {
                        if (!LifecycleCallbackRegistrar.a.e) {
                            application.registerActivityLifecycleCallbacks(bkt.a);
                            application.registerComponentCallbacks(bkt.a);
                            LifecycleCallbackRegistrar.a.e = true;
                        }
                    }
                    LifecycleCallbackRegistrar bktVar = bkt.a;
                    GoogleApiManagerQueueEntry bleVar = new GoogleApiManagerQueueEntry(this);
                    synchronized (bkt.a) {
                        bktVar.d.add(bleVar);
                    }
                    LifecycleCallbackRegistrar bktVar2 = bkt.a;
                    if (!bktVar2.c.get()) {
                        ActivityManager.RunningAppProcessInfo runningAppProcessInfo = new ActivityManager.RunningAppProcessInfo();
                        ActivityManager.getMyMemoryState(runningAppProcessInfo);
                        if (!bktVar2.c.getAndSet(true) && runningAppProcessInfo.importance > 100) {
                            bktVar2.b.set(true);
                        }
                    }
                    if (!bktVar2.b.get()) {
                        this.d = 300000L;
                    }
                }
                return true;
            case 7:
                g((GmsApiClientBase) message.obj);
                return true;
            case 9:
                if (this.k.containsKey(message.obj)) {
                    GoogleApiManagerClientQueue bljVar5 = (GoogleApiManagerClientQueue) this.k.get(message.obj);
                    ThreadAndNullChecksUtil.g(bljVar5.j.l);
                    if (bljVar5.g) {
                        bljVar5.d();
                    }
                }
                return true;
            case 10:
                Iterator it2 = this.p.iterator();
                while (it2.hasNext()) {
                    GoogleApiManagerClientQueue bljVar6 = (GoogleApiManagerClientQueue) this.k.remove((ApiKey) it2.next());
                    if (bljVar6 != null) {
                        bljVar6.m();
                    }
                }
                this.p.clear();
                return true;
            case 11:
                if (this.k.containsKey(message.obj)) {
                    GoogleApiManagerClientQueue bljVar7 = (GoogleApiManagerClientQueue) this.k.get(message.obj);
                    ThreadAndNullChecksUtil.g(bljVar7.j.l);
                    if (bljVar7.g) {
                        bljVar7.n();
                        GoogleApiHandler blnVar = bljVar7.j;
                        bljVar7.f(blnVar.g.b(blnVar.f) == 18 ? new Status(21, "Connection timed out waiting for Google Play services update to complete.") : new Status(22, "API failed to connect while resuming due to an unknown error."));
                        bljVar7.b.e("Timing out connection while resuming.");
                    }
                }
                return true;
            case 12:
                if (this.k.containsKey(message.obj)) {
                    GoogleApiManagerClientQueue bljVar8 = (GoogleApiManagerClientQueue) this.k.get(message.obj);
                    ThreadAndNullChecksUtil.g(bljVar8.j.l);
                    if (bljVar8.b.m() && bljVar8.e.size() == 0) {
                        ResultObserverHolder blbVar = bljVar8.d;
                        if (blbVar.a.isEmpty() && blbVar.b.isEmpty()) {
                            bljVar8.b.e("Timing out service connection.");
                        } else {
                            bljVar8.l();
                        }
                    }
                }
                return true;
            case 14:
                throw null;
            case 15:
                ApiFeatureKey blkVar = (ApiFeatureKey) message.obj;
                if (this.k.containsKey(blkVar.a)) {
                    GoogleApiManagerClientQueue bljVar9 = (GoogleApiManagerClientQueue) this.k.get(blkVar.a);
                    if (bljVar9.h.contains(blkVar) && !bljVar9.g) {
                        if (bljVar9.b.m()) {
                            bljVar9.g();
                        } else {
                            bljVar9.d();
                        }
                    }
                }
                return true;
            case 16:
                ApiFeatureKey blkVar2 = (ApiFeatureKey) message.obj;
                if (this.k.containsKey(blkVar2.a)) {
                    GoogleApiManagerClientQueue bljVar10 = (GoogleApiManagerClientQueue) this.k.get(blkVar2.a);
                    if (bljVar10.h.remove(blkVar2)) {
                        bljVar10.j.l.removeMessages(15, blkVar2);
                        bljVar10.j.l.removeMessages(16, blkVar2);
                        ApiAvailabilityVersionInfo bjbVar = blkVar2.b;
                        ArrayList arrayList = new ArrayList(bljVar10.a.size());
                        for (ApiCallTaskBase bkrVar : bljVar10.a) {
                            if ((bkrVar instanceof ApiCallRunnerBase) && (b2 = ((ApiCallRunnerBase) bkrVar).b(bljVar10)) != null) {
                                int i2 = 0;
                                while (true) {
                                    if (i2 > 0) {
                                        break;
                                    }
                                    if (!ThreadAndNullChecksUtil.n(b2[i2], bjbVar)) {
                                        i2++;
                                    } else if (i2 >= 0) {
                                        arrayList.add(bkrVar);
                                    }
                                }
                            }
                        }
                        int size = arrayList.size();
                        for (int i3 = 0; i3 < size; i3++) {
                            ApiCallTaskBase bkrVar2 = (ApiCallTaskBase) arrayList.get(i3);
                            bljVar10.a.remove(bkrVar2);
                            bkrVar2.e(new MissingApiException(bjbVar));
                        }
                    }
                }
                return true;
            case 17:
                h();
                return true;
            case 18:
                ConnectionTimingRecord bltVar = (ConnectionTimingRecord) message.obj;
                if (bltVar.c == 0) {
                    i().a(new GmsInternalParcel(bltVar.b, Arrays.asList(bltVar.a)));
                } else {
                    GmsInternalParcel bnrVar = this.o;
                    if (bnrVar != null) {
                        List list = bnrVar.b;
                        if (bnrVar.a != bltVar.b || (list != null && list.size() >= bltVar.d)) {
                            this.l.removeMessages(17);
                            h();
                        } else {
                            GmsInternalParcel bnrVar2 = this.o;
                            AccountAccessorParcel bnmVar = bltVar.a;
                            if (bnrVar2.b == null) {
                                bnrVar2.b = new ArrayList();
                            }
                            bnrVar2.b.add(bnmVar);
                        }
                    }
                    if (this.o == null) {
                        ArrayList arrayList2 = new ArrayList();
                        arrayList2.add(bltVar.a);
                        this.o = new GmsInternalParcel(bltVar.b, arrayList2);
                        Handler handler2 = this.l;
                        handler2.sendMessageDelayed(handler2.obtainMessage(17), bltVar.c);
                    }
                }
                return true;
            case 19:
                this.e = false;
                return true;
            default:
                int i4 = message.what;
                StringBuilder sb3 = new StringBuilder(31);
                sb3.append("Unknown message id: ");
                sb3.append(i4);
                Log.w("GoogleApiManager", sb3.toString());
                return false;
        }
    }
}
