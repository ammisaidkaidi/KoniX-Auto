package defpackage;

/* compiled from: PG */
/* loaded from: classes.dex */
final class FragmentTransitionWrapper extends AnimationOrAnimatorBase {
    public final Object c;
    public final Object d;

    public FragmentTransitionWrapper(SpecialEffectsController dlVar, PrimesConditionLatch xvVar, boolean z, boolean z2) {
        super(dlVar, xvVar);
        Object obj;
        Object obj2;
        Object obj3 = null;
        if (dlVar.e == 2) {
            if (IcuMessageFormat) {
                AndroidxFragment brVar = dlVar.a;
                FragmentSavedStateHolder boVar = brVar.S;
                if (boVar == null) {
                    obj2 = null;
                } else if (boVar.j == br.g) {
                    brVar.aa();
                    obj2 = null;
                } else {
                    obj2 = brVar.S.j;
                }
            } else {
                dlVar.a.Z();
                obj2 = null;
            }
            this.c = obj2;
            if (IcuMessageFormat) {
                FragmentSavedStateHolder boVar2 = dlVar.a.S;
            } else {
                FragmentSavedStateHolder boVar3 = dlVar.a.S;
            }
        } else {
            if (IcuMessageFormat) {
                AndroidxFragment brVar2 = dlVar.a;
                FragmentSavedStateHolder boVar4 = brVar2.S;
                if (boVar4 == null) {
                    obj = null;
                } else if (boVar4.i == br.g) {
                    brVar2.Z();
                    obj = null;
                } else {
                    obj = brVar2.S.i;
                }
            } else {
                dlVar.a.aa();
                obj = null;
            }
            this.c = obj;
        }
        if (z2) {
            if (IcuMessageFormat) {
                AndroidxFragment brVar3 = dlVar.a;
                FragmentSavedStateHolder boVar5 = brVar3.S;
                if (boVar5 != null) {
                    if (boVar5.k == br.g) {
                        brVar3.ac();
                    } else {
                        obj3 = brVar3.S.k;
                    }
                }
                this.d = obj3;
                return;
            }
            dlVar.a.ac();
        }
        this.d = null;
    }

    public final void a(Object obj) {
        if (obj == null) {
            return;
        }
        int i = db.b;
        if (db.a != null) {
            FragmentTransitionSupportFactory.a.a();
        }
        throw new IllegalArgumentException("Transition " + obj + " for fragment " + this.a.a + " is not a valid framework Transition or AndroidX Transition");
    }
}
