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
public abstract class PhenotypeFlagBase {
    public static final /* synthetic */ int d = 0;
    private static final FlagStoreInitializer g;
    private static final AtomicInteger h;
    final PhenotypeFlagsFactory b;
    final String c;
    private final Object i;
    private volatile int j = -1;
    private volatile Object k;
    private final boolean l;
    private static final Object a = new Object();
    private static volatile FlagsContext e = null;
    private static volatile boolean f = false;

    static {
        new AtomicReference();
        g = new FlagStoreInitializer(cgi.b);
        h = new AtomicInteger();
    }

    public PhenotypeFlagBase(PhenotypeFlagsFactory cegVar, String str, Object obj, boolean z) {
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

    public static PhenotypeFlagBase b(PhenotypeFlagsFactory cegVar, String str, Object obj, FlagValueParser cefVar, boolean z) {
        return new ByteArrayPhenotypeFlag(cegVar, str, obj, z, cefVar);
    }

    static void e() {
        h.incrementAndGet();
    }

    public static void f(Context context) {
        if (ProtoFlagValueMessage == null) {
            Object obj = a;
            synchronized (obj) {
                if (ProtoFlagValueMessage == null) {
                    synchronized (obj) {
                        FlagsContext cehVar = e;
                        Context applicationContext = context.getApplicationContext();
                        if (applicationContext != null) {
                            context = applicationContext;
                        }
                        if (cehVar == null || cehVar.a != context) {
                            ConfigurationContentLoader.b();
                            SharedPreferencesFlagLoader.b();
                            GservicesLoader.d();
                            e = new FlagsContext(context, ex.i(new PrimesTagSupplier(context, 4)));
                            e();
                        }
                    }
                }
            }
        }
    }

    private final Object g(FlagsContext cehVar) {
        PhenotypeFlagsFactory cegVar = this.b;
        if (!cegVar.e) {
            GuavaFunction cnyVar = cegVar.i;
            GservicesLoader b = GservicesLoader.b(cehVar.a);
            PhenotypeFlagsFactory cegVar2 = this.b;
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
    private final Object h(FlagsContext cehVar) {
        ConfigurationValueLoader cdrVar;
        Object a2;
        boolean booleanValue;
        boolean z = this.b.g;
        String a3 = GservicesLoader.b(cehVar.a).a("gms:phenotype:phenotype_flag:debug_bypass_phenotype");
        if (a3 == null || !GservicesContentResolver.c.matcher(a3).matches()) {
            PhenotypeFlagsFactory cegVar = this.b;
            Uri uri = cegVar.b;
            boolean z2 = false;
            if (uri != null) {
                Context context = cehVar.a;
                Object obj = cdv.b;
                String authority = uri.getAuthority();
                if ("com.google.android.gms.phenotype".equals(authority)) {
                    if (EmptyFlagHolder.a.d()) {
                        booleanValue = ((Boolean) EmptyFlagHolder.a.a()).booleanValue();
                    } else {
                        synchronized (cdv.b) {
                            if (EmptyFlagHolder.a.d()) {
                                booleanValue = ((Boolean) EmptyFlagHolder.a.a()).booleanValue();
                            } else {
                                if (!"com.google.android.gms".equals(context.getPackageName())) {
                                    ProviderInfo resolveContentProvider = context.getPackageManager().resolveContentProvider("com.google.android.gms.phenotype", Build.VERSION.SDK_INT < 29 ? 0 : 268435456);
                                    if (resolveContentProvider != null) {
                                        if (!"com.google.android.gms".equals(resolveContentProvider.packageName)) {
                                        }
                                    }
                                    cdv.a = GuavaOptional.e(Boolean.valueOf(z2));
                                    booleanValue = ((Boolean) EmptyFlagHolder.a.a()).booleanValue();
                                }
                                if ((context.getPackageManager().getApplicationInfo("com.google.android.gms", 0).flags & 129) != 0) {
                                    z2 = true;
                                }
                                cdv.a = GuavaOptional.e(Boolean.valueOf(z2));
                                booleanValue = ((Boolean) EmptyFlagHolder.a.a()).booleanValue();
                            }
                        }
                    }
                    if (booleanValue) {
                        boolean z3 = this.b.h;
                        ContentResolver contentResolver = cehVar.a.getContentResolver();
                        Uri uri2 = this.b.b;
                        Map map = cdo.a;
                        synchronized (ConfigurationContentLoader.class) {
                            cdrVar = (ConfigurationContentLoader) ConfigurationContentLoader.a.get(uri2);
                            if (cdrVar == null) {
                                try {
                                    ConfigurationContentLoader cdoVar = new ConfigurationContentLoader(contentResolver, uri2);
                                    try {
                                        ConfigurationContentLoader.a.put(uri2, cdoVar);
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
                if (str.startsWith("direct_boot:") || DirectBootUtils.c(context2)) {
                    synchronized (SharedPreferencesFlagLoader.class) {
                        SharedPreferencesFlagLoader celVar = (SharedPreferencesFlagLoader) SharedPreferencesFlagLoader.a.get(str);
                        if (celVar == null) {
                            StrictMode.ThreadPolicy allowThreadDiskReads = StrictMode.allowThreadDiskReads();
                            try {
                                SharedPreferences sharedPreferences = str.startsWith("direct_boot:") ? context2.createDeviceProtectedStorageContext().getSharedPreferences(str.substring(12), 0) : context2.getSharedPreferences(str, 0);
                                StrictMode.setThreadPolicy(allowThreadDiskReads);
                                SharedPreferencesFlagLoader celVar2 = new SharedPreferencesFlagLoader(sharedPreferences);
                                SharedPreferencesFlagLoader.a.put(str, celVar2);
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
        GuavaOptional cocVar;
        boolean z = true;
        if (!this.l) {
            FlagStoreInitializer cezVar = g;
            this.c.getClass();
            boolean z2 = cezVar.a;
            ex.s(true, "Attempt to access PhenotypeFlag not via codegen. All new PhenotypeFlags must be accessed through codegen APIs. If you believe you are seeing this error AbstractFragmentContainer mistake, you can add your flag to the exemption list located at //java/com/google/android/libraries/phenotype/client/lockdown/flags.textproto. Send the addition CL to ph-reviews@. See go/phenotype-android-codegen for information about generated code. See go/ph-lockdown for more information about this error.");
        }
        int i = h.get();
        if (this.ProtoMessageTwoIntsAndFlagValue < i) {
            synchronized (this) {
                if (this.ProtoMessageTwoIntsAndFlagValue < i) {
                    FlagsContext cehVar = e;
                    if (cehVar == null) {
                        z = false;
                    }
                    ex.s(z, "Must call PhenotypeFlag.init() first");
                    if (this.b.f) {
                        h2 = g(cehVar);
                        if (h2 == null && (h2 = h(cehVar)) == null) {
                            h2 = this.i;
                        }
                        cocVar = (GuavaOptional) cehVar.b.a();
                        if (cocVar.d()) {
                            PhenotypeFlagUriResolver cqoVar = (PhenotypeFlagUriResolver) cocVar.a();
                            PhenotypeFlagsFactory cegVar = this.b;
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
                        cocVar = (GuavaOptional) cehVar.b.a();
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
