package defpackage;

/* compiled from: PG */
/* loaded from: classes.dex */
final class SessionScopeProvider implements DaggerProviderInterface {
    final /* synthetic */ AareceiverAppComponent a;

    public SessionScopeProvider(AareceiverAppComponent atjVar) {
        this.a = atjVar;
    }

    @Override // defpackage.DaggerProviderInterface
    public final /* bridge */ /* synthetic */ Object a() {
        return new ProjectionSessionScope(this.a.b);
    }
}
