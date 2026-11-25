package defpackage;

import android.content.ContentResolver;
import android.content.Context;
import android.content.SharedPreferences;
import android.content.pm.ProviderInfo;
import android.net.Uri;
import android.os.Build;
import android.os.StrictMode;
import android.util.Log;
import java.util.Map;
import java.util.concurrent.atomic.AtomicInteger;
import java.util.concurrent.atomic.AtomicReference;

/* compiled from: PG */
/* loaded from: classes.dex */
public abstract class cei {
    public static final /* synthetic */ int d = 0;
    private static final cez g;
    private static final AtomicInteger h;
    final ceg b;
    final String c;
    private final Object i;
    private volatile int j = -1;
    private volatile Object k;
    private final boolean l;
    private static final Object a = new Object();
    private static volatile ceh e = null;
    private static volatile boolean f = false;

    static {
        new AtomicReference();
        g = new cez(cgi.b);
        h = new AtomicInteger();
    }

    public cei(ceg cegVar, String str, Object obj, boolean z) {
        String str2 = cegVar.a;
        if (str2 == null && cegVar.b == null) {
            throw new IllegalArgumentException("Must pass a valid SharedPreferences file name or ContentProvider URI");
        }
        if (str2 != null && cegVar.b != null) {
            throw new IllegalArgumentException("Must pass one of SharedPreferences file name or ContentProvider URI");
        }
        this.b = cegVar;
        this.c = str;
        this.i = obj;
        this.l = z;
    }

    public static cei b(ceg cegVar, String str, Object obj, cef cefVar, boolean z) {
        return new cee(cegVar, str, obj, z, cefVar);
    }

    static void e() {
        h.incrementAndGet();
    }

    public static void f(Context context) {
        if (e == null) {
            Object obj = a;
            synchronized (obj) {
                if (e == null) {
                    synchronized (obj) {
                        ceh cehVar = e;
                        Context applicationContext = context.getApplicationContext();
                        if (applicationContext != null) {
                            context = applicationContext;
                        }
                        if (cehVar == null || cehVar.a != context) {
                            cdo.b();
                            cel.b();
                            cdu.d();
                            e = new ceh(context, ex.i(new bya(context, 4)));
                            e();
                        }
                    }
                }
            }
        }
    }

    private final Object g(ceh cehVar) {
        ceg cegVar = this.b;
        if (!cegVar.e) {
            cny cnyVar = cegVar.i;
            cdu b = cdu.b(cehVar.a);
            ceg cegVar2 = this.b;
            String a2 = b.a(cegVar2.e ? null : i(cegVar2.c));
            if (a2 != null) {
                return a(a2);
            }
        }
        return null;
    }

    /* JADX WARN: Can't wrap try/catch for region: R(10:50|(1:52)(7:66|(1:68)(1:74)|69|(2:71|(1:73))|59|60|61)|53|54|55|56|(1:58)(1:62)|59|60|61) */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    private final Object h(ceh cehVar) {
        cdr cdrVar;
        Object a2;
        boolean booleanValue;
        boolean z = this.b.g;
        String a3 = cdu.b(cehVar.a).a("gms:phenotype:phenotype_flag:debug_bypass_phenotype");
        if (a3 == null || !brr.c.matcher(a3).matches()) {
            ceg cegVar = this.b;
            Uri uri = cegVar.b;
            boolean z2 = false;
            if (uri != null) {
                Context context = cehVar.a;
                Object obj = cdv.b;
                String authority = uri.getAuthority();
                if ("com.google.android.gms.phenotype".equals(authority)) {
                    if (cdv.a.d()) {
                        booleanValue = ((Boolean) cdv.a.a()).booleanValue();
                    } else {
                        synchronized (cdv.b) {
                            if (cdv.a.d()) {
                                booleanValue = ((Boolean) cdv.a.a()).booleanValue();
                            } else {
                                if (!"com.google.android.gms".equals(context.getPackageName())) {
                                    ProviderInfo resolveContentProvider = context.getPackageManager().resolveContentProvider("com.google.android.gms.phenotype", Build.VERSION.SDK_INT < 29 ? 0 : 268435456);
                                    if (resolveContentProvider != null) {
                                        if (!"com.google.android.gms".equals(resolveContentProvider.packageName)) {
                                        }
                                    }
                                    cdv.a = coc.e(Boolean.valueOf(z2));
                                    booleanValue = ((Boolean) cdv.a.a()).booleanValue();
                                }
                                if ((context.getPackageManager().getApplicationInfo("com.google.android.gms", 0).flags & 129) != 0) {
                                    z2 = true;
                                }
                                cdv.a = coc.e(Boolean.valueOf(z2));
                                booleanValue = ((Boolean) cdv.a.a()).booleanValue();
                            }
                        }
                    }
                    if (booleanValue) {
                        boolean z3 = this.b.h;
                        ContentResolver contentResolver = cehVar.a.getContentResolver();
                        Uri uri2 = this.b.b;
                        Map map = cdo.a;
                        synchronized (cdo.class) {
                            cdrVar = (cdo) cdo.a.get(uri2);
                            if (cdrVar == null) {
                                try {
                                    cdo cdoVar = new cdo(contentResolver, uri2);
                                    try {
                                        cdo.a.put(uri2, cdoVar);
                                    } catch (SecurityException e2) {
                                    }
                                    cdrVar = cdoVar;
                                } catch (SecurityException e3) {
                                }
                            }
                        }
                    } else {
                        cdrVar = null;
                    }
                } else {
                    String.valueOf(authority).length();
                    Log.e("PhenotypeClientHelper", String.valueOf(authority).concat(" is an unsupported authority. Only com.google.android.gms.phenotype authority is supported."));
                    cdrVar = null;
                }
            } else {
                Context context2 = cehVar.a;
                String str = cegVar.a;
                int i = btj.a;
                if (str.startsWith("direct_boot:") || btj.c(context2)) {
                    synchronized (cel.class) {
                        cel celVar = (cel) cel.a.get(str);
                        if (celVar == null) {
                            StrictMode.ThreadPolicy allowThreadDiskReads = StrictMode.allowThreadDiskReads();
                            try {
                                SharedPreferences sharedPreferences = str.startsWith("direct_boot:") ? context2.createDeviceProtectedStorageContext().getSharedPreferences(str.substring(12), 0) : context2.getSharedPreferences(str, 0);
                                StrictMode.setThreadPolicy(allowThreadDiskReads);
                                cel celVar2 = new cel(sharedPreferences);
                                cel.a.put(str, celVar2);
                                cdrVar = celVar2;
                            } catch (Throwable th) {
                                StrictMode.setThreadPolicy(allowThreadDiskReads);
                                throw th;
                            }
                        } else {
                            cdrVar = celVar;
                        }
                    }
                } else {
                    cdrVar = null;
                }
            }
            if (cdrVar != null && (a2 = cdrVar.a(d())) != null) {
                return a(a2);
            }
        }
        return null;
    }

    private final String i(String str) {
        if (str.isEmpty()) {
            return this.c;
        }
        String valueOf = String.valueOf(this.c);
        return valueOf.length() != 0 ? str.concat(valueOf) : new String(str);
    }

    public abstract Object a(Object obj);

    /* JADX WARN: Code restructure failed: missing block: B:32:0x004b, code lost:
    
        if (r1 == null) goto L26;
     */
    /* JADX WARN: Removed duplicated region for block: B:20:0x005d A[Catch: all -> 0x0080, TryCatch #0 {, blocks: (B:8:0x001e, B:10:0x0022, B:13:0x0028, B:15:0x0033, B:18:0x004f, B:20:0x005d, B:22:0x0073, B:23:0x0076, B:24:0x007a, B:25:0x003a, B:28:0x004d, B:29:0x0041, B:31:0x0047, B:34:0x007e), top: B:7:0x001e }] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final Object c() {
        Object h2;
        coc cocVar;
        boolean z = true;
        if (!this.l) {
            cez cezVar = g;
            this.c.getClass();
            boolean z2 = cezVar.a;
            ex.s(true, "Attempt to access PhenotypeFlag not via codegen. All new PhenotypeFlags must be accessed through codegen APIs. If you believe you are seeing this error by mistake, you can add your flag to the exemption list located at //java/com/google/android/libraries/phenotype/client/lockdown/flags.textproto. Send the addition CL to ph-reviews@. See go/phenotype-android-codegen for information about generated code. See go/ph-lockdown for more information about this error.");
        }
        int i = h.get();
        if (this.j < i) {
            synchronized (this) {
                if (this.j < i) {
                    ceh cehVar = e;
                    if (cehVar == null) {
                        z = false;
                    }
                    ex.s(z, "Must call PhenotypeFlag.init() first");
                    if (this.b.f) {
                        h2 = g(cehVar);
                        if (h2 == null && (h2 = h(cehVar)) == null) {
                            h2 = this.i;
                        }
                        cocVar = (coc) cehVar.b.a();
                        if (cocVar.d()) {
                            cqo cqoVar = (cqo) cocVar.a();
                            ceg cegVar = this.b;
                            String a2 = cqoVar.a(cegVar.b, cegVar.a, cegVar.d, this.c);
                            h2 = a2 == null ? this.i : a(a2);
                        }
                        this.k = h2;
                        this.j = i;
                    } else {
                        h2 = h(cehVar);
                        if (h2 == null) {
                            h2 = g(cehVar);
                        }
                        cocVar = (coc) cehVar.b.a();
                        if (cocVar.d()) {
                        }
                        this.k = h2;
                        this.j = i;
                    }
                }
            }
        }
        return this.k;
    }

    public final String d() {
        return i(this.b.d);
    }
}
