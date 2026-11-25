package defpackage;

/* compiled from: PG */
/* loaded from: classes.dex */
final class FrozenConfigState extends FreezableConfigState {
    static final FreezableConfigState a;

    static {
        FrozenConfigState cnhVar = new FrozenConfigState(new SimpleArrayMap(0));
        if (cnhVar.b) {
            throw new IllegalStateException("Already frozen");
        }
        cnhVar.b = true;
        a = cnhVar;
    }

    private FrozenConfigState(SimpleArrayMap viVar) {
        super(viVar);
    }
}
