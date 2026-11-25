package defpackage;

import j$.util.function.BiConsumer;

/* compiled from: PG */
/* loaded from: classes.dex */
public final /* synthetic */ class SwitchingBiConsumer implements BiConsumer {
    private final /* synthetic */ int f;
    public static final /* synthetic */ SwitchingBiConsumer e = new SwitchingBiConsumer(4);
    public static final /* synthetic */ SwitchingBiConsumer d = new SwitchingBiConsumer(3);
    public static final /* synthetic */ SwitchingBiConsumer c = new SwitchingBiConsumer(2);
    public static final /* synthetic */ SwitchingBiConsumer b = new SwitchingBiConsumer(1);
    public static final /* synthetic */ SwitchingBiConsumer a = new SwitchingBiConsumer(0);

    private /* synthetic */ aui(int i) {
        this.f = i;
    }

    @Override // j$.util.function.BiConsumer
    public final /* synthetic */ BiConsumer andThen(BiConsumer biConsumer) {
        switch (this.f) {
        }
        return BiConsumer.CC.$default$andThen(this, biConsumer);
    }

    @Override // j$.util.function.BiConsumer
    public final void accept(Object obj, Object obj2) {
        switch (this.f) {
            case 0:
                ((AudioFocusRequestBuilder) obj2).h(true);
                break;
            case 1:
                ((AudioFocusRequestBuilder) obj2).i();
                break;
            case 2:
                ((ImmutableListBuilder) obj).g(obj2);
                break;
            case 3:
                ((RangeSetBuilder) obj).a((GuavaRange) obj2);
                break;
            default:
                ((ImmutableSetBuilder) obj).d(obj2);
                break;
        }
    }
}
