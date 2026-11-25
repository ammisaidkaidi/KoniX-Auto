package defpackage;

import android.content.BroadcastReceiver;
import android.content.Context;
import androidx.work.impl.WorkDatabase;
import com.google.android.embedded.projection.R;
import java.util.Arrays;
import java.util.List;

/* compiled from: PG */
/* loaded from: classes.dex */
public final class ahx extends agw {
    public static final Object a;
    private static ahx k;
    private static ahx l;
    public final Context b;
    public final agf c;
    public final WorkDatabase d;
    public final List e;
    public final ahf f;
    public boolean g;
    public BroadcastReceiver.PendingResult h;
    public final amh i;
    public final ald j;

    static {
        agr.b("WorkManagerImpl");
        k = null;
        l = null;
        a = new Object();
    }

    public ahx(Context context, agf agfVar, amh amhVar) {
        WorkDatabase m = WorkDatabase.m(context.getApplicationContext(), amhVar.a, context.getResources().getBoolean(R.bool.workmanager_test_configuration));
        Context applicationContext = context.getApplicationContext();
        agr.c(new agr(4));
        List asList = Arrays.asList(ahh.a(applicationContext, this), new aie(applicationContext, agfVar, amhVar, this));
        ahf ahfVar = new ahf(context, agfVar, amhVar, m, asList);
        Context applicationContext2 = context.getApplicationContext();
        this.b = applicationContext2;
        this.c = agfVar;
        this.i = amhVar;
        this.d = m;
        this.e = asList;
        this.f = ahfVar;
        this.j = new ald(m);
        this.g = false;
        if (applicationContext2.isDeviceProtectedStorage()) {
            throw new IllegalStateException("Cannot initialize WorkManager in direct boot mode");
        }
        amhVar.a(new alc(applicationContext2, this));
    }

    /* JADX WARN: Code restructure failed: missing block: B:25:0x0032, code lost:
    
        r2 = r6.getApplicationContext();
     */
    /* JADX WARN: Code restructure failed: missing block: B:26:0x0038, code lost:
    
        if (defpackage.ahx.l != null) goto L27;
     */
    /* JADX WARN: Code restructure failed: missing block: B:27:0x003a, code lost:
    
        defpackage.ahx.l = new defpackage.ahx(r2, r1, new defpackage.amh(r1.b));
     */
    /* JADX WARN: Code restructure failed: missing block: B:28:0x0048, code lost:
    
        defpackage.ahx.k = defpackage.ahx.l;
     */
    /* JADX WARN: Multi-variable type inference failed */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public static ahx c(Context context) {
        ahx ahxVar;
        Object obj = a;
        synchronized (obj) {
            synchronized (obj) {
                ahxVar = k;
                if (ahxVar == null) {
                    ahxVar = l;
                }
            }
            return ahxVar;
        }
        if (ahxVar == null) {
            Context applicationContext = context.getApplicationContext();
            if (!(applicationContext instanceof age)) {
                throw new IllegalStateException("WorkManager is not initialized properly.  You have explicitly disabled WorkManagerInitializer in your manifest, have not manually called WorkManager#initialize at this point, and your Application does not implement Configuration.Provider.");
            }
            agf a2 = ((age) applicationContext).a();
            synchronized (obj) {
                ahx ahxVar2 = k;
                if (ahxVar2 != null && l != null) {
                    throw new IllegalStateException("WorkManager is already initialized.  Did you try to initialize it manually without disabling WorkManagerInitializer? See WorkManager#initialize(Context, Configuration) or the class level Javadoc for more information.");
                }
                ahxVar = c(applicationContext);
            }
        }
        return ahxVar;
    }

    @Override // defpackage.agw
    public final void a(String str, List list) {
        new ahi(this, str, list).M();
    }

    public final void d() {
        synchronized (a) {
            this.g = true;
            BroadcastReceiver.PendingResult pendingResult = this.h;
            if (pendingResult != null) {
                pendingResult.finish();
                this.h = null;
            }
        }
    }

    public final void e() {
        air.a(this.b);
        akl n = this.d.n();
        akv akvVar = (akv) n;
        akvVar.a.e();
        afn d = akvVar.f.d();
        akvVar.a.f();
        try {
            d.a();
            ((akv) n).a.h();
            akvVar.a.g();
            akvVar.f.e(d);
            ahh.b(this.c, this.d, this.e);
        } catch (Throwable th) {
            akvVar.a.g();
            akvVar.f.e(d);
            throw th;
        }
    }

    public final void f(String str) {
        h(str, null);
    }

    public final void g(String str) {
        this.i.a(new alj(this, str, false));
    }

    public final void h(String str, fw fwVar) {
        this.i.a(new ali(this, str, fwVar, null, null));
    }
}
