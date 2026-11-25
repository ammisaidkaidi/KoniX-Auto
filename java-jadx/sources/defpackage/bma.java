package defpackage;

import android.accounts.Account;
import android.content.Context;
import android.net.Uri;
import android.os.Handler;
import android.os.Parcel;
import android.os.RemoteException;
import android.text.TextUtils;
import android.util.Log;
import com.google.android.gms.auth.api.signin.GoogleSignInAccount;
import com.google.android.gms.common.api.Scope;
import java.util.ArrayList;
import java.util.HashSet;
import java.util.Set;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

/* compiled from: PG */
/* loaded from: classes.dex */
public final class bma extends bqq implements bkd, bke {
    private static final bjq h = bqm.a;
    public final Context a;
    public final Handler b;
    public final Set c;
    public final bmp d;
    public bqn e;
    public blm f;
    public final bjq g;

    public bma(Context context, Handler handler, bmp bmpVar) {
        bjq bjqVar = h;
        this.a = context;
        this.b = handler;
        this.d = bmpVar;
        this.c = bmpVar.b;
        this.g = bjqVar;
    }

    @Override // defpackage.bky
    public final void a(int i) {
        this.e.l();
    }

    @Override // defpackage.bky
    public final void b() {
        bma bmaVar;
        Account account;
        GoogleSignInAccount googleSignInAccount;
        Object obj = this.e;
        try {
            account = ((bqt) obj).s.a;
            if (account == null) {
                account = new Account("<<default account>>", "com.google");
            }
        } catch (RemoteException e) {
            e = e;
            bmaVar = this;
        }
        try {
            if ("<<default account>>".equals(account.name)) {
                try {
                    Context context = ((bmn) obj).b;
                    bhz.a.lock();
                    try {
                        if (bhz.b == null) {
                            bhz.b = new bhz(context.getApplicationContext());
                        }
                        bhz bhzVar = bhz.b;
                        bhz.a.unlock();
                        String a = bhzVar.a("defaultGoogleSignInAccount");
                        if (TextUtils.isEmpty(a)) {
                            googleSignInAccount = null;
                        } else {
                            StringBuilder sb = new StringBuilder(String.valueOf(a).length() + 20);
                            sb.append("googleSignInAccount");
                            sb.append(":");
                            sb.append(a);
                            String a2 = bhzVar.a(sb.toString());
                            if (a2 != null) {
                                try {
                                    if (TextUtils.isEmpty(a2)) {
                                        googleSignInAccount = null;
                                    } else {
                                        JSONObject jSONObject = new JSONObject(a2);
                                        String optString = jSONObject.optString("photoUrl");
                                        Uri parse = !TextUtils.isEmpty(optString) ? Uri.parse(optString) : null;
                                        long parseLong = Long.parseLong(jSONObject.getString("expirationTime"));
                                        HashSet hashSet = new HashSet();
                                        JSONArray jSONArray = jSONObject.getJSONArray("grantedScopes");
                                        int i = 0;
                                        for (int length = jSONArray.length(); i < length; length = length) {
                                            hashSet.add(new Scope(jSONArray.getString(i)));
                                            i++;
                                        }
                                        String optString2 = jSONObject.optString("id");
                                        String optString3 = jSONObject.has("tokenId") ? jSONObject.optString("tokenId") : null;
                                        String optString4 = jSONObject.has("email") ? jSONObject.optString("email") : null;
                                        String optString5 = jSONObject.has("displayName") ? jSONObject.optString("displayName") : null;
                                        String optString6 = jSONObject.has("givenName") ? jSONObject.optString("givenName") : null;
                                        String optString7 = jSONObject.has("familyName") ? jSONObject.optString("familyName") : null;
                                        Long valueOf = Long.valueOf(parseLong);
                                        String string = jSONObject.getString("obfuscatedIdentifier");
                                        long longValue = valueOf.longValue();
                                        hr.k(string);
                                        googleSignInAccount = new GoogleSignInAccount(3, optString2, optString3, optString4, optString5, parse, null, longValue, string, new ArrayList(hashSet), optString6, optString7);
                                        googleSignInAccount.g = jSONObject.has("serverAuthCode") ? jSONObject.optString("serverAuthCode") : null;
                                    }
                                } catch (JSONException e2) {
                                    googleSignInAccount = null;
                                }
                            }
                        }
                        Integer num = ((bqt) obj).t;
                        hr.d(num);
                        bnn bnnVar = new bnn(2, account, num.intValue(), googleSignInAccount);
                        bqr bqrVar = (bqr) ((bmn) obj).w();
                        bqu bquVar = new bqu(1, bnnVar);
                        Parcel a3 = bqrVar.a();
                        asr.b(a3, bquVar);
                        bmaVar = this;
                        asr.c(a3, bmaVar);
                        bqrVar.c(12, a3);
                        return;
                    } catch (Throwable th) {
                        bhz.a.unlock();
                        throw th;
                    }
                } catch (RemoteException e3) {
                    e = e3;
                    bmaVar = this;
                    RemoteException remoteException = e;
                    Log.w("SignInClientImpl", "Remote service probably died when signIn is called");
                    try {
                        bmaVar.c(new bqv(1, new biz(8, null), null));
                        return;
                    } catch (RemoteException e4) {
                        Log.wtf("SignInClientImpl", "ISignInCallbacks#onSignInComplete should be executed from the same process, unexpected RemoteException.", remoteException);
                        return;
                    }
                }
            }
            asr.c(a3, bmaVar);
            bqrVar.c(12, a3);
            return;
        } catch (RemoteException e5) {
            e = e5;
            RemoteException remoteException2 = e;
            Log.w("SignInClientImpl", "Remote service probably died when signIn is called");
            bmaVar.c(new bqv(1, new biz(8, null), null));
            return;
        }
        googleSignInAccount = null;
        Integer num2 = ((bqt) obj).t;
        hr.d(num2);
        bnn bnnVar2 = new bnn(2, account, num2.intValue(), googleSignInAccount);
        bqr bqrVar2 = (bqr) ((bmn) obj).w();
        bqu bquVar2 = new bqu(1, bnnVar2);
        Parcel a32 = bqrVar2.a();
        asr.b(a32, bquVar2);
        bmaVar = this;
    }

    @Override // defpackage.bqq
    public final void c(bqv bqvVar) {
        this.b.post(new blz(this, bqvVar));
    }

    @Override // defpackage.blu
    public final void i(biz bizVar) {
        this.f.b(bizVar);
    }
}
