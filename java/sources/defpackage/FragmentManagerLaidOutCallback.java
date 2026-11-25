package defpackage;

import java.util.ArrayList;

/* compiled from: PG */
/* loaded from: classes.dex */
final class FragmentManagerLaidOutCallback implements FragmentManagerCallback {
    final int a;
    final /* synthetic */ FragmentManagerImpl b;

    public FragmentManagerLaidOutCallback(FragmentManagerImpl crVar, int i) {
        this.b = crVar;
        this.a = i;
    }

    @Override // defpackage.FragmentManagerCallback
    public final boolean f(ArrayList arrayList, ArrayList arrayList2) {
        return this.b.X(arrayList, arrayList2, this.a, 1);
    }
}
