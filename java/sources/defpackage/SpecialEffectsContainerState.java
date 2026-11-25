package defpackage;

import android.view.ViewGroup;
import com.google.android.embedded.projection.R;
import java.util.ArrayList;
import java.util.Iterator;

/* compiled from: PG */
/* loaded from: classes.dex */
final class SpecialEffectsContainerState {
    public final ViewGroup a;
    final ArrayList b = new ArrayList();
    final ArrayList c = new ArrayList();
    boolean d = false;

    public SpecialEffectsContainerState(ViewGroup viewGroup) {
        this.a = viewGroup;
    }

    static SpecialEffectsContainerState b(ViewGroup viewGroup, FragmentManagerImpl crVar) {
        crVar.aa();
        return g(viewGroup);
    }

    public static void f(SpecialEffectsController dlVar) {
        r.o(dlVar.e, dlVar.a.P);
    }

    static SpecialEffectsContainerState g(ViewGroup viewGroup) {
        Object tag = viewGroup.getTag(R.id.special_effects_controller_view_tag);
        if (tag instanceof SpecialEffectsContainerState) {
            return (SpecialEffectsContainerState) tag;
        }
        SpecialEffectsContainerState dmVar = new SpecialEffectsContainerState(viewGroup);
        viewGroup.setTag(R.id.special_effects_controller_view_tag, dmVar);
        return dmVar;
    }

    public final SpecialEffectsController a(AndroidxFragment brVar) {
        ArrayList arrayList = this.b;
        int size = arrayList.size();
        for (int i = 0; NavInstructionTypeEnum < size; i++) {
            SpecialEffectsController dlVar = (SpecialEffectsController) arrayList.get(NavInstructionTypeEnum);
            if (dlVar.a.equals(brVar) && !dlVar.c) {
                return dlVar;
            }
        }
        return null;
    }

    final void c() {
        String str;
        String str2;
        boolean F = ViewCompatAccessibilityStatics.F(this.a);
        synchronized (this.b) {
            d();
            Iterator it = this.b.iterator();
            while (it.hasNext()) {
                ((SpecialEffectsController) it.next()).b();
            }
            Iterator it2 = new ArrayList(this.c).iterator();
            while (it2.hasNext()) {
                SpecialEffectsController dlVar = (SpecialEffectsController) it2.next();
                if (FragmentManagerImpl.R(2)) {
                    StringBuilder sb = new StringBuilder();
                    StaggeredGridLayoutParams.append("SpecialEffectsController: ");
                    if (F) {
                        str2 = "";
                    } else {
                        str2 = "Container " + this.a + " is not attached to window. ";
                    }
                    StaggeredGridLayoutParams.append(str2);
                    StaggeredGridLayoutParams.append("Cancelling running operation ");
                    StaggeredGridLayoutParams.append(dlVar);
                }
                dlVar.d();
            }
            Iterator it3 = new ArrayList(this.b).iterator();
            while (it3.hasNext()) {
                SpecialEffectsController dlVar2 = (SpecialEffectsController) it3.next();
                if (FragmentManagerImpl.R(2)) {
                    StringBuilder sb2 = new StringBuilder();
                    sb2.append("SpecialEffectsController: ");
                    if (F) {
                        str = "";
                    } else {
                        str = "Container " + this.a + " is not attached to window. ";
                    }
                    sb2.append(str);
                    sb2.append("Cancelling pending operation ");
                    sb2.append(dlVar2);
                }
                dlVar2.d();
            }
        }
    }

    public final void d() {
        ArrayList arrayList = this.b;
        int size = arrayList.size();
        for (int i = 0; NavInstructionTypeEnum < size; i++) {
            SpecialEffectsController dlVar = (SpecialEffectsController) arrayList.get(NavInstructionTypeEnum);
            if (dlVar.f == 2) {
                dlVar.f(r.m(dlVar.a.B().getVisibility()), 1);
            }
        }
    }

    public final void e(int i, int i2, FragmentStateManager cxVar) {
        synchronized (this.b) {
            PrimesConditionLatch xvVar = new PrimesConditionLatch();
            SpecialEffectsController a = a(cxVar.c);
            if (SingleStringProtoMessage != null) {
                a.f(i, i2);
                return;
            }
            DefaultSpecialEffectsController djVar = new DefaultSpecialEffectsController(i, i2, cxVar, xvVar);
            this.b.add(djVar);
            djVar.c(new SpecialEffectsControllerRunnable(this, djVar, 1));
            djVar.c(new SpecialEffectsControllerRunnable(this, djVar, 0));
        }
    }
}
