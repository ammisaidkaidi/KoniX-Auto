package defpackage;

/* compiled from: PG */
/* loaded from: classes.dex */
public final /* synthetic */ class ToolbarClickListenerBridge {
    public final /* synthetic */ CarUiToolbarControllerImpl a;
    public final /* synthetic */ CarUiMenuItem b;

    public /* synthetic */ arh(CarUiToolbarControllerImpl arnVar, CarUiMenuItem apuVar) {
        this.a = arnVar;
        this.b = apuVar;
    }

    public final void a() {
        CarUiToolbarControllerImpl arnVar = this.a;
        this.b.b();
        arnVar.i.hide();
    }
}
