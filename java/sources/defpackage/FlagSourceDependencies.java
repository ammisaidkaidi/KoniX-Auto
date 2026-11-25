package defpackage;

import android.content.Context;

/* compiled from: PG */
/* loaded from: classes.dex */
public final class FlagSourceDependencies {
    public final DaggerProviderInterface a;
    public final DaggerProviderInterface b;
    public final DaggerProviderInterface c;

    public FlagSourceDependencies(DaggerProviderInterface dnyVar, DaggerProviderInterface dnyVar2, DaggerProviderInterface dnyVar3) {
        dnyVar.getClass();
        this.c = dnyVar;
        dnyVar2.getClass();
        this.b = dnyVar2;
        dnyVar3.getClass();
        this.a = dnyVar3;
    }

    public FlagSourceDependencies(Context context) {
        DaggerProvider b = SingleCheckProvider.b(context);
        this.a = b;
        ContextProviderFactory_bsq bsqVar = new ContextProviderFactory_bsq(ProtoLiteMessageBase);
        this.b = bsqVar;
        this.c = DoubleCheckProvider.c(new BluetoothModuleFactory(b, bsqVar, 12, (boolean[]) null));
    }
}
