package defpackage;

import java.util.concurrent.Executor;

/* compiled from: PG */
/* loaded from: classes.dex */
final class cad {
    public static final csz a = csz.g("com/google/android/libraries/performance/primes/metrics/startup/StartupMetricRecordingService");
    public final bwn b;
    public final dgz c;
    public final dai d;

    public cad(bwo bwoVar, dai daiVar, Executor executor, dgz dgzVar, dny dnyVar) {
        this.c = dgzVar;
        this.d = daiVar;
        this.b = bwoVar.a(executor, dgzVar, dnyVar);
    }
}
