package defpackage;

import android.accounts.Account;
import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.os.Bundle;
import android.os.IBinder;
import android.os.RemoteException;
import android.text.TextUtils;
import android.util.Log;
import com.google.android.gms.auth.TokenData;
import com.google.android.gms.auth.UserRecoverableAuthException;
import com.google.android.gms.common.GooglePlayServicesIncorrectManifestValueException;
import java.io.IOException;
import java.util.Iterator;
import java.util.concurrent.CancellationException;
import java.util.concurrent.ExecutionException;

/* compiled from: PG */
/* loaded from: classes.dex */
public final class bhq {
    public static final String[] a = {"com.google", "com.google.work", "cn.google"};
    public static final String b = "androidPackageName";
    public static final ComponentName c = new ComponentName("com.google.android.gms", "com.google.android.gms.auth.GetToken");
    private static final boa d = hm.d("GoogleAuthUtil");

    public static TokenData a(Bundle bundle) {
        TokenData tokenData;
        ClassLoader classLoader = TokenData.class.getClassLoader();
        if (classLoader != null) {
            bundle.setClassLoader(classLoader);
        }
        Bundle bundle2 = bundle.getBundle("tokenDetails");
        if (bundle2 == null) {
            tokenData = null;
        } else {
            if (classLoader != null) {
                bundle2.setClassLoader(classLoader);
            }
            tokenData = (TokenData) bundle2.getParcelable("TokenData");
        }
        if (tokenData != null) {
            return tokenData;
        }
        String string = bundle.getString("Error");
        bib bibVar = bib.UNKNOWN;
        for (bib bibVar2 : bib.values()) {
            if (true == bibVar2.af.equals(string)) {
                bibVar = bibVar2;
            }
        }
        if (bib.BAD_AUTHENTICATION.equals(bibVar) || bib.CAPTCHA.equals(bibVar) || bib.NEED_PERMISSION.equals(bibVar) || bib.NEED_REMOTE_CONSENT.equals(bibVar) || bib.NEEDS_BROWSER.equals(bibVar) || bib.USER_CANCEL.equals(bibVar) || bib.DEVICE_MANAGEMENT_REQUIRED.equals(bibVar) || bib.DM_INTERNAL_ERROR.equals(bibVar) || bib.DM_SYNC_DISABLED.equals(bibVar) || bib.DM_ADMIN_BLOCKED.equals(bibVar) || bib.DM_ADMIN_PENDING_APPROVAL.equals(bibVar) || bib.DM_STALE_SYNC_REQUIRED.equals(bibVar) || bib.DM_DEACTIVATED.equals(bibVar) || bib.DM_REQUIRED.equals(bibVar) || bib.THIRD_PARTY_DEVICE_MANAGEMENT_REQUIRED.equals(bibVar) || bib.DM_SCREENLOCK_REQUIRED.equals(bibVar)) {
            boa boaVar = d;
            String valueOf = String.valueOf(bibVar);
            String.valueOf(valueOf).length();
            boaVar.a("GoogleAuthUtil", "isUserRecoverableError status: ".concat(String.valueOf(valueOf)));
            throw new UserRecoverableAuthException(string);
        }
        if (bib.NETWORK_ERROR.equals(bibVar) || bib.SERVICE_UNAVAILABLE.equals(bibVar) || bib.INTNERNAL_ERROR.equals(bibVar) || bib.AUTH_SECURITY_ERROR.equals(bibVar)) {
            throw new IOException(string);
        }
        throw new bhm(string);
    }

    public static Object b(Context context, ComponentName componentName, bhp bhpVar) {
        biy biyVar = new biy();
        bna a2 = bna.a(context);
        try {
            try {
                if (!a2.d(new bmz(componentName), biyVar)) {
                    throw new IOException("Could not bind to service.");
                }
                try {
                    hr.i("BlockingServiceConnection.getService() called on main thread");
                    if (biyVar.a) {
                        throw new IllegalStateException("Cannot call get on this connection more than once");
                    }
                    biyVar.a = true;
                    return bhpVar.a((IBinder) biyVar.b.take());
                } catch (RemoteException | InterruptedException e) {
                    throw new IOException("Error on service connection.", e);
                }
            } finally {
                a2.b(componentName, biyVar);
            }
        } catch (SecurityException e2) {
            Log.w("GoogleAuthUtil", String.format("SecurityException while bind to auth service: %s", e2.getMessage()));
            throw new IOException("SecurityException while binding to Auth service.", e2);
        }
    }

    public static Object c(brh brhVar, String str) {
        try {
            hr.h();
            if (brhVar.c()) {
                return xq.e(brhVar);
            }
            brp brpVar = new brp();
            xq.f(brhVar, brpVar);
            brpVar.a.await();
            return xq.e(brhVar);
        } catch (InterruptedException e) {
            String format = String.format("Interrupted while waiting for the task of %s to finish.", str);
            d.a(format, new Object[0]);
            throw new IOException(format, e);
        } catch (CancellationException e2) {
            String format2 = String.format("Canceled while waiting for the task of %s to finish.", str);
            d.a(format2, new Object[0]);
            throw new IOException(format2, e2);
        } catch (ExecutionException e3) {
            Throwable cause = e3.getCause();
            if (cause instanceof bjz) {
                throw ((bjz) cause);
            }
            String format3 = String.format("Unable to get a result for %s due to ExecutionException.", str);
            d.a(format3, new Object[0]);
            throw new IOException(format3, e3);
        }
    }

    public static void d(bjz bjzVar, String str) {
        d.a("%s failed via GoogleAuthServiceClient, falling back to previous approach:\n%s", str, Log.getStackTraceString(bjzVar));
    }

    public static void e(Account account) {
        if (TextUtils.isEmpty(account.name)) {
            throw new IllegalArgumentException("Account name cannot be empty!");
        }
        String[] strArr = a;
        for (int i = 0; i < 3; i++) {
            if (strArr[i].equals(account.type)) {
                return;
            }
        }
        throw new IllegalArgumentException("Account type not supported");
    }

    public static boolean f(Context context) {
        if (bjd.a.c(context, 17895000) != 0) {
            return false;
        }
        String str = context.getApplicationInfo().packageName;
        Iterator it = dlh.a.a().a().a.iterator();
        while (it.hasNext()) {
            if (((String) it.next()).equals(str)) {
                return false;
            }
        }
        return true;
    }

    public static void h(Object obj) {
        if (obj != null) {
            return;
        }
        d.a("Service call returned null.", new Object[0]);
        throw new IOException("Service unavailable.");
    }

    public static void g(Context context) {
        try {
            bjp.d(context.getApplicationContext());
        } catch (bjn e) {
            e = e;
            throw new bhm(e.getMessage(), e);
        } catch (bjo e2) {
            String message = e2.getMessage();
            new Intent(e2.a);
            throw new bhr(message);
        } catch (GooglePlayServicesIncorrectManifestValueException e3) {
            e = e3;
            throw new bhm(e.getMessage(), e);
        }
    }
}
