package defpackage;

/* compiled from: PG */
/* loaded from: classes.dex */
final class RequestPermissionContract extends ActivityResultContractBase {
    final /* synthetic */ String a;
    final /* synthetic */ ActivityResultRegistry b;

    public RequestPermissionContract(ActivityResultRegistry tyVar, String str) {
        this.b = tyVar;
        this.a = str;
    }

    @Override // defpackage.ActivityResultContractBase
    public final void a() {
        this.b.d(this.a);
    }
}
