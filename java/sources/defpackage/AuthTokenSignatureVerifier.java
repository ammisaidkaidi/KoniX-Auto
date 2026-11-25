package defpackage;

import android.content.Context;
import android.os.Looper;

/* compiled from: PG */
/* loaded from: classes.dex */
final class AuthTokenSignatureVerifier extends GoogleSignatureVerifier {
    @Override // defpackage.GoogleSignatureVerifier
    public final /* bridge */ /* synthetic */ GoogleApiClientInterface a(Context context, Looper looper, SignInAccountRequest bmpVar, Object obj, ConnectionStateListener bkyVar, UnregisterListenerInterface bluVar) {
        return new GoogleAuthServiceClientImpl(context, looper, bmpVar, bkyVar, bluVar);
    }
}
