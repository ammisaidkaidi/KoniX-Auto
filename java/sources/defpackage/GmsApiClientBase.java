package defpackage;

import android.accounts.Account;
import android.content.Context;
import android.os.Build;
import android.os.Handler;
import android.os.Looper;
import android.os.Parcel;
import android.os.SystemClock;
import com.google.android.gms.auth.api.signin.GoogleSignInAccount;
import java.lang.reflect.InvocationTargetException;
import java.util.Collections;
import java.util.Set;

/* compiled from: PG */
/* loaded from: classes.dex */
public class GmsApiClientBase {
    public final Context a;
    public final String b;
    public final ApiClientKey c;
    public final PendingResultInterface d;
    public final ApiKey e;
    public final Looper f;
    public final int g;
    public final ApiCallOptionsBase h;
    public final GoogleApiHandler i;

    public GmsApiClientBase(Context context, ApiClientKey bjyVar, PendingResultInterface bjwVar, LooperHandlerHolder bkbVar) {
        ThreadAndNullChecksUtil.m(context, "Null context is not permitted.");
        ThreadAndNullChecksUtil.m(bkbVar, "Settings must not FrameworkTransitionWrapper null; use Settings.DEFAULT_SETTINGS instead.");
        this.a = context.getApplicationContext();
        String str = null;
        if (Build.VERSION.SDK_INT >= 30) {
            try {
                str = (String) Context.class.getMethod("getAttributionTag", new Class[0]).invoke(context, new Object[0]);
            } catch (IllegalAccessException e) {
            } catch (NoSuchMethodException e2) {
            } catch (InvocationTargetException e3) {
            }
        }
        this.b = str;
        this.c = bjyVar;
        this.d = bjwVar;
        this.f = bkbVar.b;
        this.e = new ApiKey(bjyVar, bjwVar, str);
        this.h = new ApiClientOptionsWrapper(this);
        GoogleApiHandler c = GoogleApiHandler.c(this.a);
        this.i = c;
        this.g = c.i.getAndIncrement();
        ViewCompatApi26Statics hoVar = bkbVar.c;
        Handler handler = c.l;
        handler.sendMessage(handler.obtainMessage(7, this));
    }

    private final TaskBase a(int i, ExecutorParameterCheckerHolder bmcVar) {
        PreconditionsChecker brkVar = new PreconditionsChecker();
        GoogleApiHandler blnVar = this.i;
        int i2 = bmcVar.c;
        if (i2 != 0) {
            ApiKey bksVar = this.e;
            ApiCallTimingRecorder blsVar = null;
            if (blnVar.e()) {
                CertDataParcel bnqVar = CertDataSingleton.a().a;
                boolean z = true;
                if (bnqVar != null) {
                    if (bnqVar.b) {
                        boolean z2 = bnqVar.c;
                        GoogleApiManagerClientQueue b = blnVar.b(bksVar);
                        if (ProtoLiteMessageBase != null) {
                            Object obj = b.b;
                            if (obj instanceof GmsClientBase) {
                                GmsClientBase bmnVar = (GmsClientBase) obj;
                                if (bmnVar.z() && !bmnVar.n()) {
                                    ApiConnectionParcel b2 = ApiCallTimingRecorder.b(b, bmnVar, i2);
                                    if (b2 != null) {
                                        b.i++;
                                        z = b2.c;
                                    }
                                }
                            }
                        }
                        z = z2;
                    }
                }
                blsVar = new ApiCallTimingRecorder(blnVar, i2, bksVar, z ? System.currentTimeMillis() : 0L, z ? SystemClock.elapsedRealtime() : 0L);
            }
            if (blsVar != null) {
                TaskImpl broVar = brkVar.a;
                Handler handler = blnVar.l;
                handler.getClass();
                broVar.f(new HandlerExecutor(handler, 0), blsVar);
            }
        }
        ApiCallRunnerVariant bkpVar = new ApiCallRunnerVariant(i, bmcVar, brkVar);
        Handler handler2 = blnVar.l;
        handler2.sendMessage(handler2.obtainMessage(4, new ApiCallContextRecord(bkpVar, blnVar.j.get(), this)));
        return brkVar.a;
    }

    public static GmsApiClientBase h(Context context) {
        ApiClientKey bjyVar = bik.a;
        PendingResultNoOpImpl bjvVar = bjw.a;
        ViewCompatApi26Statics hoVar = new ViewCompatApi26Statics();
        LooperHandlerFactoryBuilder bkaVar = new LooperHandlerFactoryBuilder();
        bkaVar.a = hoVar;
        return new GmsApiClientBase(context, bjyVar, bjvVar, bkaVar.a());
    }

    public final SignInAccountRequestBuilder b() {
        Set emptySet;
        GoogleSignInAccount a;
        SignInAccountRequestBuilder bmoVar = new SignInAccountRequestBuilder();
        PendingResultInterface bjwVar = this.d;
        Account account = null;
        if (!(bjwVar instanceof PendingResultInternalInterface) || (SingleStringProtoMessage = ((PendingResultInternalInterface) bjwVar).a()) == null) {
            PendingResultInterface bjwVar2 = this.d;
            if (bjwVar2 instanceof OptionalPendingResultInterface) {
                account = ((OptionalPendingResultInterface) bjwVar2).a();
            }
        } else {
            String str = a.d;
            if (str != null) {
                account = new Account(str, "com.google");
            }
        }
        bmoVar.a = account;
        PendingResultInterface bjwVar3 = this.d;
        if (bjwVar3 instanceof PendingResultInternalInterface) {
            GoogleSignInAccount a2 = ((PendingResultInternalInterface) bjwVar3).a();
            emptySet = a2 == null ? Collections.emptySet() : a2.a();
        } else {
            emptySet = Collections.emptySet();
        }
        if (bmoVar.b == null) {
            bmoVar.b = new DesugaredArraySet();
        }
        bmoVar.b.addAll(emptySet);
        bmoVar.d = this.a.getClass().getName();
        bmoVar.c = this.a.getPackageName();
        return bmoVar;
    }

    public final TaskBase c(ExecutorParameterCheckerHolder bmcVar) {
        return a(0, bmcVar);
    }

    public final TaskBase d(ExecutorParameterCheckerHolder bmcVar) {
        return a(1, bmcVar);
    }

    public final TaskBase e(final String str) {
        ExecutorParameterChecker a = ExecutorParameterCheckerHolder.a();
        a.a = new BiConsumerCallbackInterface() { // from class: bou
            @Override // defpackage.BiConsumerCallbackInterface
            public final void a(Object obj, Object obj2) {
                String str2 = str;
                PhenotypeCallbacksStub bqiVar = new PhenotypeCallbacksStub((PreconditionsChecker) obj2);
                PhenotypeServiceProxy bqjVar = (PhenotypeServiceProxy) ((PhenotypeServiceClient) obj).w();
                Parcel a2 = bqjVar.a();
                ServiceBinderHelper.c(a2, bqiVar);
                a2.writeString(str2);
                bqjVar.c(5, a2);
            }
        };
        return c(a.a());
    }

    public final TaskBase f(final String str, final int i, final String[] strArr, final byte[] bArr) {
        ExecutorParameterChecker a = ExecutorParameterCheckerHolder.a();
        a.a = new BiConsumerCallbackInterface() { // from class: bow
            @Override // defpackage.BiConsumerCallbackInterface
            public final void a(Object obj, Object obj2) {
                String str2 = str;
                int i2 = i;
                String[] strArr2 = strArr;
                byte[] bArr2 = bArr;
                PhenotypeCallbacksStub bqiVar = new PhenotypeCallbacksStub((PreconditionsChecker) obj2);
                PhenotypeServiceProxy bqjVar = (PhenotypeServiceProxy) ((PhenotypeServiceClient) obj).w();
                Parcel a2 = bqjVar.a();
                ServiceBinderHelper.c(a2, bqiVar);
                a2.writeString(str2);
                a2.writeInt(i2);
                a2.writeStringArray(strArr2);
                a2.writeByteArray(bArr2);
                bqjVar.c(1, a2);
            }
        };
        return c(a.a());
    }

    public final TaskBase g(final String str, final String str2) {
        ExecutorParameterChecker a = ExecutorParameterCheckerHolder.a();
        a.a = new BiConsumerCallbackInterface() { // from class: bot
            @Override // defpackage.BiConsumerCallbackInterface
            public final void a(Object obj, Object obj2) {
                String str3 = str;
                String str4 = str2;
                PhenotypeCallbacksStub bqiVar = new PhenotypeCallbacksStub((PreconditionsChecker) obj2);
                PhenotypeServiceProxy bqjVar = (PhenotypeServiceProxy) ((PhenotypeServiceClient) obj).w();
                Parcel a2 = bqjVar.a();
                ServiceBinderHelper.c(a2, bqiVar);
                a2.writeString(str3);
                a2.writeString(str4);
                a2.writeString(null);
                bqjVar.c(11, a2);
            }
        };
        return c(a.a());
    }

    public final void i(ExecutorParameterCheckerHolder bmcVar) {
        a(2, bmcVar);
    }
}
