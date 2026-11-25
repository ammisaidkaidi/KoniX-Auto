package defpackage;

/* compiled from: PG */
/* loaded from: classes.dex */
public final class DaggerSingleProvider implements StingModuleBindingInterface, dhs {
    public final AareceiverAppComponent a;

    public DaggerSingleProvider() {
    }

    public DaggerSingleProvider(AareceiverAppComponent atjVar) {
        this.a = atjVar;
    }

    @Override // defpackage.StingModuleBindingInterface
    public final FragmentModuleHolder a() {
        return new FragmentModuleHolder();
    }
}
