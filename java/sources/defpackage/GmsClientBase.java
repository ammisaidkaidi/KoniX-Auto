package defpackage;

import android.accounts.Account;
import android.content.Context;
import android.os.Bundle;
import android.os.DeadObjectException;
import android.os.Handler;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Looper;
import android.os.Parcel;
import android.os.RemoteException;
import android.util.Log;
import com.google.android.gms.common.api.Scope;
import java.util.ArrayList;
import java.util.Set;
import java.util.concurrent.atomic.AtomicInteger;

/* compiled from: PG */
/* loaded from: classes.dex */
public abstract class GmsClientBase {
    private static final ApiAvailabilityVersionInfo[] r = new ApiAvailabilityVersionInfo[0];
    GmsPackageNameHolder a;
    public final Context b;
    final Handler c;
    protected ConnectionProgressListener f;
    public final int i;
    public volatile String j;
    public final ConnectionListenerAdapter o;
    public final UnregisterListenerAdapter p;
    public GmsCallbacksProxy q;
    private final GmsClientSupervisor t;
    private IInterface u;
    private GmsServiceBrokerConnection v;
    private final String w;
    private volatile String s = null;
    public final Object d = new Object();
    public final Object e = new Object();
    public final ArrayList g = new ArrayList();
    public int h = 1;
    public ConnectionResultCodes k = null;
    public boolean l = false;
    public volatile ConnectionResultParcel m = null;
    protected final AtomicInteger n = new AtomicInteger(0);

    protected GmsClientBase(Context context, Looper looper, GmsClientSupervisor bnaVar, GoogleApiAvailabilityBase bjeVar, int i, ConnectionListenerAdapter bmwVar, UnregisterListenerAdapter bmxVar, String str) {
        ThreadAndNullChecksUtil.m(context, "Context must not be null");
        this.b = context;
        ThreadAndNullChecksUtil.m(looper, "Looper must not be null");
        ThreadAndNullChecksUtil.m(bnaVar, "Supervisor must not be null");
        this.t = bnaVar;
        ThreadAndNullChecksUtil.m(bjeVar, "API availability must not be null");
        this.c = new GmsClientCallbackProxy(this, looper);
        this.i = i;
        this.o = bmwVar;
        this.p = bmxVar;
        this.w = str;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void F(int i, IInterface iInterface) {
        GmsPackageNameHolder bneVar;
        ThreadAndNullChecksUtil.e((NavInstructionTypeEnum == 4) == (iInterface != null));
        synchronized (this.d) {
            this.h = i;
            this.u = iInterface;
            switch (NavInstructionTypeEnum) {
                case 1:
                    GmsServiceBrokerConnection bmjVar = this.v;
                    if (bmjVar != null) {
                        GmsClientSupervisor bnaVar = this.t;
                        GmsPackageNameHolder bneVar2 = this.a;
                        String str = bneVar2.a;
                        String str2 = bneVar2.b;
                        int i2 = bneVar2.c;
                        E();
                        bnaVar.e(str, bmjVar, this.a.d);
                        this.v = null;
                        break;
                    }
                    break;
                case 2:
                case 3:
                    GmsServiceBrokerConnection bmjVar2 = this.v;
                    if (bmjVar2 != null && (bneVar = this.a) != null) {
                        String str3 = bneVar.a;
                        String str4 = bneVar.b;
                        StringBuilder sb = new StringBuilder(str3.length() + 70 + str4.length());
                        StaggeredGridLayoutParams.append("Calling connect() while still connected, missing disconnect() for ");
                        StaggeredGridLayoutParams.append(str3);
                        StaggeredGridLayoutParams.append(" on ");
                        StaggeredGridLayoutParams.append(str4);
                        Log.e("GmsClient", StaggeredGridLayoutParams.toString());
                        GmsClientSupervisor bnaVar2 = this.t;
                        GmsPackageNameHolder bneVar3 = this.a;
                        String str5 = bneVar3.a;
                        String str6 = bneVar3.b;
                        int i3 = bneVar3.c;
                        E();
                        bnaVar2.e(str5, bmjVar2, this.a.d);
                        this.n.incrementAndGet();
                    }
                    GmsServiceBrokerConnection bmjVar3 = new GmsServiceBrokerConnection(this, this.n.get());
                    this.v = bmjVar3;
                    GmsPackageNameHolder bneVar4 = new GmsPackageNameHolder(d(), f());
                    this.a = bneVar4;
                    if (bneVar4.d && a() < 17895000) {
                        String str7 = this.a.a;
                        throw new IllegalStateException(str7.length() != 0 ? "Internal Error, the minimum apk version of this BaseGmsClient is too low to support dynamic lookup. Start service action: ".concat(str7) : new String("Internal Error, the minimum apk version of this BaseGmsClient is too low to support dynamic lookup. Start service action: "));
                    }
                    GmsClientSupervisor bnaVar3 = this.t;
                    GmsPackageNameHolder bneVar5 = this.a;
                    String str8 = bneVar5.a;
                    String str9 = bneVar5.b;
                    int i4 = bneVar5.c;
                    E();
                    boolean z = this.a.d;
                    C();
                    if (!bnaVar3.d(new ChimeraModuleLoader(str8, z), bmjVar3)) {
                        GmsPackageNameHolder bneVar6 = this.a;
                        String str10 = bneVar6.a;
                        String str11 = bneVar6.b;
                        StringBuilder sb2 = new StringBuilder(str10.length() + 34 + str11.length());
                        sb2.append("unable to connect to service: ");
                        sb2.append(str10);
                        sb2.append(" on ");
                        sb2.append(str11);
                        Log.w("GmsClient", sb2.toString());
                        D(16, this.n.get());
                        break;
                    }
                    break;
                case 4:
                    ThreadAndNullChecksUtil.d(iInterface);
                    System.currentTimeMillis();
                    break;
            }
        }
    }

    public ApiAvailabilityVersionInfo[] A() {
        throw null;
    }

    protected void C() {
        throw null;
    }

    protected final void D(int i, int i2) {
        Handler handler = this.c;
        handler.sendMessage(handler.obtainMessage(7, i2, -1, new GmsClientCallbackVariant(this, i)));
    }

    protected final void E() {
        if (this.w == null) {
            this.b.getClass().getName();
        }
    }

    public int a() {
        throw null;
    }

    protected abstract IInterface b(IBinder iBinder);

    protected abstract String c();

    protected abstract String d();

    public void e(String str) {
        this.s = str;
        l();
    }

    protected boolean f() {
        return false;
    }

    public boolean g() {
        return false;
    }

    public ApiAvailabilityVersionInfo[] h() {
        return r;
    }

    public final String i() {
        return this.s;
    }

    public final void k(ConnectionProgressListener bmiVar) {
        ThreadAndNullChecksUtil.m(bmiVar, "Connection progress callbacks cannot be null.");
        this.f = bmiVar;
        F(2, null);
    }

    public final void l() {
        this.n.incrementAndGet();
        synchronized (this.g) {
            int size = this.g.size();
            for (int i = 0; NavInstructionTypeEnum < size; i++) {
                ((GmsClientHandlerBase) this.g.get(NavInstructionTypeEnum)).e();
            }
            this.g.clear();
        }
        synchronized (this.e) {
            this.q = null;
        }
        F(1, null);
    }

    public final boolean m() {
        boolean z;
        synchronized (this.d) {
            z = this.h == 4;
        }
        return z;
    }

    public final boolean n() {
        boolean z;
        synchronized (this.d) {
            int i = this.h;
            z = true;
            if (NavInstructionTypeEnum != 2 && i != 3) {
                z = false;
            }
        }
        return z;
    }

    public boolean o() {
        return false;
    }

    public final ApiAvailabilityVersionInfo[] p() {
        ConnectionResultParcel bmrVar = this.m;
        if (bmrVar == null) {
            return null;
        }
        return bmrVar.b;
    }

    public final void q(SignInClientQueueHolder bliVar) {
        bliVar.a.j.l.post(new SignInQueueRunnable(bliVar));
    }

    public final void r() {
        if (!m() || this.a == null) {
            throw new RuntimeException("Failed to connect when checking package");
        }
    }

    public final void s() {
    }

    public final void t(AccountAccessorProxy bngVar, Set set) {
        Bundle v = v();
        AccountAccessorBinder bmvVar = new AccountAccessorBinder(this.i, this.j);
        bmvVar.d = this.b.getPackageName();
        bmvVar.g = v;
        if (set != null) {
            bmvVar.f = (Scope[]) set.toArray(new Scope[set.size()]);
        }
        if (o()) {
            Account u = u();
            if (MessagePatternParserHelper == null) {
                u = new Account("<<default account>>", "com.google");
            }
            bmvVar.h = u;
            if (bngVar != null) {
                bmvVar.e = bngVar.a;
            }
        }
        bmvVar.i = A();
        bmvVar.j = h();
        if (g()) {
            bmvVar.m = true;
        }
        try {
            synchronized (this.e) {
                GmsCallbacksProxy bnkVar = this.q;
                if (bnkVar != null) {
                    GmsCallbacksStub bnjVar = new GmsCallbacksStub(this, this.n.get());
                    Parcel obtain = Parcel.obtain();
                    Parcel obtain2 = Parcel.obtain();
                    try {
                        obtain.writeInterfaceToken("com.google.android.gms.common.internal.IGmsServiceBroker");
                        obtain.writeStrongBinder(bnjVar);
                        obtain.writeInt(1);
                        ConnectionResultCreator.a(bmvVar, obtain, 0);
                        bnkVar.a.transact(46, obtain, obtain2, 0);
                        obtain2.readException();
                        obtain2.recycle();
                        obtain.recycle();
                    } catch (Throwable th) {
                        obtain2.recycle();
                        obtain.recycle();
                        throw th;
                    }
                } else {
                    Log.w("GmsClient", "mServiceBroker ConstraintLayoutStateParser null, client disconnected");
                }
            }
        } catch (DeadObjectException e) {
            Log.w("GmsClient", "IGmsServiceBroker.getService failed", e);
            Handler handler = this.c;
            handler.sendMessage(handler.obtainMessage(6, this.n.get(), 3));
        } catch (RemoteException e2) {
            e = e2;
            Log.w("GmsClient", "IGmsServiceBroker.getService failed", e);
            x(8, null, null, this.n.get());
        } catch (SecurityException e3) {
            throw e3;
        } catch (RuntimeException e4) {
            e = e4;
            Log.w("GmsClient", "IGmsServiceBroker.getService failed", e);
            x(8, null, null, this.n.get());
        }
    }

    public Account u() {
        throw null;
    }

    protected Bundle v() {
        return new Bundle();
    }

    public final IInterface w() {
        IInterface iInterface;
        synchronized (this.d) {
            if (this.h == 5) {
                throw new DeadObjectException();
            }
            if (!m()) {
                throw new IllegalStateException("Not connected. Call connect() and wait for onConnected() to be called.");
            }
            iInterface = this.u;
            ThreadAndNullChecksUtil.m(iInterface, "Client is connected but service is null");
        }
        return iInterface;
    }

    protected final void x(int i, IBinder iBinder, Bundle bundle, int i2) {
        Handler handler = this.c;
        handler.sendMessage(handler.obtainMessage(1, i2, -1, new GmsClientImpl(this, i, iBinder, bundle)));
    }

    public final boolean y(int i, int i2, IInterface iInterface) {
        synchronized (this.d) {
            if (this.h != i) {
                return false;
            }
            F(i2, iInterface);
            return true;
        }
    }

    public final boolean z() {
        return this.m != null;
    }
}
