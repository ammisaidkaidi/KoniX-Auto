package defpackage;

import android.content.Context;
import android.os.Bundle;
import android.view.View;
import android.view.ViewGroup;

/* compiled from: PG */
/* loaded from: classes.dex */
public final class ju {
    final int a;
    int b;
    int c;
    int d;
    ViewGroup e;
    View f;
    View g;
    public lo h;
    lk i;
    Context j;
    boolean k;
    boolean l;
    boolean m;
    boolean n = false;
    boolean o;
    Bundle p;

    public ju(int i) {
        this.a = i;
    }

    final void a(lo loVar) {
        lk lkVar;
        lo loVar2 = this.h;
        if (loVar == loVar2) {
            return;
        }
        if (loVar2 != null) {
            loVar2.m(this.i);
        }
        this.h = loVar;
        if (loVar == null || (lkVar = this.i) == null) {
            return;
        }
        loVar.g(lkVar);
    }
}
