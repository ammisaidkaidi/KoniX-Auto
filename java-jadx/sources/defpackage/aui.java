package defpackage;

import j$.util.function.BiConsumer;

/* compiled from: PG */
/* loaded from: classes.dex */
public final /* synthetic */ class aui implements BiConsumer {
    private final /* synthetic */ int f;
    public static final /* synthetic */ aui e = new aui(4);
    public static final /* synthetic */ aui d = new aui(3);
    public static final /* synthetic */ aui c = new aui(2);
    public static final /* synthetic */ aui b = new aui(1);
    public static final /* synthetic */ aui a = new aui(0);

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
                ((atq) obj2).h(true);
                break;
            case 1:
                ((atq) obj2).i();
                break;
            case 2:
                ((cqc) obj).g(obj2);
                break;
            case 3:
                ((cqr) obj).a((crv) obj2);
                break;
            default:
                ((cqu) obj).d(obj2);
                break;
        }
    }
}
