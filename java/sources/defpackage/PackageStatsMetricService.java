package defpackage;

import android.app.Activity;
import android.app.Application;
import android.content.Context;
import android.content.SharedPreferences;
import android.content.pm.PackageStats;
import android.os.SystemClock;
import java.util.concurrent.Executor;
import java.util.concurrent.TimeUnit;

/* compiled from: PG */
/* loaded from: classes.dex */
public final class PackageStatsMetricService extends PrimesConfigHolder implements ActivityEventListenerC, bwq {
    public static final long a = TimeUnit.HOURS.toMillis(12);
    public final MetricDispatcherImpl b;
    public final Application c;
    public final DaggerInternalFactoryMarker d;
    public final PackageStatsCaptureDeps e;
    private final PrimesLifecycleRegistrar f;
    private final Executor g;

    public PackageStatsMetricService(MetricDispatcherAssistedFactory bwoVar, Context context, PrimesLifecycleRegistrar bvhVar, Executor executor, DaggerInternalFactoryMarker dgzVar, PackageStatsCaptureDeps cbsVar, DaggerProviderInterface dnyVar) {
        this.b = bwoVar.a(executor, dgzVar, dnyVar);
        this.g = executor;
        this.c = (Application) context;
        this.d = dgzVar;
        this.e = cbsVar;
        this.f = bvhVar;
    }

    @Override // defpackage.ActivityEventListenerC
    public final void c(Activity activity) {
        this.f.b(this);
        ProjectionIntentHelper.m(new FutureSupplier() { // from class: cal
            @Override // defpackage.FutureSupplier
            public final ListenableFuture a() {
                PackageStatsMetricService camVar = PackageStatsMetricService.this;
                if (((StorageConfigurations) camVar.d.a()).a) {
                    return dad.a;
                }
                if (!DirectBootUtils.c(camVar.c)) {
                    return dad.a;
                }
                GoogleSignatureVerifier.e();
                PackageStatsCaptureDeps cbsVar = camVar.e;
                long j = cam.a;
                GoogleSignatureVerifier.e();
                if (DirectBootUtils.c(cbsVar.a)) {
                    long j2 = DirectBootUtils.c(cbsVar.a) ? ((SharedPreferences) cbsVar.b.a()).getLong("primes.packageMetric.lastSendTime", -1L) : -1L;
                    long elapsedRealtime = SystemClock.elapsedRealtime();
                    if (elapsedRealtime < j2) {
                        ((SharedPreferences) cbsVar.b.a()).edit().remove("primes.packageMetric.lastSendTime").commit();
                        j2 = -1;
                    }
                    if (j2 != -1 && elapsedRealtime <= j2 + j) {
                        return dad.a;
                    }
                }
                if (!camVar.b.c(null)) {
                    return dad.a;
                }
                Application application = camVar.c;
                GoogleSignatureVerifier.e();
                PackageStats a2 = PackageStatsCaptureO.a(application);
                if (a2 == null) {
                    return ProjectionIntentHelper.i(new IllegalStateException("PackageStats capture failed."));
                }
                ProtoMsgHoldingMessageAndBool n = ProtoRootAggregateMessage.y.n();
                ProtoMsgHoldingMessageAndBool n2 = ProtoMessageNineLongFields.k.n();
                long j3 = a2.cacheSize;
                if (n2.c) {
                    n2.k();
                    n2.c = false;
                }
                ProtoMessageNineLongFields dpsVar = (ProtoMessageNineLongFields) n2.b;
                dpsVar.a |= 1;
                dpsVar.b = j3;
                long j4 = a2.codeSize;
                if (n2.c) {
                    n2.k();
                    n2.c = false;
                }
                ProtoMessageNineLongFields dpsVar2 = (ProtoMessageNineLongFields) n2.b;
                dpsVar2.a |= 2;
                dpsVar2.c = j4;
                long j5 = a2.dataSize;
                if (n2.c) {
                    n2.k();
                    n2.c = false;
                }
                ProtoMessageNineLongFields dpsVar3 = (ProtoMessageNineLongFields) n2.b;
                dpsVar3.a |= 4;
                dpsVar3.d = j5;
                long j6 = a2.externalCacheSize;
                if (n2.c) {
                    n2.k();
                    n2.c = false;
                }
                ProtoMessageNineLongFields dpsVar4 = (ProtoMessageNineLongFields) n2.b;
                dpsVar4.a |= 8;
                dpsVar4.e = j6;
                long j7 = a2.externalCodeSize;
                if (n2.c) {
                    n2.k();
                    n2.c = false;
                }
                ProtoMessageNineLongFields dpsVar5 = (ProtoMessageNineLongFields) n2.b;
                dpsVar5.a |= 16;
                dpsVar5.f = j7;
                long j8 = a2.externalDataSize;
                if (n2.c) {
                    n2.k();
                    n2.c = false;
                }
                ProtoMessageNineLongFields dpsVar6 = (ProtoMessageNineLongFields) n2.b;
                dpsVar6.a |= 32;
                dpsVar6.g = j8;
                long j9 = a2.externalMediaSize;
                if (n2.c) {
                    n2.k();
                    n2.c = false;
                }
                ProtoMessageNineLongFields dpsVar7 = (ProtoMessageNineLongFields) n2.b;
                dpsVar7.a |= 64;
                dpsVar7.h = j9;
                long j10 = a2.externalObbSize;
                if (n2.c) {
                    n2.k();
                    n2.c = false;
                }
                ProtoMessageNineLongFields dpsVar8 = (ProtoMessageNineLongFields) n2.b;
                dpsVar8.a |= 128;
                dpsVar8.i = j10;
                ProtoMessageNineLongFields dpsVar9 = (ProtoMessageNineLongFields) n2.h();
                ProtoMsgHoldingMessageAndBool ddfVar = (ProtoMsgHoldingMessageAndBool) dpsVar9.E(5);
                ddfVar.n(dpsVar9);
                GuavaOptional cocVar = ((StorageConfigurations) camVar.d.a()).b;
                if (n.c) {
                    n.k();
                    n.c = false;
                }
                ProtoRootAggregateMessage dpzVar = (ProtoRootAggregateMessage) n.b;
                ProtoMessageNineLongFields dpsVar10 = (ProtoMessageNineLongFields) ddfVar.h();
                dpsVar10.getClass();
                dpzVar.j = dpsVar10;
                dpzVar.a |= 256;
                PackageStatsCaptureDeps cbsVar2 = camVar.e;
                if (DirectBootUtils.c(cbsVar2.a)) {
                    ((SharedPreferences) cbsVar2.b.a()).edit().putLong("primes.packageMetric.lastSendTime", SystemClock.elapsedRealtime()).commit();
                }
                MetricDispatcherImpl bwnVar = camVar.b;
                PrimesMetricBuilder a3 = PrimesMetric.a();
                a3.d((ProtoRootAggregateMessage) n.h());
                return bwnVar.b(a3.a());
            }
        }, this.g);
    }

    @Override // defpackage.PrimesMetricServiceLifecycle
    public final void u() {
        this.f.a(this);
    }
}
