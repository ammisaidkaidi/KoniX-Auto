package defpackage;

/* compiled from: PG */
/* loaded from: classes.dex */
public final class SignInQueueRunnable implements Runnable {
    final /* synthetic */ SignInClientQueueHolder a;

    public SignInQueueRunnable(SignInClientQueueHolder bliVar) {
        this.a = bliVar;
    }

    @Override // java.lang.Runnable
    public final void run() {
        GoogleApiClientInterface bjxVar = this.a.a.b;
        bjxVar.e(String.valueOf(bjxVar.getClass().getName()).concat(" disconnecting because it was signed out."));
    }
}
