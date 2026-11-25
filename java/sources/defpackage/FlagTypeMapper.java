package defpackage;

/* compiled from: PG */
/* loaded from: classes.dex */
public final /* synthetic */ class FlagTypeMapper implements FlagValueFunction {
    public final /* synthetic */ Class a;
    private final /* synthetic */ int b;

    public /* synthetic */ cgm(Class cls, int i) {
        this.b = i;
        this.a = cls;
    }

    @Override // defpackage.FlagValueFunction
    public final Object a(Object obj) {
        switch (this.b) {
            case 0:
                return (Long) this.a.cast(obj);
            case 1:
                return (Boolean) this.a.cast(obj);
            default:
                return (String) this.a.cast(obj);
        }
    }
}
