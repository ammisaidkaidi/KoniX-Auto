package defpackage;

import j$.util.function.Consumer;

/* compiled from: PG */
/* loaded from: classes.dex */
public final /* synthetic */ class ProjectionHandlerIntConsumer implements Consumer {
    private final /* synthetic */ int d;
    public static final /* synthetic */ ProjectionHandlerIntConsumer c = new ProjectionHandlerIntConsumer(2);
    public static final /* synthetic */ ProjectionHandlerIntConsumer b = new ProjectionHandlerIntConsumer(1);
    public static final /* synthetic */ ProjectionHandlerIntConsumer a = new ProjectionHandlerIntConsumer(0);

    private /* synthetic */ azu(int i) {
        this.d = i;
    }

    @Override // j$.util.function.Consumer
    public final void accept(Object obj) {
        switch (this.d) {
            case 0:
                ((PhenotypeSyncCallback) obj).a();
                break;
            case 1:
                ((PhenotypeSyncCallback) obj).a();
                break;
            default:
                ((VideoLatencyChecker) obj).d();
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
