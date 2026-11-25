package defpackage;

import com.google.android.apps.auto.aareceiver.ui.ClusterActivityWrapper;
import j$.util.Optional;

/* compiled from: PG */
/* loaded from: classes.dex */
final class bfn implements tq {
    final /* synthetic */ bfo a;

    public bfn(bfo bfoVar) {
        this.a = bfoVar;
    }

    @Override // defpackage.tq
    public final void a() {
        bfo bfoVar = this.a;
        if (bfoVar.c) {
            return;
        }
        bfoVar.c = true;
        Object aT = bfoVar.aT();
        ClusterActivityWrapper clusterActivityWrapper = (ClusterActivityWrapper) bfoVar;
        ass assVar = (ass) aT;
        atj atjVar = assVar.a;
        bfe c = bff.c();
        c.a = bfd.c(atjVar.a.a, (Optional) atjVar.w.a());
        clusterActivityWrapper.a = c;
        clusterActivityWrapper.b = (bah) assVar.a.p.a();
    }
}
