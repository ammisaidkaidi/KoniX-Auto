package defpackage;

import android.app.Application;
import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import com.google.android.libraries.performance.primes.transmitter.LifeboatReceiver;
import java.util.Iterator;
import java.util.List;
import java.util.Set;
import java.util.concurrent.ExecutionException;

/* compiled from: PG */
/* loaded from: classes.dex */
public final class MetricTransmitterRegistry implements MetricSnapshotTransmitterApi {
    public final Application a;
    public final Set b;
    private final Set c;

    public MetricTransmitterRegistry(Context context, Set set, Set set2) {
        this.a = (Application) context;
        this.c = set;
        this.b = set2;
    }

    @Override // defpackage.MetricSnapshotTransmitterApi
    public final PrimesMetricSnapshot a() {
        return new PrimesMetricSnapshot(10);
    }

    @Override // defpackage.MetricSnapshotTransmitterApi
    public final void b(final ProtoRootAggregateMessage dpzVar) {
        ProtoMessageDphStringsAndCxu dpmVar = dpzVar.h;
        if (dpmVar == null) {
            dpmVar = dpm.i;
        }
        if ((dpmVar.a & 1) == 0 || this.c.isEmpty() || this.b.isEmpty()) {
            return;
        }
        ImmutableListBuilder j = ImmutableList.j();
        Iterator it = this.c.iterator();
        while (it.hasNext()) {
            j.g(((PrimesConfigSupplier) it.next()).a());
        }
        try {
            ViewCompatApi19Statics.j(TransformFuture.o(ProjectionIntentHelper.n(j.f()), new GuavaFunction() { // from class: ccp
                @Override // defpackage.GuavaFunction
                public final Object a(Object obj) {
                    MetricTransmitterRegistry ccqVar = MetricTransmitterRegistry.this;
                    ProtoRootAggregateMessage dpzVar2 = dpzVar;
                    ProtoMsgSubclassOfDdf ddhVar = (ProtoMsgSubclassOfDdf) PrimesLogMessage.c.n();
                    for (PrimesLogMessage ccsVar : (List) obj) {
                        if (ccsVar != null) {
                            ddhVar.n(ccsVar);
                        }
                    }
                    int i = 0;
                    if (ddhVar.c) {
                        ddhVar.k();
                        ddhVar.c = false;
                    }
                    PrimesLogMessage ccsVar2 = (PrimesLogMessage) ddhVar.b;
                    dpzVar2.getClass();
                    ccsVar2.b = dpzVar2;
                    ccsVar2.a |= 1;
                    String[] strArr = new String[ccqVar.b.size()];
                    Iterator it2 = ccqVar.b.iterator();
                    while (it2.hasNext()) {
                        strArr[i] = ((SnapshotUploadTaskFactory) it2.next()).getClass().getName();
                        i++;
                    }
                    Intent intent = new Intent();
                    intent.setComponent(new ComponentName(ccqVar.a.getApplicationContext(), (Class<?>) LifeboatReceiver.class));
                    intent.setPackage(ccqVar.a.getApplicationContext().getPackageName());
                    intent.putExtra("Transmitters", strArr);
                    intent.putExtra("MetricSnapshot", ((PrimesLogMessage) ddhVar.h()).h());
                    ccqVar.a.sendBroadcast(intent);
                    return null;
                }
            }, czj.a));
        } catch (ExecutionException e) {
            Throwable cause = e.getCause();
            if (!(cause instanceof Error)) {
                throw new UncheckedExecutionException(cause);
            }
            throw new ExecutionError((Error) cause);
        }
    }
}
