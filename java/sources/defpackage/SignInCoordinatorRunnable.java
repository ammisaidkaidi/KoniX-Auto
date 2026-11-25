package defpackage;

/* compiled from: PG */
/* loaded from: classes.dex */
final class SignInCoordinatorRunnable implements Runnable {
    final /* synthetic */ GoogleSignInClientImpl a;

    public SignInCoordinatorRunnable(GoogleSignInClientImpl bmaVar) {
        this.a = bmaVar;
    }

    @Override // java.lang.Runnable
    public final void run() {
        this.a.f.b(new ConnectionResultCodes(4));
    }
}
