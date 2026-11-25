package defpackage;

import java.util.concurrent.Callable;

/* compiled from: PG */
/* loaded from: classes.dex */
public final class TimerMetricServiceWithSampler extends AbstractTimerMetricService implements PrimesMetricServiceLifecycle {
    private static final Callable a = cge.b;
    private final TimerMetricServiceImpl b;
    private final TraceSampler c;

    public TimerMetricServiceWithSampler(TimerMetricServiceImpl cauVar, GuavaOptional cocVar) {
        this.b = cauVar;
        this.c = (TraceSampler) ((DaggerProviderInterface) ((PresentOptional) cocVar).a).a();
    }

    @Override // defpackage.AbstractTimerMetricService
    public final TimerRecordingState a(PrimesMetricName btxVar) {
        TimerRecordingState a2 = this.b.a(btxVar);
        String str = btxVar.a;
        if (!TimerRecordingState.b(a2) && this.c.b(str)) {
            a2.d = true;
        }
        return a2;
    }

    @Override // defpackage.AbstractTimerMetricService
    public final ListenableFuture b(PrimesMetricName btxVar, int i) {
        ListenableFuture dagVar;
        TimerRecordingState caqVar = (TimerRecordingState) this.b.c.get(btxVar.a);
        ListenableFuture[] dagVarArr = new ListenableFuture[2];
        dagVarArr[0] = this.b.b(btxVar, i);
        String str = btxVar.a;
        if (caqVar == null || TimerRecordingState.b(caqVar)) {
            dagVar = dad.a;
        } else if (caqVar.d) {
            dagVar = this.c.c(str);
        } else {
            this.c.a(str, caqVar.b, caqVar.a());
            dagVar = dad.a;
        }
        dagVarArr[1] = dagVar;
        return new ConcurrentFuturesUtil(true, ImmutableList.o(dagVarArr)).a(a, czj.a);
    }

    @Override // defpackage.PrimesMetricServiceLifecycle
    public final /* synthetic */ void u() {
    }
}
