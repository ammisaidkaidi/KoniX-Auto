package defpackage;

import android.app.Activity;
import android.content.res.Resources;
import android.os.Bundle;
import android.os.Parcelable;
import android.util.SparseArray;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewParent;
import com.google.android.embedded.projection.R;
import defpackage.AndroidxFragment;
import defpackage.LifecycleEvent;
import defpackage.LifecycleOwner;
import java.util.ArrayList;
import java.util.Iterator;

/* compiled from: PG */
/* loaded from: classes.dex */
final class FragmentStateManager {
    public final FragmentLifecycleCallbacksRegistry a;
    public final FragmentStore b;
    public final AndroidxFragment c;
    private boolean e = false;
    public int d = -1;

    public FragmentStateManager(FragmentLifecycleCallbacksRegistry cgVar, FragmentStore cyVar, AndroidxFragment brVar) {
        this.a = cgVar;
        this.b = cyVar;
        this.c = brVar;
    }

    public FragmentStateManager(FragmentLifecycleCallbacksRegistry cgVar, FragmentStore cyVar, AndroidxFragment brVar, BackStackStateParcelable cvVar) {
        this.a = cgVar;
        this.b = cyVar;
        this.c = brVar;
        brVar.j = null;
        brVar.k = null;
        brVar.z = 0;
        brVar.w = false;
        brVar.s = false;
        AndroidxFragment brVar2 = brVar.o;
        brVar.p = brVar2 != null ? brVar2.m : null;
        brVar.o = null;
        Bundle bundle = cvVar.m;
        if (bundle != null) {
            brVar.i = bundle;
        } else {
            brVar.i = new Bundle();
        }
    }

    final void a() {
        View view;
        View view2;
        FragmentStore cyVar = this.b;
        AndroidxFragment brVar = this.c;
        ViewGroup viewGroup = brVar.O;
        int i = -1;
        if (viewGroup != null) {
            int indexOf = cyVar.a.indexOf(brVar);
            int i2 = indexOf - 1;
            while (true) {
                if (i2 < 0) {
                    while (true) {
                        indexOf++;
                        if (indexOf >= cyVar.a.size()) {
                            break;
                        }
                        AndroidxFragment brVar2 = (AndroidxFragment) cyVar.a.get(indexOf);
                        if (brVar2.O == viewGroup && (view = brVar2.P) != null) {
                            i = viewGroup.indexOfChild(view);
                            break;
                        }
                    }
                } else {
                    AndroidxFragment brVar3 = (AndroidxFragment) cyVar.a.get(i2);
                    if (brVar3.O == viewGroup && (view2 = brVar3.P) != null) {
                        i = viewGroup.indexOfChild(view2) + 1;
                        break;
                    }
                    i2--;
                }
            }
        }
        AndroidxFragment brVar4 = this.c;
        brVar4.O.addView(brVar4.P, i);
    }

    final void b() {
        String str;
        if (this.c.v) {
            return;
        }
        if (FragmentManagerImpl.R(3)) {
            StringBuilder sb = new StringBuilder();
            StaggeredGridLayoutParams.append("moveto CREATE_VIEW: ");
            StaggeredGridLayoutParams.append(this.c);
        }
        AndroidxFragment brVar = this.c;
        Bundle bundle = brVar.i;
        LayoutInflater ah = brVar.ah();
        AndroidxFragment brVar2 = this.c;
        ViewGroup viewGroup = brVar2.O;
        if (viewGroup == null) {
            int i = brVar2.F;
            if (NavInstructionTypeEnum == 0) {
                viewGroup = null;
            } else {
                if (NavInstructionTypeEnum == -1) {
                    throw new IllegalArgumentException("Cannot create fragment " + this.c + " for a container view with no id");
                }
                viewGroup = (ViewGroup) brVar2.A.k.a(NavInstructionTypeEnum);
                if (viewGroup == null) {
                    AndroidxFragment brVar3 = this.c;
                    if (!brVar3.x) {
                        try {
                            str = brVar3.t().getResourceName(this.c.F);
                        } catch (Resources.NotFoundException e) {
                            str = "unknown";
                        }
                        throw new IllegalArgumentException("No view found for id 0x" + Integer.toHexString(this.c.F) + " (" + str + ") for fragment " + this.c);
                    }
                } else if (!(viewGroup instanceof FragmentContainerView)) {
                    FragmentStrictModePolicyHandler.d(this.c, viewGroup);
                }
            }
        }
        AndroidxFragment brVar4 = this.c;
        brVar4.O = viewGroup;
        brVar4.k(ah, viewGroup, brVar4.i);
        View view = this.c.P;
        if (view != null) {
            view.setSaveFromParentEnabled(false);
            AndroidxFragment brVar5 = this.c;
            brVar5.P.setTag(R.id.fragment_container_view_tag, brVar5);
            if (viewGroup != null) {
                a();
            }
            AndroidxFragment brVar6 = this.c;
            if (brVar6.H) {
                brVar6.P.setVisibility(8);
            }
            if (ViewCompatAccessibilityStatics.F(this.c.P)) {
                ViewCompatAccessibilityStatics.t(this.c.P);
            } else {
                View view2 = this.c.P;
                view2.addOnAttachStateChangeListener(new FragmentViewAttachListener_cw(view2));
            }
            this.c.N();
            FragmentLifecycleCallbacksRegistry cgVar = this.a;
            AndroidxFragment brVar7 = this.c;
            cgVar.m(brVar7, brVar7.P, brVar7.i, false);
            int visibility = this.c.P.getVisibility();
            this.c.u().l = this.c.P.getAlpha();
            AndroidxFragment brVar8 = this.c;
            if (brVar8.O != null && visibility == 0) {
                View findFocus = brVar8.P.findFocus();
                if (findFocus != null) {
                    this.c.R(findFocus);
                    if (FragmentManagerImpl.R(2)) {
                        StringBuilder sb2 = new StringBuilder();
                        sb2.append("requestFocus: Saved focused view ");
                        sb2.append(findFocus);
                        sb2.append(" for Fragment ");
                        sb2.append(this.c);
                    }
                }
                this.c.P.setAlpha(0.0f);
            }
        }
        this.c.h = 2;
    }

    final void c() {
        AndroidxFragment brVar = this.c;
        if (brVar.v && brVar.w && !brVar.y) {
            if (FragmentManagerImpl.R(3)) {
                StringBuilder sb = new StringBuilder();
                StaggeredGridLayoutParams.append("moveto CREATE_VIEW: ");
                StaggeredGridLayoutParams.append(this.c);
            }
            AndroidxFragment brVar2 = this.c;
            Bundle bundle = brVar2.i;
            brVar2.k(brVar2.ah(), null, this.c.i);
            View view = this.c.P;
            if (view != null) {
                view.setSaveFromParentEnabled(false);
                AndroidxFragment brVar3 = this.c;
                brVar3.P.setTag(R.id.fragment_container_view_tag, brVar3);
                AndroidxFragment brVar4 = this.c;
                if (brVar4.H) {
                    brVar4.P.setVisibility(8);
                }
                this.c.N();
                FragmentLifecycleCallbacksRegistry cgVar = this.a;
                AndroidxFragment brVar5 = this.c;
                cgVar.m(brVar5, brVar5.P, brVar5.i, false);
                this.c.h = 2;
            }
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:149:0x077d, code lost:
    
        if (r6 != false) goto L297;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    final void d() {
        int i;
        int min;
        SpecialEffectsController dlVar;
        ViewGroup viewGroup;
        FragmentStateManager cxVar;
        ViewGroup viewGroup2;
        AndroidxFragment a;
        View view;
        ViewGroup viewGroup3;
        if (this.e) {
            if (FragmentManagerImpl.R(2)) {
                StringBuilder sb = new StringBuilder();
                StaggeredGridLayoutParams.append("Ignoring re-entrant call ComponentActivityLifecycleInterface moveToExpectedState() for ");
                StaggeredGridLayoutParams.append(this.c);
                return;
            }
            return;
        }
        int i2 = 0;
        try {
            this.e = true;
            boolean z = false;
            while (true) {
                AndroidxFragment brVar = this.c;
                if (brVar.A == null) {
                    min = brVar.h;
                } else {
                    int i3 = this.d;
                    LifecycleState zmVar = zm.DESTROYED;
                    switch (brVar.X.ordinal()) {
                        case 1:
                            i3 = Math.min(i3, i2);
                            break;
                        case 2:
                            i3 = Math.min(i3, 1);
                            break;
                        case 3:
                            i3 = Math.min(i3, 5);
                            break;
                        case 4:
                            break;
                        default:
                            i3 = Math.min(i3, -1);
                            break;
                    }
                    AndroidxFragment brVar2 = this.c;
                    if (brVar2.v) {
                        if (brVar2.w) {
                            i3 = Math.max(this.d, 2);
                            View view2 = this.c.P;
                            if (view2 != null && view2.getParent() == null) {
                                i3 = Math.min(i3, 2);
                            }
                        } else {
                            i3 = this.ProtoMsgIntStringInt < 4 ? Math.min(i3, brVar2.h) : Math.min(i3, 1);
                        }
                    }
                    if (!this.c.s) {
                        i3 = Math.min(i3, 1);
                    }
                    AndroidxFragment brVar3 = this.c;
                    ViewGroup viewGroup4 = brVar3.O;
                    if (viewGroup4 != null) {
                        SpecialEffectsContainerState b = SpecialEffectsContainerState.b(viewGroup4, brVar3.A());
                        SpecialEffectsController a2 = b.a(this.c);
                        i = a2 != null ? a2.f : 0;
                        AndroidxFragment brVar4 = this.c;
                        ArrayList arrayList = b.c;
                        int size = arrayList.size();
                        int i4 = 0;
                        while (true) {
                            if (i4 < size) {
                                dlVar = (SpecialEffectsController) arrayList.get(i4);
                                if (!dlVar.a.equals(brVar4) || dlVar.c) {
                                    i4++;
                                }
                            } else {
                                dlVar = null;
                            }
                        }
                        if (dlVar != null && (NavInstructionTypeEnum == 0 || i == 1)) {
                            i = dlVar.f;
                        }
                    } else {
                        i = 0;
                    }
                    if (NavInstructionTypeEnum == 2) {
                        i3 = Math.min(i3, 6);
                    } else if (NavInstructionTypeEnum == 3) {
                        i3 = Math.max(i3, 3);
                    } else {
                        AndroidxFragment brVar5 = this.c;
                        if (brVar5.t) {
                            i3 = brVar5.Y() ? Math.min(i3, 1) : Math.min(i3, -1);
                        }
                    }
                    AndroidxFragment brVar6 = this.c;
                    min = (!brVar6.Q || brVar6.h >= 5) ? i3 : Math.min(i3, 4);
                    if (FragmentManagerImpl.R(2)) {
                        StringBuilder sb2 = new StringBuilder();
                        sb2.append("computeExpectedState() of ");
                        sb2.append(min);
                        sb2.append(" for ");
                        sb2.append(this.c);
                    }
                }
                AndroidxFragment brVar7 = this.c;
                int i5 = brVar7.h;
                if (min == i5) {
                    if (!z && i5 == -1 && brVar7.t && !brVar7.Y()) {
                        boolean z2 = this.c.u;
                        if (FragmentManagerImpl.R(3)) {
                            StringBuilder sb3 = new StringBuilder();
                            sb3.append("Cleaning up state of never attached fragment: ");
                            sb3.append(this.c);
                        }
                        this.b.d.a(this.c);
                        this.b.j(this);
                        if (FragmentManagerImpl.R(3)) {
                            StringBuilder sb4 = new StringBuilder();
                            sb4.append("initState called for fragment: ");
                            sb4.append(this.c);
                        }
                        this.c.G();
                    }
                    AndroidxFragment brVar8 = this.c;
                    if (brVar8.T) {
                        if (brVar8.P != null && (viewGroup = brVar8.O) != null) {
                            SpecialEffectsContainerState b2 = SpecialEffectsContainerState.b(viewGroup, brVar8.A());
                            if (this.c.H) {
                                if (FragmentManagerImpl.R(2)) {
                                    StringBuilder sb5 = new StringBuilder();
                                    sb5.append("SpecialEffectsController: Enqueuing hide operation for fragment ");
                                    sb5.append(this.c);
                                }
                                b2.e(3, 1, this);
                            } else {
                                if (FragmentManagerImpl.R(2)) {
                                    StringBuilder sb6 = new StringBuilder();
                                    sb6.append("SpecialEffectsController: Enqueuing show operation for fragment ");
                                    sb6.append(this.c);
                                }
                                b2.e(2, 1, this);
                            }
                        }
                        AndroidxFragment brVar9 = this.c;
                        FragmentManagerImpl crVar = brVar9.A;
                        if (crVar != null && brVar9.s && FragmentManagerImpl.V(brVar9)) {
                            crVar.o = true;
                        }
                        AndroidxFragment brVar10 = this.c;
                        brVar10.T = false;
                        boolean z3 = brVar10.H;
                    }
                    return;
                }
                if (min > i5) {
                    switch (i5 + 1) {
                        case 0:
                            if (FragmentManagerImpl.R(3)) {
                                StringBuilder sb7 = new StringBuilder();
                                sb7.append("moveto ATTACHED: ");
                                sb7.append(this.c);
                            }
                            AndroidxFragment brVar11 = this.c;
                            AndroidxFragment brVar12 = brVar11.o;
                            if (brVar12 != null) {
                                FragmentStateManager d = this.b.d(brVar12.m);
                                if (ProtoMsgIntStringInt == null) {
                                    throw new IllegalStateException("Fragment " + this.c + " declared target fragment " + this.c.o + " that does not belong to this FragmentManager!");
                                }
                                AndroidxFragment brVar13 = this.c;
                                brVar13.p = brVar13.o.m;
                                brVar13.o = null;
                                cxVar = d;
                            } else {
                                String str = brVar11.p;
                                if (str != null) {
                                    cxVar = this.b.d(str);
                                    if (cxVar == null) {
                                        throw new IllegalStateException("Fragment " + this.c + " declared target fragment " + this.c.p + " that does not belong to this FragmentManager!");
                                    }
                                } else {
                                    cxVar = null;
                                }
                            }
                            if (cxVar != null) {
                                cxVar.d();
                            }
                            AndroidxFragment brVar14 = this.c;
                            FragmentManagerImpl crVar2 = brVar14.A;
                            brVar14.B = crVar2.j;
                            brVar14.D = crVar2.l;
                            this.a.g(brVar14, false);
                            AndroidxFragment brVar15 = this.c;
                            ArrayList arrayList2 = brVar15.ab;
                            int size2 = arrayList2.size();
                            for (int i6 = 0; i6 < size2; i6++) {
                                ((FragmentFactoryBase) arrayList2.get(i6)).a();
                            }
                            brVar15.ab.clear();
                            brVar15.C.k(brVar15.B, brVar15.aL(), brVar15);
                            brVar15.h = 0;
                            brVar15.N = false;
                            brVar15.aR(brVar15.B.c);
                            if (!brVar15.N) {
                                throw new OpaqueRuntimeException("Fragment " + brVar15 + " did not call through to super.onAttach()");
                            }
                            Iterator it = brVar15.A.h.iterator();
                            while (it.hasNext()) {
                                ((FragmentContainerMarker) it.next()).c();
                            }
                            FragmentManagerImpl crVar3 = brVar15.C;
                            crVar3.p = false;
                            crVar3.q = false;
                            crVar3.s.g = false;
                            crVar3.z(0);
                            this.a.b(this.c, false);
                            i2 = 0;
                            z = true;
                            continue;
                        case 1:
                            if (FragmentManagerImpl.R(3)) {
                                StringBuilder sb8 = new StringBuilder();
                                sb8.append("moveto CREATED: ");
                                sb8.append(this.c);
                            }
                            AndroidxFragment brVar16 = this.c;
                            if (!brVar16.V) {
                                this.a.h(brVar16, brVar16.i, false);
                                final AndroidxFragment brVar17 = this.c;
                                Bundle bundle = brVar17.i;
                                brVar17.C.G();
                                brVar17.h = 1;
                                brVar17.N = false;
                                brVar17.ac.b(new DefaultLifecycleObserverInterface() { // from class: android.support.v4.app.Fragment$5
                                    @Override // defpackage.DefaultLifecycleObserverInterface
                                    public final void a(LifecycleOwner zqVar, LifecycleEvent zlVar) {
                                        View view3;
                                        if (zlVar != zl.ON_STOP || (view3 = AndroidxFragment.this.P) == null) {
                                            return;
                                        }
                                        view3.cancelPendingInputEvents();
                                    }
                                });
                                brVar17.aa.b(bundle);
                                brVar17.d(bundle);
                                brVar17.V = true;
                                if (!brVar17.N) {
                                    throw new OpaqueRuntimeException("Fragment " + brVar17 + " did not call through to super.onCreate()");
                                }
                                brVar17.ac.c(zl.ON_CREATE);
                                FragmentLifecycleCallbacksRegistry cgVar = this.a;
                                AndroidxFragment brVar18 = this.c;
                                cgVar.c(brVar18, brVar18.i, false);
                                i2 = 0;
                                z = true;
                                break;
                            } else {
                                brVar16.O(brVar16.i);
                                this.c.h = 1;
                                i2 = 0;
                                z = true;
                                continue;
                            }
                        case 2:
                            c();
                            b();
                            break;
                        case 3:
                            if (FragmentManagerImpl.R(3)) {
                                StringBuilder sb9 = new StringBuilder();
                                sb9.append("moveto ACTIVITY_CREATED: ");
                                sb9.append(this.c);
                            }
                            AndroidxFragment brVar19 = this.c;
                            Bundle bundle2 = brVar19.i;
                            brVar19.C.G();
                            brVar19.h = 3;
                            brVar19.N = false;
                            brVar19.N = true;
                            if (FragmentManagerImpl.R(3)) {
                                StringBuilder sb10 = new StringBuilder();
                                sb10.append("moveto RESTORE_VIEW_STATE: ");
                                sb10.append(brVar19);
                            }
                            View view3 = brVar19.P;
                            if (view3 != null) {
                                Bundle bundle3 = brVar19.i;
                                SparseArray<Parcelable> sparseArray = brVar19.j;
                                if (sparseArray != null) {
                                    view3.restoreHierarchyState(sparseArray);
                                    brVar19.j = null;
                                }
                                if (brVar19.P != null) {
                                    brVar19.Y.a.b(brVar19.k);
                                    brVar19.k = null;
                                }
                                brVar19.N = false;
                                brVar19.j(bundle3);
                                if (!brVar19.N) {
                                    throw new OpaqueRuntimeException("Fragment " + brVar19 + " did not call through to super.onViewStateRestored()");
                                }
                                if (brVar19.P != null) {
                                    brVar19.Y.a(zl.ON_CREATE);
                                }
                            }
                            brVar19.i = null;
                            brVar19.C.n();
                            FragmentLifecycleCallbacksRegistry cgVar2 = this.a;
                            AndroidxFragment brVar20 = this.c;
                            cgVar2.a(brVar20, brVar20.i, false);
                            i2 = 0;
                            z = true;
                            continue;
                        case 4:
                            if (brVar7.P != null && (viewGroup2 = brVar7.O) != null) {
                                SpecialEffectsContainerState b3 = SpecialEffectsContainerState.b(viewGroup2, brVar7.A());
                                int m = r.m(this.c.P.getVisibility());
                                if (FragmentManagerImpl.R(2)) {
                                    StringBuilder sb11 = new StringBuilder();
                                    sb11.append("SpecialEffectsController: Enqueuing add operation for fragment ");
                                    sb11.append(this.c);
                                }
                                b3.e(m, 2, this);
                            }
                            this.c.h = 4;
                            i2 = 0;
                            z = true;
                            continue;
                        case 5:
                            if (FragmentManagerImpl.R(3)) {
                                StringBuilder sb12 = new StringBuilder();
                                sb12.append("moveto STARTED: ");
                                sb12.append(this.c);
                            }
                            AndroidxFragment brVar21 = this.c;
                            brVar21.C.G();
                            brVar21.C.Z(true);
                            brVar21.h = 5;
                            brVar21.N = false;
                            brVar21.h();
                            if (!brVar21.N) {
                                throw new OpaqueRuntimeException("Fragment " + brVar21 + " did not call through to super.onStart()");
                            }
                            brVar21.ac.c(zl.ON_START);
                            if (brVar21.P != null) {
                                brVar21.Y.a(zl.ON_START);
                            }
                            brVar21.C.y();
                            this.a.k(this.c, false);
                            i2 = 0;
                            z = true;
                            continue;
                        case 6:
                            brVar7.h = 6;
                            i2 = 0;
                            z = true;
                            continue;
                        case 7:
                            if (FragmentManagerImpl.R(3)) {
                                StringBuilder sb13 = new StringBuilder();
                                sb13.append("moveto RESUMED: ");
                                sb13.append(this.c);
                            }
                            AndroidxFragment brVar22 = this.c;
                            FragmentSavedStateHolder boVar = brVar22.S;
                            View view4 = boVar == null ? null : boVar.m;
                            if (view4 != null) {
                                if (view4 != brVar22.P) {
                                    for (ViewParent parent = view4.getParent(); parent != null; parent = parent.getParent()) {
                                        if (parent != this.c.P) {
                                        }
                                    }
                                }
                                boolean requestFocus = view4.requestFocus();
                                if (FragmentManagerImpl.R(2)) {
                                    StringBuilder sb14 = new StringBuilder();
                                    sb14.append("requestFocus: Restoring focused view ");
                                    sb14.append(view4);
                                    sb14.append(" ");
                                    sb14.append(true != requestFocus ? "failed" : "succeeded");
                                    sb14.append(" on Fragment ");
                                    sb14.append(this.c);
                                    sb14.append(" resulting in focused view ");
                                    sb14.append(this.c.P.findFocus());
                                }
                            }
                            this.c.R(null);
                            AndroidxFragment brVar23 = this.c;
                            brVar23.C.G();
                            brVar23.C.Z(true);
                            brVar23.h = 7;
                            brVar23.N = false;
                            brVar23.L();
                            if (!brVar23.N) {
                                throw new OpaqueRuntimeException("Fragment " + brVar23 + " did not call through to super.onResume()");
                            }
                            brVar23.ac.c(zl.ON_RESUME);
                            if (brVar23.P != null) {
                                brVar23.Y.a(zl.ON_RESUME);
                            }
                            brVar23.C.x();
                            this.a.i(this.c, false);
                            AndroidxFragment brVar24 = this.c;
                            brVar24.i = null;
                            brVar24.j = null;
                            brVar24.k = null;
                            i2 = 0;
                            z = true;
                            continue;
                        default:
                            i2 = 0;
                            z = true;
                            continue;
                    }
                    i2 = 0;
                    z = true;
                } else {
                    switch (i5 - 1) {
                        case -1:
                            if (FragmentManagerImpl.R(3)) {
                                StringBuilder sb15 = new StringBuilder();
                                sb15.append("movefrom ATTACHED: ");
                                sb15.append(this.c);
                            }
                            AndroidxFragment brVar25 = this.c;
                            brVar25.h = -1;
                            brVar25.N = false;
                            brVar25.f();
                            brVar25.U = null;
                            if (!brVar25.N) {
                                throw new OpaqueRuntimeException("Fragment " + brVar25 + " did not call through to super.onDetach()");
                            }
                            FragmentManagerImpl crVar4 = brVar25.C;
                            if (!crVar4.r) {
                                crVar4.q();
                                brVar25.C = new FragmentManagerImpl();
                            }
                            this.a.e(this.c, false);
                            AndroidxFragment brVar26 = this.c;
                            brVar26.h = -1;
                            brVar26.B = null;
                            brVar26.D = null;
                            brVar26.A = null;
                            if ((!brVar26.t || brVar26.Y()) && !this.b.d.e(this.c)) {
                                i2 = 0;
                                z = true;
                                break;
                            }
                            if (FragmentManagerImpl.R(3)) {
                                StringBuilder sb16 = new StringBuilder();
                                sb16.append("initState called for fragment: ");
                                sb16.append(this.c);
                            }
                            this.c.G();
                            i2 = 0;
                            z = true;
                            continue;
                        case 0:
                            boolean z4 = brVar7.u;
                            if (FragmentManagerImpl.R(3)) {
                                StringBuilder sb17 = new StringBuilder();
                                sb17.append("movefrom CREATED: ");
                                sb17.append(this.c);
                            }
                            AndroidxFragment brVar27 = this.c;
                            boolean z5 = brVar27.t && !brVar27.Y();
                            if (z5) {
                                AndroidxFragment brVar28 = this.c;
                                boolean z6 = brVar28.u;
                                this.b.c(brVar28.m, null);
                            }
                            if (!z5 && !this.b.d.e(this.c)) {
                                String str2 = this.c.p;
                                if (str2 != null && (SingleStringProtoMessage = this.b.a(str2)) != null && a.J) {
                                    this.c.o = a;
                                }
                                this.c.h = 0;
                                i2 = 0;
                                z = true;
                                break;
                            }
                            boolean z7 = this.c.B instanceof ViewModelStoreOwner ? this.b.d.f : !((Activity) r6.c).isChangingConfigurations();
                            if (z5) {
                                boolean z8 = this.c.u;
                            }
                            this.b.d.a(this.c);
                            AndroidxFragment brVar29 = this.c;
                            brVar29.C.q();
                            brVar29.ac.c(zl.ON_DESTROY);
                            brVar29.h = 0;
                            brVar29.N = false;
                            brVar29.V = false;
                            brVar29.J();
                            if (!brVar29.N) {
                                throw new OpaqueRuntimeException("Fragment " + brVar29 + " did not call through to super.onDestroy()");
                            }
                            this.a.d(this.c, false);
                            for (FragmentStateManager cxVar2 : this.b.e()) {
                                if (cxVar2 != null) {
                                    AndroidxFragment brVar30 = cxVar2.c;
                                    if (this.c.m.equals(brVar30.p)) {
                                        brVar30.o = this.c;
                                        brVar30.p = null;
                                    }
                                }
                            }
                            AndroidxFragment brVar31 = this.c;
                            String str3 = brVar31.p;
                            if (str3 != null) {
                                brVar31.o = this.b.a(str3);
                            }
                            this.b.j(this);
                            i2 = 0;
                            z = true;
                            continue;
                        case 1:
                            if (FragmentManagerImpl.R(3)) {
                                StringBuilder sb18 = new StringBuilder();
                                sb18.append("movefrom CREATE_VIEW: ");
                                sb18.append(this.c);
                            }
                            AndroidxFragment brVar32 = this.c;
                            ViewGroup viewGroup5 = brVar32.O;
                            if (viewGroup5 != null && (view = brVar32.P) != null) {
                                viewGroup5.removeView(view);
                            }
                            AndroidxFragment brVar33 = this.c;
                            brVar33.C.z(1);
                            if (brVar33.P != null && brVar33.Y.C().a.a(zm.CREATED)) {
                                brVar33.Y.a(zl.ON_DESTROY);
                            }
                            brVar33.h = 1;
                            brVar33.N = false;
                            brVar33.e();
                            if (!brVar33.N) {
                                throw new OpaqueRuntimeException("Fragment " + brVar33 + " did not call through to super.onDestroyView()");
                            }
                            LoaderViewModel aaqVar = LoaderManagerImpl_aam.a(brVar33).b;
                            int b4 = aaqVar.b.b();
                            for (int i7 = 0; i7 < b4; i7++) {
                                ((LoaderInfoLiveData) aaqVar.b.e(i7)).i();
                            }
                            brVar33.y = false;
                            this.a.n(this.c, false);
                            AndroidxFragment brVar34 = this.c;
                            brVar34.O = null;
                            brVar34.P = null;
                            brVar34.Y = null;
                            brVar34.Z.g(null);
                            AndroidxFragment brVar35 = this.c;
                            brVar35.w = false;
                            brVar35.h = 1;
                            i2 = 0;
                            z = true;
                            continue;
                        case 2:
                            brVar7.w = false;
                            brVar7.h = 2;
                            i2 = 0;
                            z = true;
                            continue;
                        case 3:
                            if (FragmentManagerImpl.R(3)) {
                                StringBuilder sb19 = new StringBuilder();
                                sb19.append("movefrom ACTIVITY_CREATED: ");
                                sb19.append(this.c);
                            }
                            AndroidxFragment brVar36 = this.c;
                            boolean z9 = brVar36.u;
                            if (brVar36.P != null && brVar36.j == null) {
                                f();
                            }
                            AndroidxFragment brVar37 = this.c;
                            if (brVar37.P != null && (viewGroup3 = brVar37.O) != null) {
                                SpecialEffectsContainerState b5 = SpecialEffectsContainerState.b(viewGroup3, brVar37.A());
                                if (FragmentManagerImpl.R(2)) {
                                    StringBuilder sb20 = new StringBuilder();
                                    sb20.append("SpecialEffectsController: Enqueuing remove operation for fragment ");
                                    sb20.append(this.c);
                                }
                                b5.e(1, 3, this);
                            }
                            this.c.h = 3;
                            i2 = 0;
                            z = true;
                            continue;
                        case 4:
                            if (FragmentManagerImpl.R(3)) {
                                StringBuilder sb21 = new StringBuilder();
                                sb21.append("movefrom STARTED: ");
                                sb21.append(this.c);
                            }
                            AndroidxFragment brVar38 = this.c;
                            brVar38.C.A();
                            if (brVar38.P != null) {
                                brVar38.Y.a(zl.ON_STOP);
                            }
                            brVar38.ac.c(zl.ON_STOP);
                            brVar38.h = 4;
                            brVar38.N = false;
                            brVar38.i();
                            if (!brVar38.N) {
                                throw new OpaqueRuntimeException("Fragment " + brVar38 + " did not call through to super.onStop()");
                            }
                            this.a.l(this.c, false);
                            i2 = 0;
                            z = true;
                            continue;
                        case 5:
                            brVar7.h = 5;
                            i2 = 0;
                            z = true;
                            continue;
                        case 6:
                            if (FragmentManagerImpl.R(3)) {
                                StringBuilder sb22 = new StringBuilder();
                                sb22.append("movefrom RESUMED: ");
                                sb22.append(this.c);
                            }
                            AndroidxFragment brVar39 = this.c;
                            brVar39.C.v();
                            if (brVar39.P != null) {
                                brVar39.Y.a(zl.ON_PAUSE);
                            }
                            brVar39.ac.c(zl.ON_PAUSE);
                            brVar39.h = 6;
                            brVar39.N = false;
                            brVar39.K();
                            if (!brVar39.N) {
                                throw new OpaqueRuntimeException("Fragment " + brVar39 + " did not call through to super.onPause()");
                            }
                            this.a.f(this.c, false);
                            i2 = 0;
                            z = true;
                            continue;
                    }
                    i2 = 0;
                    z = true;
                }
            }
        } finally {
            this.e = false;
        }
    }

    final void e(ClassLoader classLoader) {
        Bundle bundle = this.c.i;
        if (bundle == null) {
            return;
        }
        bundle.setClassLoader(classLoader);
        AndroidxFragment brVar = this.c;
        brVar.j = brVar.i.getSparseParcelableArray("android:view_state");
        AndroidxFragment brVar2 = this.c;
        brVar2.k = brVar2.i.getBundle("android:view_registry_state");
        AndroidxFragment brVar3 = this.c;
        brVar3.p = brVar3.i.getString("android:target_state");
        AndroidxFragment brVar4 = this.c;
        if (brVar4.p != null) {
            brVar4.q = brVar4.i.getInt("android:target_req_state", 0);
        }
        AndroidxFragment brVar5 = this.c;
        Boolean bool = brVar5.l;
        brVar5.R = brVar5.i.getBoolean("android:user_visible_hint", true);
        AndroidxFragment brVar6 = this.c;
        if (brVar6.R) {
            return;
        }
        brVar6.Q = true;
    }

    final void f() {
        if (this.c.P == null) {
            return;
        }
        if (FragmentManagerImpl.R(2)) {
            StringBuilder sb = new StringBuilder();
            StaggeredGridLayoutParams.append("Saving view state for fragment ");
            StaggeredGridLayoutParams.append(this.c);
            StaggeredGridLayoutParams.append(" with view ");
            StaggeredGridLayoutParams.append(this.c.P);
        }
        SparseArray<Parcelable> sparseArray = new SparseArray<>();
        this.c.P.saveHierarchyState(sparseArray);
        if (sparseArray.size() > 0) {
            this.c.j = sparseArray;
        }
        Bundle bundle = new Bundle();
        this.c.Y.a.c(bundle);
        if (bundle.isEmpty()) {
            return;
        }
        this.c.k = bundle;
    }

    public FragmentStateManager(FragmentLifecycleCallbacksRegistry cgVar, FragmentStore cyVar, ClassLoader classLoader, FragmentClassLoader cbVar, BackStackStateParcelable cvVar) {
        this.a = cgVar;
        this.b = cyVar;
        AndroidxFragment b = cbVar.b(cvVar.a);
        Bundle bundle = cvVar.j;
        if (bundle != null) {
            bundle.setClassLoader(classLoader);
        }
        b.Q(cvVar.j);
        b.m = cvVar.b;
        b.v = cvVar.c;
        b.x = true;
        b.E = cvVar.d;
        b.F = cvVar.e;
        b.G = cvVar.f;
        b.J = cvVar.g;
        b.t = cvVar.h;
        b.I = cvVar.i;
        b.H = cvVar.k;
        b.X = zm.values()[cvVar.l];
        Bundle bundle2 = cvVar.m;
        if (bundle2 != null) {
            b.i = bundle2;
        } else {
            b.i = new Bundle();
        }
        this.c = b;
        if (FragmentManagerImpl.R(2)) {
            StringBuilder sb = new StringBuilder();
            StaggeredGridLayoutParams.append("Instantiated fragment ");
            StaggeredGridLayoutParams.append(ProtoLiteMessageBase);
        }
    }
}
