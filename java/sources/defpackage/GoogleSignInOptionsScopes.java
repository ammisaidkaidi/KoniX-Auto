package defpackage;

import com.google.android.gms.common.api.Scope;

/* compiled from: PG */
/* loaded from: classes.dex */
public final class GoogleSignInOptionsScopes {
    public static final GoogleSignatureVerifier a = new SignInRequestConfigExtractor();

    static {
        new Scope("profile");
        new Scope("email");
    }
}
