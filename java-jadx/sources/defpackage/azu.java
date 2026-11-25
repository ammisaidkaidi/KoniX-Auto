package defpackage;

import j$.util.function.Consumer;

/* compiled from: PG */
/* loaded from: classes.dex */
public final /* synthetic */ class azu implements Consumer {
    private final /* synthetic */ int d;
    public static final /* synthetic */ azu c = new azu(2);
    public static final /* synthetic */ azu b = new azu(1);
    public static final /* synthetic */ azu a = new azu(0);

    private /* synthetic */ azu(int i) {
        this.d = i;
    }

    @Override // j$.util.function.Consumer
    public final void accept(Object obj) {
        switch (this.d) {
            case 0:
                ((ayc) obj).a();
                break;
            case 1:
                ((ayc) obj).a();
                break;
            default:
                ((bhd) obj).d();
                break;
        }
    }

    @Override // j$.util.function.Consumer
    public final /* synthetic */ Consumer andThen(Consumer consumer) {
        switch (this.d) {
        }
        return Consumer.CC.$default$andThen(this, consumer);
    }
}
