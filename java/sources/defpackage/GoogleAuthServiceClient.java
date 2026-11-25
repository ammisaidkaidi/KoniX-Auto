package defpackage;

import android.content.Context;
import com.google.android.gms.common.api.Status;

/* compiled from: PG */
/* loaded from: classes.dex */
public final class GoogleAuthServiceClient extends GmsApiClientBase implements GoogleAuthServiceClientInterface {
    private static final ApiClientKey j;
    private static final AuthScope k;
    private static final GoogleSignatureVerifier l;

    static {
        AuthTokenSignatureVerifier bhxVar = new AuthTokenSignatureVerifier();
        l = bhxVar;
        j = new ApiClientKey("GoogleAuthService.API", bhxVar, null);
        k = MixedApi23ViewCompatStatics.d("GoogleAuthServiceClient");
    }

    public GoogleAuthServiceClient(Context context) {
        super(context, j, bjv.a, bkb.a);
    }

    public static void a(Status status, Object obj, PreconditionsChecker brkVar) {
        if (status.b() ? brkVar.c(obj) : brkVar.b(new GoogleApiExceptionBase(status))) {
            return;
        }
        k.a("The task is already complete.", new Object[0]);
    }
}
