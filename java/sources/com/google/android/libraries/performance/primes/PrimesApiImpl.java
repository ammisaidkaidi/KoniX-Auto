package com.google.android.libraries.performance.primes;

import java.util.Iterator;
import java.util.WeakHashMap;

/* compiled from: PG */
/* loaded from: classes.dex */
final class PrimesApiImpl implements PrimesLifecycleCallbackInterface {
    private static final FloggerLoggerFactory a = FloggerLoggerFactory.g("com/google/android/libraries/performance/primes/PrimesApiImpl");
    private final PrimesShutdownHookRegistry b;
    private final DaggerProviderInterface c;
    private final DaggerProviderInterface d;
    private final DaggerProviderInterface e;
    private final DaggerProviderInterface f;

    public PrimesApiImpl(PrimesShutdownHookRegistry bulVar, DaggerProviderInterface dnyVar, DaggerProviderInterface dnyVar2, DaggerProviderInterface dnyVar3, DaggerProviderInterface dnyVar4, GuavaOptional cocVar, CallerAppClassifier cvvVar, byte[] bArr) {
        this.b = bulVar;
        this.c = dnyVar;
        this.d = dnyVar2;
        this.e = dnyVar3;
        this.f = dnyVar4;
        if (!GoogleSignatureVerifier.h() && !cvvVar.a()) {
            String str = cvvVar.a;
            StringBuilder sb = new StringBuilder(String.valueOf(str).length() + 150);
            StaggeredGridLayoutParams.append("Primes init triggered from background in package: ");
            StaggeredGridLayoutParams.append(str);
            StaggeredGridLayoutParams.append(". If this is an existing error, please file a bug on the Primes team to whitelist your package name.");
            throw new IllegalStateException(StaggeredGridLayoutParams.toString());
        }
        if (((Boolean) cocVar.b(Boolean.FALSE)).booleanValue()) {
            return;
        }
        try {
            WeakHashMap weakHashMap = cnr.a;
            Iterator it = ((SetProviderFactory) dnyVar).a().iterator();
            while (it.hasNext()) {
                ((PrimesMetricServiceLifecycle) it.next()).u();
            }
        } catch (RuntimeException e) {
            ((ParameterizedLoggerApi) ((ParameterizedLoggerApi) a.c().g(ProtoFlagValueMessage)).h("com/google/android/libraries/performance/primes/PrimesApiImpl", "initialize", 123, "PrimesApiImpl.java")).n("Primes failed to initialize");
            this.b.a();
        }
    }

    @Override // defpackage.PrimesLifecycleCallbackInterface
    public final void a() {
        ((AbstractPrimesMetricService) this.d.a()).d();
    }

    @Override // defpackage.PrimesLifecycleCallbackInterface
    public final void b(PrimesMetricName btxVar) {
        ((TimerMetricServiceFactory_can) this.f).a().a(btxVar);
    }

    @Override // defpackage.PrimesLifecycleCallbackInterface
    public final void c() {
        ((NetworkMetricServiceImpl) this.e.a()).a();
    }

    @Override // defpackage.PrimesLifecycleCallbackInterface
    public final void d(PrimesMetricName btxVar) {
        ((NetworkMetricServiceImpl) this.e.a()).b(btxVar);
    }

    @Override // defpackage.PrimesLifecycleCallbackInterface
    public final void e(PrimesMetricName btxVar, int i) {
        ((TimerMetricServiceFactory_can) this.f).a().b(btxVar, i);
    }
}
