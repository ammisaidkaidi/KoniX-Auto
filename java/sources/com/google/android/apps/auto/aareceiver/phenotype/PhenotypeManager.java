package com.google.android.apps.auto.aareceiver.phenotype;

import android.content.Context;
import android.content.pm.PackageManager;
import android.net.ConnectivityManager;
import android.os.UserManager;
import j$.util.Optional;
import java.util.concurrent.Executor;
import java.util.concurrent.atomic.AtomicBoolean;

/* compiled from: PG */
/* loaded from: classes.dex */
public final class PhenotypeManager {
    public static final FloggerLoggerFactory a = FloggerLoggerFactory.g("com/google/android/apps/auto/aareceiver/phenotype/PhenotypeManager");
    static final String[] b = {"AARECEIVER_ANDROID_PRIMES"};
    public final Executor c;
    public final PhenotypeDatabaseApi d;
    public final Optional e;
    public final ConnectivityManager f;
    public ConnectivityManager.NetworkCallback g;
    public final AtomicBoolean h = new AtomicBoolean(false);
    private final Context i;
    private final PackageManager j;
    private final Optional k;
    private final UserManager l;

    public PhenotypeManager(Context context, PhenotypeDatabaseApi ceoVar, Optional optional, ListeningScheduledExecutorService daiVar, ConnectivityManager connectivityManager, PackageManager packageManager, UserManager userManager, Optional optional2) {
        this.i = context;
        this.d = ceoVar;
        this.e = optional;
        this.c = daiVar;
        this.f = connectivityManager;
        this.j = packageManager;
        this.l = userManager;
        this.k = optional2;
        PhenotypeFlagBase.f(context);
    }

    public final void a() {
        Optional empty;
        ListenableFuture d;
        if (this.h.get()) {
            return;
        }
        if (!this.l.isUserUnlocked()) {
            ((ParameterizedLoggerApi) a.c().h("com/google/android/apps/auto/aareceiver/phenotype/PhenotypeManager", "initialRegisterAndSync", 103, "PhenotypeManager.java")).n("Still in direct boot mode. Waiting for user unlock...");
            return;
        }
        if (this.h.getAndSet(true)) {
            d = dad.a;
        } else {
            try {
                empty = Optional.ofNullable(this.j.getPackageInfo(this.i.getPackageName(), 0));
            } catch (PackageManager.NameNotFoundException e) {
                ((ParameterizedLoggerApi) ((ParameterizedLoggerApi) a.b().g(ProtoFlagValueMessage)).h("com/google/android/apps/auto/aareceiver/phenotype/PhenotypeManager", "getPackageInfo", 211, "PhenotypeManager.java")).n("Unknown package name from application context.");
                empty = Optional.empty();
            }
            int i = -1;
            int intValue = ((Integer) empty.map(awq.e).orElse(-1)).intValue();
            if (intValue == -1) {
                ((ParameterizedLoggerApi) a.b().h("com/google/android/apps/auto/aareceiver/phenotype/PhenotypeManager", "registerOnce", 161, "PhenotypeManager.java")).n("Invalid version code");
            } else {
                i = intValue;
            }
            d = this.d.d(i, b, ((GoogleAuthServiceBinder) this.k.orElse(bhk.b)).h());
        }
        ProjectionIntentHelper.p(d, new PhenotypeManagerFutureCallback(this, 1), this.c);
    }
}
