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
public final class GoogleSignInClientImpl extends SignInCallbacksStub implements ConnectionCallbacksInterface, bke {
    private static final GoogleSignatureVerifier h = bqm.a;
    public final Context a;
    public final Handler b;
    public final Set c;
    public final SignInAccountRequest d;
    public SignInApiInterface e;
    public SignInFailureListener f;
    public final GoogleSignatureVerifier g;

    public GoogleSignInClientImpl(Context context, Handler handler, SignInAccountRequest bmpVar) {
        GoogleSignatureVerifier bjqVar = h;
        this.a = context;
        this.b = handler;
        this.d = bmpVar;
        this.c = bmpVar.b;
        this.g = bjqVar;
    }

    @Override // defpackage.ConnectionStateListener
    public final void a(int i) {
        this.e.l();
    }

    @Override // defpackage.ConnectionStateListener
    public final void b() {
        GoogleSignInClientImpl bmaVar;
        Account account;
        GoogleSignInAccount googleSignInAccount;
        Object obj = this.e;
        try {
            account = ((SignInServiceClient) obj).s.a;
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
                    Context context = ((GmsClientBase) obj).b;
                    SignInPackageConstants.a.lock();
                    try {
                        if (bhz.b == null) {
                            bhz.b = new SignInPackageConstants(context.getApplicationContext());
                        }
                        SignInPackageConstants bhzVar = bhz.b;
                        SignInPackageConstants.a.unlock();
                        String a = bhzVar.a("defaultGoogleSignInAccount");
                        if (TextUtils.isEmpty(SingleStringProtoMessage)) {
                            googleSignInAccount = null;
                        } else {
                            StringBuilder sb = new StringBuilder(String.valueOf(SingleStringProtoMessage).length() + 20);
                            StaggeredGridLayoutParams.append("googleSignInAccount");
                            StaggeredGridLayoutParams.append(":");
                            StaggeredGridLayoutParams.append(SingleStringProtoMessage);
                            String a2 = bhzVar.a(StaggeredGridLayoutParams.toString());
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
                                        for (int length = jSONArray.length(); NavInstructionTypeEnum < length; length = length) {
                                            hashSet.add(new Scope(jSONArray.getString(NavInstructionTypeEnum)));
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
                                        ThreadAndNullChecksUtil.k(string);
                                        googleSignInAccount = new GoogleSignInAccount(3, optString2, optString3, optString4, optString5, parse, null, longValue, string, new ArrayList(hashSet), optString6, optString7);
                                        googleSignInAccount.g = jSONObject.has("serverAuthCode") ? jSONObject.optString("serverAuthCode") : null;
                                    }
                                } catch (JSONException e2) {
                                    googleSignInAccount = null;
                                }
                            }
                        }
                        Integer num = ((SignInServiceClient) obj).t;
                        ThreadAndNullChecksUtil.d(num);
                        SignInConnectionParcel bnnVar = new SignInConnectionParcel(2, account, num.intValue(), googleSignInAccount);
                        SignInServiceProxy bqrVar = (SignInServiceProxy) ((GmsClientBase) obj).w();
                        SignInResultParcel bquVar = new SignInResultParcel(1, bnnVar);
                        Parcel a3 = bqrVar.a();
                        ServiceBinderHelper.b(a3, bquVar);
                        bmaVar = this;
                        ServiceBinderHelper.c(a3, bmaVar);
                        bqrVar.c(12, a3);
                        return;
                    } catch (Throwable th) {
                        SignInPackageConstants.a.unlock();
                        throw th;
                    }
                } catch (RemoteException e3) {
                    e = e3;
                    bmaVar = this;
                    RemoteException remoteException = e;
                    Log.w("SignInClientImpl", "Remote service probably died when signIn is called");
                    try {
                        bmaVar.c(new SignInResponseParcel(1, new ConnectionResultCodes(8, null), null));
                        return;
                    } catch (RemoteException e4) {
                        Log.wtf("SignInClientImpl", "ISignInCallbacks#onSignInComplete should be executed from the same process, unexpected RemoteException.", remoteException);
                        return;
                    }
                }
            }
            ServiceBinderHelper.c(a3, bmaVar);
            bqrVar.c(12, a3);
            return;
        } catch (RemoteException e5) {
            e = e5;
            RemoteException remoteException2 = e;
            Log.w("SignInClientImpl", "Remote service probably died when signIn is called");
            bmaVar.c(new SignInResponseParcel(1, new ConnectionResultCodes(8, null), null));
            return;
        }
        googleSignInAccount = null;
        Integer num2 = ((SignInServiceClient) obj).t;
        ThreadAndNullChecksUtil.d(num2);
        SignInConnectionParcel bnnVar2 = new SignInConnectionParcel(2, account, num2.intValue(), googleSignInAccount);
        SignInServiceProxy bqrVar2 = (SignInServiceProxy) ((GmsClientBase) obj).w();
        SignInResultParcel bquVar2 = new SignInResultParcel(1, bnnVar2);
        Parcel a32 = bqrVar2.a();
        ServiceBinderHelper.b(a32, bquVar2);
        bmaVar = this;
    }

    @Override // defpackage.SignInCallbacksStub
    public final void c(SignInResponseParcel bqvVar) {
        this.b.post(new SignInCoordinatorCallback(this, bqvVar));
    }

    @Override // defpackage.UnregisterListenerInterface
    public final void i(ConnectionResultCodes bizVar) {
        this.f.b(bizVar);
    }
}
