package defpackage;

import android.content.Context;
import android.os.Looper;

/* compiled from: PG */
/* loaded from: classes.dex */
final class PhenotypeSignatureChecker extends GoogleSignatureVerifier {
    @Override // defpackage.GoogleSignatureVerifier
    public final /* bridge */ /* synthetic */ GoogleApiClientInterface b(Context context, Looper looper, SignInAccountRequest bmpVar, Object obj, ConnectionCallbacksInterface bkdVar, OnConnectionFailedListenerInterface bkeVar) {
        return new PhenotypeServiceClient(context, looper, bmpVar, bkdVar, bkeVar);
    }
}
