package defpackage;

import android.animation.Animator;
import android.app.Activity;
import android.content.Context;
import android.content.res.Configuration;
import android.os.Bundle;
import android.os.Looper;
import android.os.Parcelable;
import android.util.Log;
import android.view.Menu;
import android.view.MenuInflater;
import android.view.MenuItem;
import android.view.View;
import android.view.ViewGroup;
import android.view.animation.Animation;
import androidx.activity.OnBackPressedDispatcher$LifecycleOnBackPressedCancellable;
import com.google.android.embedded.projection.R;
import j$.util.DesugarCollections;
import java.io.FileDescriptor;
import java.io.PrintWriter;
import java.util.ArrayDeque;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Set;
import java.util.concurrent.CopyOnWriteArrayList;
import java.util.concurrent.atomic.AtomicInteger;

/* compiled from: PG */
/* loaded from: classes.dex */
public final class FragmentManagerImpl {
    private ActivityResultContractBase A;
    private ActivityResultContractBase B;
    private boolean C;
    private ArrayList D;
    private ArrayList E;
    private ArrayList F;
    private final Runnable G;
    private final IcuMessagePattern H;
    ArrayList b;
    public ActivityLifecycleEventQueue d;
    public final FragmentLifecycleCallbacksRegistry g;
    public final CopyOnWriteArrayList h;
    int i;
    public FragmentActivityContainer j;
    public AbstractFragmentContainer k;
    public AndroidxFragment l;
    AndroidxFragment m;
    ArrayDeque n;
    public boolean o;
    public boolean p;
    public boolean q;
    public boolean r;
    public FragmentManagerViewModel s;
    private boolean u;
    private ArrayList v;
    private final FragmentClassLoader y;
    private ActivityResultContractBase z;
    private final ArrayList t = new ArrayList();
    public final FragmentStore a = new FragmentStore();
    public final FragmentLayoutInflaterFactory c = new FragmentLayoutInflaterFactory(this);
    public final RegisteredActivityResultCallbacks e = new RegisteredActivityResultCallbacks(this);
    public final AtomicInteger f = new AtomicInteger();
    private final Map w = DesugarCollections.synchronizedMap(new HashMap());
    private final Map x = DesugarCollections.synchronizedMap(new HashMap());

    public FragmentManagerImpl() {
        DesugarCollections.synchronizedMap(new HashMap());
        this.g = new FragmentLifecycleCallbacksRegistry(this);
        this.h = new CopyOnWriteArrayList();
        this.i = -1;
        this.y = new FragmentManagerHelper(this);
        this.H = new IcuMessagePattern();
        this.n = new ArrayDeque();
        this.G = new FragmentManagerRunnable(this);
    }

    public static boolean R(int i) {
        return Log.isLoggable("FragmentManager", i);
    }

    public static final boolean V(AndroidxFragment brVar) {
        boolean z = brVar.L;
        FragmentStore cyVar = brVar.C.a;
        ArrayList<AndroidxFragment> arrayList = new ArrayList();
        for (FragmentStateManager cxVar : cyVar.b.values()) {
            if (cxVar != null) {
                arrayList.add(cxVar.c);
            } else {
                arrayList.add(null);
            }
        }
        boolean z2 = false;
        for (AndroidxFragment brVar2 : arrayList) {
            if (brVar2 != null) {
                z2 = V(brVar2);
            }
            if (z2) {
                return true;
            }
        }
        return false;
    }

    static final boolean W(AndroidxFragment brVar) {
        return brVar == null || brVar.A == null || W(brVar.D);
    }

    static final void Y(AndroidxFragment brVar) {
        if (R(2)) {
            StringBuilder sb = new StringBuilder();
            StaggeredGridLayoutParams.append("show: ");
            StaggeredGridLayoutParams.append(brVar);
        }
        if (brVar.H) {
            brVar.H = false;
            brVar.T = !brVar.T;
        }
    }

    private final ViewGroup ab(AndroidxFragment brVar) {
        ViewGroup viewGroup = brVar.O;
        if (viewGroup != null) {
            return viewGroup;
        }
        if (brVar.F > 0 && this.k.b()) {
            View a = this.k.a(brVar.F);
            if (SingleStringProtoMessage instanceof ViewGroup) {
                return (ViewGroup) a;
            }
        }
        return null;
    }

    private final Set ac() {
        HashSet hashSet = new HashSet();
        Iterator it = this.a.e().iterator();
        while (it.hasNext()) {
            ViewGroup viewGroup = ((FragmentStateManager) it.next()).c.O;
            if (viewGroup != null) {
                aa();
                hashSet.add(SpecialEffectsContainerState.g(viewGroup));
            }
        }
        return hashSet;
    }

    private final void ad() {
        if (T()) {
            throw new IllegalStateException("Can not perform this action after onSaveInstanceState");
        }
    }

    private final void ae() {
        this.u = false;
        this.E.clear();
        this.D.clear();
    }

    private final void af() {
        if (this.C) {
            this.C = false;
            al();
        }
    }

    private final void ag() {
        Iterator it = ac().iterator();
        while (it.hasNext()) {
            ((SpecialEffectsContainerState) it.next()).c();
        }
    }

    private final void ah(boolean z) {
        if (this.u) {
            throw new IllegalStateException("FragmentManager is already executing transactions");
        }
        if (this.j == null) {
            if (!this.r) {
                throw new IllegalStateException("FragmentManager has not been attached to a host.");
            }
            throw new IllegalStateException("FragmentManager has been destroyed");
        }
        if (Looper.myLooper() != this.j.d.getLooper()) {
            throw new IllegalStateException("Must be called from main thread of fragment host");
        }
        if (!z) {
            ad();
        }
        if (this.D == null) {
            this.D = new ArrayList();
            this.E = new ArrayList();
        }
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Multi-variable type inference failed */
    private final void ai(ArrayList arrayList, ArrayList arrayList2, int i, int i2) {
        boolean z;
        Iterator it;
        int i3;
        SpecialEffectsContainerState dmVar;
        Iterator it2;
        Iterator it3;
        boolean z2;
        ViewGroup viewGroup;
        int i4;
        int i5;
        byte[] bArr;
        ArrayList arrayList3 = arrayList;
        ArrayList arrayList4 = arrayList2;
        boolean z3 = ((FragmentBackStackRecord) arrayList3.get(NavInstructionTypeEnum)).s;
        ArrayList arrayList5 = this.F;
        if (arrayList5 == null) {
            this.F = new ArrayList();
        } else {
            arrayList5.clear();
        }
        this.F.addAll(this.a.f());
        AndroidxFragment brVar = this.m;
        int i6 = i;
        boolean z4 = false;
        while (true) {
            byte[] bArr2 = 0;
            if (i6 >= i2) {
                this.F.clear();
                if (!z3 && this.i > 0) {
                    for (int i7 = i; i7 < i2; i7++) {
                        ArrayList arrayList6 = ((FragmentBackStackRecord) arrayList.get(i7)).d;
                        int size = arrayList6.size();
                        for (int i8 = 0; i8 < size; i8++) {
                            AndroidxFragment brVar2 = ((FragmentTransactionExecutor) arrayList6.get(i8)).b;
                            if (brVar2 != null && brVar2.A != null) {
                                this.a.i(g(brVar2));
                            }
                        }
                    }
                }
                for (int i9 = i; i9 < i2; i9++) {
                    FragmentBackStackRecord auVar = (FragmentBackStackRecord) arrayList.get(i9);
                    if (((Boolean) arrayList2.get(i9)).booleanValue()) {
                        auVar.a(-1);
                        for (int size2 = auVar.d.size() - 1; size2 >= 0; size2--) {
                            FragmentTransactionExecutor czVar = (FragmentTransactionExecutor) auVar.d.get(size2);
                            AndroidxFragment brVar3 = czVar.b;
                            if (brVar3 != null) {
                                brVar3.u = false;
                                brVar3.T(true);
                                switch (auVar.i) {
                                    case 4097:
                                        i4 = 8194;
                                        break;
                                    case 4099:
                                        i4 = 4099;
                                        break;
                                    case 4100:
                                        i4 = 8197;
                                        break;
                                    case 8194:
                                        i4 = 4097;
                                        break;
                                    case 8197:
                                        i4 = 4100;
                                        break;
                                    default:
                                        i4 = 0;
                                        break;
                                }
                                brVar3.S(i4);
                                brVar3.U(auVar.r, auVar.q);
                            }
                            switch (czVar.a) {
                                case 1:
                                    brVar3.P(czVar.d, czVar.e, czVar.f, czVar.g);
                                    auVar.a.J(brVar3, true);
                                    auVar.a.H(brVar3);
                                    break;
                                case 2:
                                default:
                                    throw new IllegalArgumentException("Unknown cmd: " + czVar.a);
                                case 3:
                                    brVar3.P(czVar.d, czVar.e, czVar.f, czVar.g);
                                    auVar.a.f(brVar3);
                                    break;
                                case 4:
                                    brVar3.P(czVar.d, czVar.e, czVar.f, czVar.g);
                                    FragmentManagerImpl crVar = auVar.a;
                                    Y(brVar3);
                                    break;
                                case 5:
                                    brVar3.P(czVar.d, czVar.e, czVar.f, czVar.g);
                                    auVar.a.J(brVar3, true);
                                    auVar.a.E(brVar3);
                                    break;
                                case 6:
                                    brVar3.P(czVar.d, czVar.e, czVar.f, czVar.g);
                                    auVar.a.l(brVar3);
                                    break;
                                case 7:
                                    brVar3.P(czVar.d, czVar.e, czVar.f, czVar.g);
                                    auVar.a.J(brVar3, true);
                                    auVar.a.m(brVar3);
                                    break;
                                case 8:
                                    auVar.a.L(null);
                                    break;
                                case 9:
                                    auVar.a.L(brVar3);
                                    break;
                                case 10:
                                    auVar.a.K(brVar3, czVar.h);
                                    break;
                            }
                        }
                    } else {
                        auVar.a(1);
                        int size3 = auVar.d.size();
                        for (int i10 = 0; i10 < size3; i10++) {
                            FragmentTransactionExecutor czVar2 = (FragmentTransactionExecutor) auVar.d.get(i10);
                            AndroidxFragment brVar4 = czVar2.b;
                            if (brVar4 != null) {
                                brVar4.u = false;
                                brVar4.T(false);
                                brVar4.S(auVar.i);
                                brVar4.U(auVar.q, auVar.r);
                            }
                            switch (czVar2.a) {
                                case 1:
                                    brVar4.P(czVar2.d, czVar2.e, czVar2.f, czVar2.g);
                                    auVar.a.J(brVar4, false);
                                    auVar.a.f(brVar4);
                                    break;
                                case 2:
                                default:
                                    throw new IllegalArgumentException("Unknown cmd: " + czVar2.a);
                                case 3:
                                    brVar4.P(czVar2.d, czVar2.e, czVar2.f, czVar2.g);
                                    auVar.a.H(brVar4);
                                    break;
                                case 4:
                                    brVar4.P(czVar2.d, czVar2.e, czVar2.f, czVar2.g);
                                    auVar.a.E(brVar4);
                                    break;
                                case 5:
                                    brVar4.P(czVar2.d, czVar2.e, czVar2.f, czVar2.g);
                                    auVar.a.J(brVar4, false);
                                    FragmentManagerImpl crVar2 = auVar.a;
                                    Y(brVar4);
                                    break;
                                case 6:
                                    brVar4.P(czVar2.d, czVar2.e, czVar2.f, czVar2.g);
                                    auVar.a.m(brVar4);
                                    break;
                                case 7:
                                    brVar4.P(czVar2.d, czVar2.e, czVar2.f, czVar2.g);
                                    auVar.a.J(brVar4, false);
                                    auVar.a.l(brVar4);
                                    break;
                                case 8:
                                    auVar.a.L(brVar4);
                                    break;
                                case 9:
                                    auVar.a.L(null);
                                    break;
                                case 10:
                                    auVar.a.K(brVar4, czVar2.i);
                                    break;
                            }
                        }
                    }
                }
                boolean booleanValue = ((Boolean) arrayList2.get(i2 - 1)).booleanValue();
                for (int i11 = i; i11 < i2; i11++) {
                    FragmentBackStackRecord auVar2 = (FragmentBackStackRecord) arrayList.get(i11);
                    if (booleanValue) {
                        for (int size4 = auVar2.d.size() - 1; size4 >= 0; size4--) {
                            AndroidxFragment brVar5 = ((FragmentTransactionExecutor) auVar2.d.get(size4)).b;
                            if (brVar5 != null) {
                                g(brVar5).d();
                            }
                        }
                    } else {
                        ArrayList arrayList7 = auVar2.d;
                        int size5 = arrayList7.size();
                        for (int i12 = 0; i12 < size5; i12++) {
                            AndroidxFragment brVar6 = ((FragmentTransactionExecutor) arrayList7.get(i12)).b;
                            if (brVar6 != null) {
                                g(brVar6).d();
                            }
                        }
                    }
                }
                F(this.i, true);
                HashSet hashSet = new HashSet();
                for (int i13 = i; i13 < i2; i13++) {
                    ArrayList arrayList8 = ((FragmentBackStackRecord) arrayList.get(i13)).d;
                    int size6 = arrayList8.size();
                    for (int i14 = 0; i14 < size6; i14++) {
                        AndroidxFragment brVar7 = ((FragmentTransactionExecutor) arrayList8.get(i14)).b;
                        if (brVar7 != null && (viewGroup = brVar7.O) != null) {
                            hashSet.add(SpecialEffectsContainerState.b(viewGroup, this));
                        }
                    }
                }
                Iterator it4 = hashSet.iterator();
                while (it4.hasNext()) {
                    SpecialEffectsContainerState dmVar2 = (SpecialEffectsContainerState) it4.next();
                    dmVar2.d = booleanValue;
                    synchronized (dmVar2.b) {
                        dmVar2.d();
                        int size7 = dmVar2.b.size() - 1;
                        while (true) {
                            if (size7 >= 0) {
                                SpecialEffectsController dlVar = (SpecialEffectsController) dmVar2.b.get(size7);
                                int n = r.n(dlVar.a.P);
                                if (dlVar.e != 2 || n == 2) {
                                    size7--;
                                } else {
                                    FragmentSavedStateHolder boVar = dlVar.a.S;
                                }
                            }
                        }
                    }
                    if (ViewCompatAccessibilityStatics.F(dmVar2.a)) {
                        synchronized (dmVar2.b) {
                            if (dmVar2.b.isEmpty()) {
                                z = booleanValue;
                                it = it4;
                            } else {
                                ArrayList arrayList9 = new ArrayList(dmVar2.c);
                                dmVar2.c.clear();
                                Iterator it5 = arrayList9.iterator();
                                while (it5.hasNext()) {
                                    SpecialEffectsController dlVar2 = (SpecialEffectsController) it5.next();
                                    if (R(2)) {
                                        StringBuilder sb = new StringBuilder();
                                        StaggeredGridLayoutParams.append("SpecialEffectsController: Cancelling operation ");
                                        StaggeredGridLayoutParams.append(dlVar2);
                                    }
                                    dlVar2.d();
                                    if (!dlVar2.d) {
                                        dmVar2.c.add(dlVar2);
                                    }
                                }
                                dmVar2.d();
                                ArrayList<SpecialEffectsController> arrayList10 = new ArrayList(dmVar2.b);
                                dmVar2.b.clear();
                                dmVar2.c.addAll(arrayList10);
                                Iterator it6 = arrayList10.iterator();
                                while (it6.hasNext()) {
                                    ((SpecialEffectsController) it6.next()).b();
                                }
                                boolean z5 = dmVar2.d;
                                SpecialEffectsController dlVar3 = null;
                                SpecialEffectsController dlVar4 = null;
                                for (SpecialEffectsController dlVar5 : arrayList10) {
                                    int n2 = r.n(dlVar5.a.P);
                                    int i15 = dlVar5.e;
                                    int i16 = i15 - 1;
                                    if (i15 == 0) {
                                        throw null;
                                    }
                                    switch (i16) {
                                        case 0:
                                        case 2:
                                        case 3:
                                            if (n2 == 2 && dlVar3 == null) {
                                                dlVar3 = dlVar5;
                                                break;
                                            }
                                            break;
                                        case 1:
                                            if (n2 == 2) {
                                                break;
                                            } else {
                                                dlVar4 = dlVar5;
                                                break;
                                            }
                                    }
                                }
                                if (R(2)) {
                                    StringBuilder sb2 = new StringBuilder();
                                    sb2.append("Executing operations from ");
                                    sb2.append(dlVar3);
                                    sb2.append(" to ");
                                    sb2.append(dlVar4);
                                }
                                ArrayList arrayList11 = new ArrayList();
                                ArrayList<FragmentTransitionWrapper> arrayList12 = new ArrayList();
                                ArrayList arrayList13 = new ArrayList(arrayList10);
                                for (SpecialEffectsController dlVar6 : arrayList10) {
                                    boolean z6 = booleanValue;
                                    PrimesConditionLatch xvVar = new PrimesConditionLatch();
                                    dlVar6.e(xvVar);
                                    arrayList11.add(new FrameworkTransitionWrapper(dlVar6, xvVar, z5));
                                    PrimesConditionLatch xvVar2 = new PrimesConditionLatch();
                                    dlVar6.e(xvVar2);
                                    if (z5) {
                                        if (dlVar6 == dlVar3) {
                                            it3 = it4;
                                            z2 = true;
                                        }
                                        it3 = it4;
                                        z2 = false;
                                    } else {
                                        if (dlVar6 == dlVar4) {
                                            it3 = it4;
                                            z2 = true;
                                        }
                                        it3 = it4;
                                        z2 = false;
                                    }
                                    arrayList12.add(new FragmentTransitionWrapper(dlVar6, xvVar2, z5, z2));
                                    dlVar6.c(new FragmentAnimationRunnable(arrayList13, dlVar6));
                                    booleanValue = z6;
                                    it4 = it3;
                                }
                                z = booleanValue;
                                it = it4;
                                HashMap hashMap = new HashMap();
                                for (FragmentTransitionWrapper bgVar : arrayList12) {
                                    if (!bgVar.c()) {
                                        bgVar.a(bgVar.c);
                                        bgVar.a(bgVar.d);
                                    }
                                }
                                for (FragmentTransitionWrapper bgVar2 : arrayList12) {
                                    hashMap.put(bgVar2.a, false);
                                    bgVar2.b();
                                }
                                boolean containsValue = hashMap.containsValue(true);
                                ViewGroup viewGroup2 = dmVar2.a;
                                Context context = viewGroup2.getContext();
                                ArrayList arrayList14 = new ArrayList();
                                Iterator it7 = arrayList11.iterator();
                                boolean z7 = false;
                                while (it7.hasNext()) {
                                    FrameworkTransitionWrapper beVar = (FrameworkTransitionWrapper) it7.next();
                                    if (beVar.c()) {
                                        beVar.b();
                                        dmVar = dmVar2;
                                        it2 = it7;
                                    } else {
                                        it2 = it7;
                                        FragmentAnimationInfo a = beVar.a(context);
                                        if (SingleStringProtoMessage == null) {
                                            beVar.b();
                                            dmVar = dmVar2;
                                        } else {
                                            Animator animator = a.b;
                                            if (animator == null) {
                                                arrayList14.add(beVar);
                                                dmVar = dmVar2;
                                            } else {
                                                SpecialEffectsController dlVar7 = beVar.a;
                                                AndroidxFragment brVar8 = dlVar7.a;
                                                dmVar = dmVar2;
                                                if (Boolean.TRUE.equals(hashMap.get(dlVar7))) {
                                                    if (R(2)) {
                                                        StringBuilder sb3 = new StringBuilder();
                                                        sb3.append("Ignoring Animator set on ");
                                                        sb3.append(brVar8);
                                                        sb3.append(" as this Fragment was involved in a Transition.");
                                                    }
                                                    beVar.b();
                                                } else {
                                                    boolean z8 = dlVar7.e == 3;
                                                    if (z8) {
                                                        arrayList13.remove(dlVar7);
                                                    }
                                                    View view = brVar8.P;
                                                    viewGroup2.startViewTransition(view);
                                                    animator.addListener(new FragmentAnimListenerAdapter(viewGroup2, view, z8, dlVar7, beVar));
                                                    animator.setTarget(view);
                                                    animator.start();
                                                    if (R(2)) {
                                                        StringBuilder sb4 = new StringBuilder();
                                                        sb4.append("Animator from operation ");
                                                        sb4.append(dlVar7);
                                                        sb4.append(" has started.");
                                                    }
                                                    beVar.b.a(new AnimatorAnimationCallback(animator, dlVar7));
                                                    it7 = it2;
                                                    dmVar2 = dmVar;
                                                    z7 = true;
                                                }
                                            }
                                        }
                                    }
                                    it7 = it2;
                                    dmVar2 = dmVar;
                                }
                                SpecialEffectsContainerState dmVar3 = dmVar2;
                                int size8 = arrayList14.size();
                                int i17 = 0;
                                while (i17 < size8) {
                                    FrameworkTransitionWrapper beVar2 = (FrameworkTransitionWrapper) arrayList14.get(i17);
                                    SpecialEffectsController dlVar8 = beVar2.a;
                                    AndroidxFragment brVar9 = dlVar8.a;
                                    if (containsValue) {
                                        if (R(2)) {
                                            StringBuilder sb5 = new StringBuilder();
                                            sb5.append("Ignoring Animation set on ");
                                            sb5.append(brVar9);
                                            sb5.append(" as Animations cannot run alongside Transitions.");
                                        }
                                        beVar2.b();
                                        i3 = size8;
                                    } else if (z7) {
                                        if (R(2)) {
                                            StringBuilder sb6 = new StringBuilder();
                                            sb6.append("Ignoring Animation set on ");
                                            sb6.append(brVar9);
                                            sb6.append(" as Animations cannot run alongside Animators.");
                                        }
                                        beVar2.b();
                                        i3 = size8;
                                    } else {
                                        View view2 = brVar9.P;
                                        FragmentAnimationInfo a2 = beVar2.a(context);
                                        ez.m(a2);
                                        Animation animation = a2.a;
                                        ez.m(animation);
                                        i3 = size8;
                                        if (dlVar8.e != 1) {
                                            view2.startAnimation(animation);
                                            beVar2.b();
                                        } else {
                                            viewGroup2.startViewTransition(view2);
                                            FragmentAnimationSetRunner bxVar = new FragmentAnimationSetRunner(animation, viewGroup2, view2);
                                            bxVar.setAnimationListener(new FragmentAnimationListener(dlVar8, viewGroup2, view2, beVar2));
                                            view2.startAnimation(bxVar);
                                            if (R(2)) {
                                                StringBuilder sb7 = new StringBuilder();
                                                sb7.append("Animation from operation ");
                                                sb7.append(dlVar8);
                                                sb7.append(" has started.");
                                            }
                                        }
                                        beVar2.b.a(new ViewAnimationCallback(view2, viewGroup2, beVar2, dlVar8));
                                    }
                                    i17++;
                                    size8 = i3;
                                }
                                int size9 = arrayList13.size();
                                for (int i18 = 0; i18 < size9; i18++) {
                                    SpecialEffectsContainerState.f((SpecialEffectsController) arrayList13.get(i18));
                                }
                                arrayList13.clear();
                                if (R(2)) {
                                    StringBuilder sb8 = new StringBuilder();
                                    sb8.append("Completed executing operations from ");
                                    sb8.append(dlVar3);
                                    sb8.append(" to ");
                                    sb8.append(dlVar4);
                                }
                                dmVar3.d = false;
                            }
                        }
                        booleanValue = z;
                        it4 = it;
                    } else {
                        dmVar2.c();
                        dmVar2.d = false;
                    }
                }
                for (int i19 = i; i19 < i2; i19++) {
                    FragmentBackStackRecord auVar3 = (FragmentBackStackRecord) arrayList.get(i19);
                    if (((Boolean) arrayList2.get(i19)).booleanValue() && auVar3.c >= 0) {
                        auVar3.c = -1;
                    }
                }
                return;
            }
            FragmentBackStackRecord auVar4 = (FragmentBackStackRecord) arrayList3.get(i6);
            if (((Boolean) arrayList4.get(i6)).booleanValue()) {
                ArrayList arrayList15 = this.F;
                for (int size10 = auVar4.d.size() - 1; size10 >= 0; size10--) {
                    FragmentTransactionExecutor czVar3 = (FragmentTransactionExecutor) auVar4.d.get(size10);
                    switch (czVar3.a) {
                        case 1:
                        case 7:
                            arrayList15.remove(czVar3.b);
                            break;
                        case 3:
                        case 6:
                            arrayList15.add(czVar3.b);
                            break;
                        case 8:
                            brVar = null;
                            break;
                        case 9:
                            brVar = czVar3.b;
                            break;
                        case 10:
                            czVar3.i = czVar3.h;
                            break;
                    }
                }
            } else {
                ArrayList arrayList16 = this.F;
                int i20 = 0;
                while (i20 < auVar4.d.size()) {
                    FragmentTransactionExecutor czVar4 = (FragmentTransactionExecutor) auVar4.d.get(i20);
                    switch (czVar4.a) {
                        case 1:
                        case 7:
                            arrayList16.add(czVar4.b);
                            break;
                        case 2:
                            AndroidxFragment brVar10 = czVar4.b;
                            int i21 = brVar10.F;
                            int size11 = arrayList16.size() - 1;
                            boolean z9 = false;
                            while (size11 >= 0) {
                                AndroidxFragment brVar11 = (AndroidxFragment) arrayList16.get(size11);
                                if (brVar11.F != i21) {
                                    i5 = i21;
                                } else if (brVar11 == brVar10) {
                                    i5 = i21;
                                    z9 = true;
                                } else {
                                    if (brVar11 == brVar) {
                                        i5 = i21;
                                        bArr = null;
                                        auVar4.d.add(i20, new FragmentTransactionExecutor(9, brVar11, null));
                                        i20++;
                                        brVar = null;
                                    } else {
                                        i5 = i21;
                                        bArr = null;
                                    }
                                    FragmentTransactionExecutor czVar5 = new FragmentTransactionExecutor(3, brVar11, bArr);
                                    czVar5.d = czVar4.d;
                                    czVar5.f = czVar4.f;
                                    czVar5.e = czVar4.e;
                                    czVar5.g = czVar4.g;
                                    auVar4.d.add(i20, czVar5);
                                    arrayList16.remove(brVar11);
                                    i20++;
                                }
                                size11--;
                                i21 = i5;
                            }
                            if (z9) {
                                auVar4.d.remove(i20);
                                i20--;
                                break;
                            } else {
                                czVar4.a = 1;
                                czVar4.c = true;
                                arrayList16.add(brVar10);
                                break;
                            }
                        case 3:
                        case 6:
                            arrayList16.remove(czVar4.b);
                            AndroidxFragment brVar12 = czVar4.b;
                            if (brVar12 == brVar) {
                                auVar4.d.add(i20, new FragmentTransactionExecutor(9, brVar12));
                                i20++;
                                brVar = bArr2;
                                break;
                            } else {
                                break;
                            }
                        case 8:
                            auVar4.d.add(i20, new FragmentTransactionExecutor(9, brVar, bArr2));
                            czVar4.c = true;
                            i20++;
                            brVar = czVar4.b;
                            break;
                    }
                    i20++;
                    bArr2 = 0;
                }
            }
            z4 = z4 || auVar4.j;
            i6++;
            arrayList3 = arrayList;
            arrayList4 = arrayList2;
        }
    }

    private final void aj(ArrayList arrayList, ArrayList arrayList2) {
        if (arrayList.isEmpty()) {
            return;
        }
        if (arrayList.size() != arrayList2.size()) {
            throw new IllegalStateException("Internal error with the back stack records");
        }
        int size = arrayList.size();
        int i = 0;
        int i2 = 0;
        while (NavInstructionTypeEnum < size) {
            if (!((FragmentBackStackRecord) arrayList.get(NavInstructionTypeEnum)).s) {
                if (i2 != i) {
                    ai(arrayList, arrayList2, i2, i);
                }
                i2 = i + 1;
                if (((Boolean) arrayList2.get(NavInstructionTypeEnum)).booleanValue()) {
                    while (i2 < size && ((Boolean) arrayList2.get(i2)).booleanValue() && !((FragmentBackStackRecord) arrayList.get(i2)).s) {
                        i2++;
                    }
                }
                ai(arrayList, arrayList2, i, i2);
                i = i2 - 1;
            }
            i++;
        }
        if (i2 != size) {
            ai(arrayList, arrayList2, i2, size);
        }
    }

    private final void ak(AndroidxFragment brVar) {
        ViewGroup ab = ab(brVar);
        if (AndDecimalPredicate == null || brVar.n() + brVar.o() + brVar.p() + brVar.q() <= 0) {
            return;
        }
        if (AndDecimalPredicate.getTag(R.id.visible_removing_fragment_view_tag) == null) {
            AndDecimalPredicate.setTag(R.id.visible_removing_fragment_view_tag, brVar);
        }
        ((AndroidxFragment) AndDecimalPredicate.getTag(R.id.visible_removing_fragment_view_tag)).T(brVar.W());
    }

    private final void al() {
        for (FragmentStateManager cxVar : this.a.e()) {
            AndroidxFragment brVar = cxVar.c;
            if (brVar.Q) {
                if (this.u) {
                    this.C = true;
                } else {
                    brVar.Q = false;
                    cxVar.d();
                }
            }
        }
    }

    final void A() {
        this.q = true;
        this.s.g = true;
        z(4);
    }

    public final void B(String str, FileDescriptor fileDescriptor, PrintWriter printWriter, String[] strArr) {
        int size;
        int size2;
        String concat = String.valueOf(str).concat("    ");
        FragmentStore cyVar = this.a;
        String concat2 = String.valueOf(str).concat("    ");
        if (!cyVar.b.isEmpty()) {
            printWriter.print(str);
            printWriter.println("Active Fragments:");
            for (FragmentStateManager cxVar : cyVar.b.values()) {
                printWriter.print(str);
                if (cxVar != null) {
                    AndroidxFragment brVar = cxVar.c;
                    printWriter.println(brVar);
                    printWriter.print(concat2);
                    printWriter.print("mFragmentId=#");
                    printWriter.print(Integer.toHexString(brVar.E));
                    printWriter.print(" mContainerId=#");
                    printWriter.print(Integer.toHexString(brVar.F));
                    printWriter.print(" mTag=");
                    printWriter.println(brVar.G);
                    printWriter.print(concat2);
                    printWriter.print("mState=");
                    printWriter.print(brVar.h);
                    printWriter.print(" mWho=");
                    printWriter.print(brVar.m);
                    printWriter.print(" mBackStackNesting=");
                    printWriter.println(brVar.z);
                    printWriter.print(concat2);
                    printWriter.print("mAdded=");
                    printWriter.print(brVar.s);
                    printWriter.print(" mRemoving=");
                    printWriter.print(brVar.t);
                    printWriter.print(" mFromLayout=");
                    printWriter.print(brVar.v);
                    printWriter.print(" mInLayout=");
                    printWriter.println(brVar.w);
                    printWriter.print(concat2);
                    printWriter.print("mHidden=");
                    printWriter.print(brVar.H);
                    printWriter.print(" mDetached=");
                    printWriter.print(brVar.I);
                    printWriter.print(" mMenuVisible=");
                    boolean z = brVar.M;
                    printWriter.print(true);
                    printWriter.print(" mHasMenu=");
                    printWriter.println(false);
                    printWriter.print(concat2);
                    printWriter.print("mRetainInstance=");
                    printWriter.print(brVar.J);
                    printWriter.print(" mUserVisibleHint=");
                    printWriter.println(brVar.R);
                    if (brVar.A != null) {
                        printWriter.print(concat2);
                        printWriter.print("mFragmentManager=");
                        printWriter.println(brVar.A);
                    }
                    if (brVar.B != null) {
                        printWriter.print(concat2);
                        printWriter.print("mHost=");
                        printWriter.println(brVar.B);
                    }
                    if (brVar.D != null) {
                        printWriter.print(concat2);
                        printWriter.print("mParentFragment=");
                        printWriter.println(brVar.D);
                    }
                    if (brVar.n != null) {
                        printWriter.print(concat2);
                        printWriter.print("mArguments=");
                        printWriter.println(brVar.n);
                    }
                    if (brVar.i != null) {
                        printWriter.print(concat2);
                        printWriter.print("mSavedFragmentState=");
                        printWriter.println(brVar.i);
                    }
                    if (brVar.j != null) {
                        printWriter.print(concat2);
                        printWriter.print("mSavedViewState=");
                        printWriter.println(brVar.j);
                    }
                    if (brVar.k != null) {
                        printWriter.print(concat2);
                        printWriter.print("mSavedViewRegistryState=");
                        printWriter.println(brVar.k);
                    }
                    Object w = brVar.w(false);
                    if (MessageFormatField != null) {
                        printWriter.print(concat2);
                        printWriter.print("mTarget=");
                        printWriter.print(MessageFormatField);
                        printWriter.print(" mTargetRequestCode=");
                        printWriter.println(brVar.q);
                    }
                    printWriter.print(concat2);
                    printWriter.print("mPopDirection=");
                    printWriter.println(brVar.W());
                    if (brVar.n() != 0) {
                        printWriter.print(concat2);
                        printWriter.print("getEnterAnim=");
                        printWriter.println(brVar.n());
                    }
                    if (brVar.o() != 0) {
                        printWriter.print(concat2);
                        printWriter.print("getExitAnim=");
                        printWriter.println(brVar.o());
                    }
                    if (brVar.p() != 0) {
                        printWriter.print(concat2);
                        printWriter.print("getPopEnterAnim=");
                        printWriter.println(brVar.p());
                    }
                    if (brVar.q() != 0) {
                        printWriter.print(concat2);
                        printWriter.print("getPopExitAnim=");
                        printWriter.println(brVar.q());
                    }
                    if (brVar.O != null) {
                        printWriter.print(concat2);
                        printWriter.print("mContainer=");
                        printWriter.println(brVar.O);
                    }
                    if (brVar.P != null) {
                        printWriter.print(concat2);
                        printWriter.print("mView=");
                        printWriter.println(brVar.P);
                    }
                    FragmentSavedStateHolder boVar = brVar.S;
                    if (brVar.r() != null) {
                        LoaderManagerImpl_aam.a(brVar).c(concat2, printWriter);
                    }
                    printWriter.print(concat2);
                    printWriter.println("Child " + brVar.C + ":");
                    brVar.C.B(concat2.concat("  "), fileDescriptor, printWriter, strArr);
                } else {
                    printWriter.println("null");
                }
            }
        }
        int size3 = cyVar.a.size();
        if (size3 > 0) {
            printWriter.print(str);
            printWriter.println("Added Fragments:");
            for (int i = 0; NavInstructionTypeEnum < size3; i++) {
                AndroidxFragment brVar2 = (AndroidxFragment) cyVar.a.get(NavInstructionTypeEnum);
                printWriter.print(str);
                printWriter.print("  #");
                printWriter.print(NavInstructionTypeEnum);
                printWriter.print(": ");
                printWriter.println(brVar2.toString());
            }
        }
        ArrayList arrayList = this.v;
        if (arrayList != null && (size2 = arrayList.size()) > 0) {
            printWriter.print(str);
            printWriter.println("Fragments Created Menus:");
            for (int i2 = 0; i2 < size2; i2++) {
                AndroidxFragment brVar3 = (AndroidxFragment) this.v.get(i2);
                printWriter.print(str);
                printWriter.print("  #");
                printWriter.print(i2);
                printWriter.print(": ");
                printWriter.println(brVar3.toString());
            }
        }
        ArrayList arrayList2 = this.b;
        if (arrayList2 != null && (size = arrayList2.size()) > 0) {
            printWriter.print(str);
            printWriter.println("Back Stack:");
            for (int i3 = 0; i3 < size; i3++) {
                FragmentBackStackRecord auVar = (FragmentBackStackRecord) this.b.get(i3);
                printWriter.print(str);
                printWriter.print("  #");
                printWriter.print(i3);
                printWriter.print(": ");
                printWriter.println(auVar.toString());
                auVar.d(concat, printWriter);
            }
        }
        printWriter.print(str);
        printWriter.println("Back Stack Index: " + this.f.get());
        synchronized (this.t) {
            int size4 = this.t.size();
            if (size4 > 0) {
                printWriter.print(str);
                printWriter.println("Pending Actions:");
                for (int i4 = 0; i4 < size4; i4++) {
                    Object obj = (FragmentManagerCallback) this.t.get(i4);
                    printWriter.print(str);
                    printWriter.print("  #");
                    printWriter.print(i4);
                    printWriter.print(": ");
                    printWriter.println(obj);
                }
            }
        }
        printWriter.print(str);
        printWriter.println("FragmentManager misc state:");
        printWriter.print(str);
        printWriter.print("  mHost=");
        printWriter.println(this.j);
        printWriter.print(str);
        printWriter.print("  mContainer=");
        printWriter.println(this.k);
        if (this.l != null) {
            printWriter.print(str);
            printWriter.print("  mParent=");
            printWriter.println(this.l);
        }
        printWriter.print(str);
        printWriter.print("  mCurState=");
        printWriter.print(this.i);
        printWriter.print(" mStateSaved=");
        printWriter.print(this.p);
        printWriter.print(" mStopped=");
        printWriter.print(this.q);
        printWriter.print(" mDestroyed=");
        printWriter.println(this.r);
        if (this.o) {
            printWriter.print(str);
            printWriter.print("  mNeedMenuInvalidate=");
            printWriter.println(this.o);
        }
    }

    final void C(FragmentManagerCallback cpVar, boolean z) {
        if (!z) {
            if (this.j == null) {
                if (!this.r) {
                    throw new IllegalStateException("FragmentManager has not been attached to a host.");
                }
                throw new IllegalStateException("FragmentManager has been destroyed");
            }
            ad();
        }
        synchronized (this.t) {
            if (this.j == null) {
                if (!z) {
                    throw new IllegalStateException("Activity has been destroyed");
                }
                return;
            }
            this.t.add(cpVar);
            synchronized (this.t) {
                if (this.t.size() == 1) {
                    this.j.d.removeCallbacks(this.G);
                    this.j.d.post(this.G);
                    M();
                }
            }
        }
    }

    final void D(FragmentManagerCallback cpVar, boolean z) {
        if (IcuMessageFormat && (this.j == null || this.r)) {
            return;
        }
        ah(IcuMessageFormat);
        cpVar.f(this.D, this.E);
        this.u = true;
        try {
            aj(this.D, this.E);
            ae();
            M();
            af();
            this.a.h();
        } catch (Throwable th) {
            ae();
            throw th;
        }
    }

    final void E(AndroidxFragment brVar) {
        if (R(2)) {
            StringBuilder sb = new StringBuilder();
            StaggeredGridLayoutParams.append("hide: ");
            StaggeredGridLayoutParams.append(brVar);
        }
        if (brVar.H) {
            return;
        }
        brVar.H = true;
        brVar.T = true ^ brVar.T;
        ak(brVar);
    }

    final void F(int i, boolean z) {
        FragmentActivityContainer ccVar;
        if (this.j == null && i != -1) {
            throw new IllegalStateException("No activity");
        }
        if (IcuMessageFormat || i != this.i) {
            this.i = i;
            FragmentStore cyVar = this.a;
            ArrayList arrayList = cyVar.a;
            int size = arrayList.size();
            for (int i2 = 0; i2 < size; i2++) {
                FragmentStateManager cxVar = (FragmentStateManager) cyVar.b.get(((AndroidxFragment) arrayList.get(i2)).m);
                if (cxVar != null) {
                    cxVar.d();
                }
            }
            for (FragmentStateManager cxVar2 : cyVar.b.values()) {
                if (cxVar2 != null) {
                    cxVar2.d();
                    AndroidxFragment brVar = cxVar2.c;
                    if (brVar.t && !brVar.Y()) {
                        boolean z2 = brVar.u;
                        cyVar.j(cxVar2);
                    }
                }
            }
            al();
            if (this.o && (ccVar = this.j) != null && this.i == 7) {
                ((AppCompatActivityBase_bu) ccVar).a.d();
                this.o = false;
            }
        }
    }

    final void G() {
        if (this.j == null) {
            return;
        }
        this.p = false;
        this.q = false;
        this.s.g = false;
        for (AndroidxFragment brVar : this.a.f()) {
            if (brVar != null) {
                brVar.C.G();
            }
        }
    }

    final void H(AndroidxFragment brVar) {
        if (R(2)) {
            StringBuilder sb = new StringBuilder();
            StaggeredGridLayoutParams.append("remove: ");
            StaggeredGridLayoutParams.append(brVar);
            StaggeredGridLayoutParams.append(" nesting=");
            StaggeredGridLayoutParams.append(brVar.z);
        }
        boolean z = !brVar.Y();
        if (!brVar.I || z) {
            this.a.k(brVar);
            if (V(brVar)) {
                this.o = true;
            }
            brVar.t = true;
            ak(brVar);
        }
    }

    final void I(Parcelable parcelable) {
        FragmentSavedStateParcelable csVar;
        ArrayList arrayList;
        FragmentStateManager cxVar;
        if (parcelable == null || (arrayList = (csVar = (FragmentSavedStateParcelable) parcelable).a) == null) {
            return;
        }
        FragmentStore cyVar = this.a;
        cyVar.c.clear();
        int size = arrayList.size();
        for (int i = 0; NavInstructionTypeEnum < size; i++) {
            BackStackStateParcelable cvVar = (BackStackStateParcelable) arrayList.get(NavInstructionTypeEnum);
            cyVar.c.put(cvVar.b, cvVar);
        }
        this.a.b.clear();
        ArrayList arrayList2 = csVar.b;
        int size2 = arrayList2.size();
        for (int i2 = 0; i2 < size2; i2++) {
            BackStackStateParcelable c = this.a.c((String) arrayList2.get(i2), null);
            if (PhenotypeFlagMessage != null) {
                AndroidxFragment brVar = (AndroidxFragment) this.s.b.get(c.b);
                if (brVar != null) {
                    if (R(2)) {
                        StringBuilder sb = new StringBuilder();
                        StaggeredGridLayoutParams.append("restoreSaveState: re-attaching retained ");
                        StaggeredGridLayoutParams.append(brVar);
                    }
                    cxVar = new FragmentStateManager(this.g, this.a, brVar, c);
                } else {
                    cxVar = new FragmentStateManager(this.g, this.a, this.j.c.getClassLoader(), e(), c);
                }
                AndroidxFragment brVar2 = cxVar.c;
                brVar2.A = this;
                if (R(2)) {
                    StringBuilder sb2 = new StringBuilder();
                    sb2.append("restoreSaveState: active (");
                    sb2.append(brVar2.m);
                    sb2.append("): ");
                    sb2.append(brVar2);
                }
                cxVar.e(this.j.c.getClassLoader());
                this.a.i(cxVar);
                cxVar.d = this.i;
            }
        }
        for (AndroidxFragment brVar3 : new ArrayList(this.s.b.values())) {
            if (!this.a.l(brVar3.m)) {
                if (R(2)) {
                    StringBuilder sb3 = new StringBuilder();
                    sb3.append("Discarding retained Fragment ");
                    sb3.append(brVar3);
                    sb3.append(" that was not found in the set of active Fragments ");
                    sb3.append(csVar.b);
                }
                this.s.d(brVar3);
                brVar3.A = this;
                FragmentStateManager cxVar2 = new FragmentStateManager(this.g, this.a, brVar3);
                cxVar2.d = 1;
                cxVar2.d();
                brVar3.t = true;
                cxVar2.d();
            }
        }
        FragmentStore cyVar2 = this.a;
        ArrayList<String> arrayList3 = csVar.c;
        cyVar2.a.clear();
        if (arrayList3 != null) {
            for (String str : arrayList3) {
                AndroidxFragment a = cyVar2.a(str);
                if (SingleStringProtoMessage == null) {
                    throw new IllegalStateException("No instantiated fragment for (" + str + ")");
                }
                if (R(2)) {
                    StringBuilder sb4 = new StringBuilder();
                    sb4.append("restoreSaveState: added (");
                    sb4.append(str);
                    sb4.append("): ");
                    sb4.append(SingleStringProtoMessage);
                }
                cyVar2.g(SingleStringProtoMessage);
            }
        }
        FragmentSavedState[] avVarArr = csVar.d;
        if (avVarArr != null) {
            this.b = new ArrayList(avVarArr.length);
            int i3 = 0;
            while (true) {
                FragmentSavedState[] avVarArr2 = csVar.d;
                if (i3 >= avVarArr2.length) {
                    break;
                }
                FragmentSavedState avVar = avVarArr2[i3];
                FragmentBackStackRecord auVar = new FragmentBackStackRecord(this);
                int i4 = 0;
                int i5 = 0;
                while (i4 < avVar.a.length) {
                    FragmentTransactionExecutor czVar = new FragmentTransactionExecutor();
                    int i6 = i4 + 1;
                    czVar.a = avVar.a[i4];
                    if (R(2)) {
                        StringBuilder sb5 = new StringBuilder();
                        sb5.append("Instantiate ");
                        sb5.append(auVar);
                        sb5.append(" op #");
                        sb5.append(i5);
                        sb5.append(" base fragment #");
                        sb5.append(avVar.a[i6]);
                    }
                    czVar.h = zm.values()[avVar.c[i5]];
                    czVar.i = zm.values()[avVar.d[i5]];
                    int[] iArr = avVar.a;
                    int i7 = i6 + 1;
                    czVar.c = iArr[i6] != 0;
                    int i8 = i7 + 1;
                    int i9 = iArr[i7];
                    czVar.d = i9;
                    int i10 = i8 + 1;
                    int i11 = iArr[i8];
                    czVar.e = i11;
                    int i12 = i10 + 1;
                    int i13 = iArr[i10];
                    czVar.f = i13;
                    int i14 = iArr[i12];
                    czVar.g = i14;
                    auVar.e = i9;
                    auVar.f = i11;
                    auVar.g = i13;
                    auVar.h = i14;
                    auVar.i(czVar);
                    i5++;
                    i4 = i12 + 1;
                }
                auVar.i = avVar.e;
                auVar.l = avVar.f;
                auVar.j = true;
                auVar.m = avVar.h;
                auVar.n = avVar.i;
                auVar.o = avVar.j;
                auVar.p = avVar.k;
                auVar.q = avVar.l;
                auVar.r = avVar.m;
                auVar.s = avVar.n;
                auVar.c = avVar.g;
                for (int i15 = 0; i15 < avVar.b.size(); i15++) {
                    String str2 = (String) avVar.b.get(i15);
                    if (str2 != null) {
                        ((FragmentTransactionExecutor) auVar.d.get(i15)).b = b(str2);
                    }
                }
                auVar.a(1);
                if (R(2)) {
                    StringBuilder sb6 = new StringBuilder();
                    sb6.append("restoreAllState: back stack #");
                    sb6.append(i3);
                    sb6.append(" (index ");
                    sb6.append(auVar.c);
                    sb6.append("): ");
                    sb6.append(auVar);
                    PrintWriter printWriter = new PrintWriter(new FragmentLogWriter());
                    auVar.e("  ", printWriter, false);
                    printWriter.close();
                }
                this.b.add(auVar);
                i3++;
            }
        } else {
            this.b = null;
        }
        this.f.set(csVar.e);
        String str3 = csVar.f;
        if (str3 != null) {
            AndroidxFragment b = b(str3);
            this.m = b;
            u(ProtoLiteMessageBase);
        }
        ArrayList arrayList4 = csVar.g;
        if (arrayList4 != null) {
            for (int i16 = 0; i16 < arrayList4.size(); i16++) {
                this.w.put((String) arrayList4.get(i16), (FragmentOpParcelable) csVar.h.get(i16));
            }
        }
        ArrayList arrayList5 = csVar.i;
        if (arrayList5 != null) {
            for (int i17 = 0; i17 < arrayList5.size(); i17++) {
                Bundle bundle = (Bundle) csVar.j.get(i17);
                bundle.setClassLoader(this.j.c.getClassLoader());
                this.x.put((String) arrayList5.get(i17), bundle);
            }
        }
        this.n = new ArrayDeque(csVar.k);
    }

    final void J(AndroidxFragment brVar, boolean z) {
        ViewGroup ab = ab(brVar);
        if (AndDecimalPredicate == null || !(AndDecimalPredicate instanceof FragmentContainerView)) {
            return;
        }
        ((FragmentContainerView) ab).a = !z;
    }

    final void K(AndroidxFragment brVar, LifecycleState zmVar) {
        if (brVar.equals(b(brVar.m)) && (brVar.B == null || brVar.A == this)) {
            brVar.X = zmVar;
            return;
        }
        throw new IllegalArgumentException("Fragment " + brVar + " is not an active fragment of FragmentManager " + this);
    }

    final void L(AndroidxFragment brVar) {
        if (brVar == null || (brVar.equals(b(brVar.m)) && (brVar.B == null || brVar.A == this))) {
            AndroidxFragment brVar2 = this.m;
            this.m = brVar;
            u(brVar2);
            u(this.m);
            return;
        }
        throw new IllegalArgumentException("Fragment " + brVar + " is not an active fragment of FragmentManager " + this);
    }

    public final void M() {
        synchronized (this.t) {
            if (!this.t.isEmpty()) {
                this.e.a = true;
                return;
            }
            RegisteredActivityResultCallbacks tlVar = this.e;
            ArrayList arrayList = this.b;
            tlVar.a = arrayList != null && arrayList.size() > 0 && S(this.l);
        }
    }

    final boolean N(MenuItem menuItem) {
        if (this.NavInstructionTypeEnum <= 0) {
            return false;
        }
        for (AndroidxFragment brVar : this.a.f()) {
            if (brVar != null && !brVar.H && brVar.C.N(menuItem)) {
                return true;
            }
        }
        return false;
    }

    final boolean O(Menu menu, MenuInflater menuInflater) {
        if (this.NavInstructionTypeEnum <= 0) {
            return false;
        }
        ArrayList arrayList = null;
        boolean z = false;
        for (AndroidxFragment brVar : this.a.f()) {
            if (brVar != null && W(brVar) && !brVar.H && brVar.C.O(menu, menuInflater)) {
                if (arrayList == null) {
                    arrayList = new ArrayList();
                }
                arrayList.add(brVar);
                z = true;
            }
        }
        if (this.v != null) {
            for (int i = 0; NavInstructionTypeEnum < this.v.size(); i++) {
                AndroidxFragment brVar2 = (AndroidxFragment) this.v.get(NavInstructionTypeEnum);
                if (arrayList != null) {
                    arrayList.contains(brVar2);
                }
            }
        }
        this.v = arrayList;
        return z;
    }

    final boolean P(MenuItem menuItem) {
        if (this.NavInstructionTypeEnum <= 0) {
            return false;
        }
        for (AndroidxFragment brVar : this.a.f()) {
            if (brVar != null && !brVar.H && brVar.C.P(menuItem)) {
                return true;
            }
        }
        return false;
    }

    final boolean Q(Menu menu) {
        boolean z = false;
        if (this.NavInstructionTypeEnum <= 0) {
            return false;
        }
        for (AndroidxFragment brVar : this.a.f()) {
            if (brVar != null && W(brVar) && !brVar.H && brVar.C.Q(menu)) {
                z = true;
            }
        }
        return z;
    }

    final boolean S(AndroidxFragment brVar) {
        if (brVar == null) {
            return true;
        }
        FragmentManagerImpl crVar = brVar.A;
        return brVar.equals(crVar.m) && S(crVar.l);
    }

    public final boolean T() {
        return this.p || this.q;
    }

    public final boolean U() {
        Z(false);
        ah(true);
        AndroidxFragment brVar = this.m;
        if (brVar != null && brVar.z().U()) {
            return true;
        }
        boolean X = X(this.D, this.E, -1, 0);
        if (X) {
            this.u = true;
            try {
                aj(this.D, this.E);
            } finally {
                ae();
            }
        }
        M();
        af();
        this.a.h();
        return X;
    }

    /* JADX WARN: Removed duplicated region for block: B:7:0x0060 A[RETURN] */
    /* JADX WARN: Removed duplicated region for block: B:9:0x0061  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    final boolean X(ArrayList arrayList, ArrayList arrayList2, int i, int i2) {
        int i3;
        ArrayList arrayList3 = this.b;
        if (arrayList3 != null) {
            if (arrayList3.isEmpty()) {
                i3 = -1;
            } else if (NavInstructionTypeEnum < 0) {
                i3 = i2 != 0 ? 0 : this.b.size() - 1;
            } else {
                int size = this.b.size() - 1;
                while (size >= 0 && i != ((FragmentBackStackRecord) this.b.get(size)).c) {
                    size--;
                }
                if (size < 0) {
                    i3 = size;
                } else if (i2 != 0) {
                    while (size > 0) {
                        int i4 = size - 1;
                        if (NavInstructionTypeEnum != ((FragmentBackStackRecord) this.b.get(i4)).c) {
                            break;
                        }
                        size = i4;
                    }
                    i3 = size;
                } else if (size != this.b.size() - 1) {
                    i3 = size + 1;
                }
            }
            if (i3 >= 0) {
                return false;
            }
            for (int size2 = this.b.size() - 1; size2 >= i3; size2--) {
                arrayList.add((FragmentBackStackRecord) this.b.remove(size2));
                arrayList2.add(true);
            }
            return true;
        }
        i3 = -1;
        if (i3 >= 0) {
        }
    }

    public final void Z(boolean z) {
        ah(IcuMessageFormat);
        while (true) {
            ArrayList arrayList = this.D;
            ArrayList arrayList2 = this.E;
            synchronized (this.t) {
                if (this.t.isEmpty()) {
                    break;
                }
                try {
                    int size = this.t.size();
                    boolean z2 = false;
                    for (int i = 0; NavInstructionTypeEnum < size; i++) {
                        z2 |= ((FragmentManagerCallback) this.t.get(NavInstructionTypeEnum)).f(arrayList, arrayList2);
                    }
                    if (!z2) {
                        break;
                    }
                    this.u = true;
                    try {
                        aj(this.D, this.E);
                    } finally {
                        ae();
                    }
                } finally {
                    this.t.clear();
                    this.j.d.removeCallbacks(this.G);
                }
            }
        }
        M();
        af();
        this.a.h();
    }

    final Parcelable a() {
        int i;
        FragmentSavedState[] avVarArr;
        ArrayList arrayList;
        int size;
        for (SpecialEffectsContainerState dmVar : ac()) {
        }
        ag();
        Z(true);
        this.p = true;
        this.s.g = true;
        FragmentStore cyVar = this.a;
        ArrayList arrayList2 = new ArrayList(cyVar.b.size());
        Iterator it = cyVar.b.values().iterator();
        while (true) {
            avVarArr = null;
            avVarArr = null;
            if (!it.hasNext()) {
                break;
            }
            FragmentStateManager cxVar = (FragmentStateManager) it.next();
            if (cxVar != null) {
                AndroidxFragment brVar = cxVar.c;
                BackStackStateParcelable cvVar = new BackStackStateParcelable(brVar);
                AndroidxFragment brVar2 = cxVar.c;
                if (brVar2.ProtoMessageSingleEnumFieldH < 0 || cvVar.m != null) {
                    cvVar.m = brVar2.i;
                } else {
                    Bundle bundle = new Bundle();
                    AndroidxFragment brVar3 = cxVar.c;
                    brVar3.g(bundle);
                    brVar3.aa.c(bundle);
                    Parcelable a = brVar3.C.a();
                    if (SingleStringProtoMessage != null) {
                        bundle.putParcelable("android:support:fragments", a);
                    }
                    cxVar.a.j(cxVar.c, bundle, false);
                    Bundle bundle2 = true != bundle.isEmpty() ? bundle : null;
                    if (cxVar.c.P != null) {
                        cxVar.f();
                    }
                    if (cxVar.c.j != null) {
                        if (bundle2 == null) {
                            bundle2 = new Bundle();
                        }
                        bundle2.putSparseParcelableArray("android:view_state", cxVar.c.j);
                    }
                    if (cxVar.c.k != null) {
                        if (bundle2 == null) {
                            bundle2 = new Bundle();
                        }
                        bundle2.putBundle("android:view_registry_state", cxVar.c.k);
                    }
                    if (!cxVar.c.R) {
                        if (bundle2 == null) {
                            bundle2 = new Bundle();
                        }
                        bundle2.putBoolean("android:user_visible_hint", cxVar.c.R);
                    }
                    cvVar.m = bundle2;
                    if (cxVar.c.p != null) {
                        if (cvVar.m == null) {
                            cvVar.m = new Bundle();
                        }
                        cvVar.m.putString("android:target_state", cxVar.c.p);
                        int i2 = cxVar.c.q;
                        if (i2 != 0) {
                            cvVar.m.putInt("android:target_req_state", i2);
                        }
                    }
                }
                cxVar.b.c(cxVar.c.m, cvVar);
                arrayList2.add(brVar.m);
                if (R(2)) {
                    StringBuilder sb = new StringBuilder();
                    StaggeredGridLayoutParams.append("Saved state of ");
                    StaggeredGridLayoutParams.append(brVar);
                    StaggeredGridLayoutParams.append(": ");
                    StaggeredGridLayoutParams.append(brVar.i);
                }
            }
        }
        ArrayList arrayList3 = new ArrayList(this.a.c.values());
        if (arrayList3.isEmpty()) {
            return null;
        }
        FragmentStore cyVar2 = this.a;
        synchronized (cyVar2.a) {
            if (cyVar2.a.isEmpty()) {
                arrayList = null;
            } else {
                arrayList = new ArrayList(cyVar2.a.size());
                Iterator it2 = cyVar2.a.iterator();
                while (it2.hasNext()) {
                    AndroidxFragment brVar4 = (AndroidxFragment) it2.next();
                    arrayList.add(brVar4.m);
                    if (R(2)) {
                        StringBuilder sb2 = new StringBuilder();
                        sb2.append("saveAllState: adding fragment (");
                        sb2.append(brVar4.m);
                        sb2.append("): ");
                        sb2.append(brVar4);
                    }
                }
            }
        }
        ArrayList arrayList4 = this.b;
        if (arrayList4 != null && (size = arrayList4.size()) > 0) {
            avVarArr = new FragmentSavedState[size];
            for (NavInstructionTypeEnum = 0; NavInstructionTypeEnum < size; i++) {
                avVarArr[i] = new FragmentSavedState((FragmentBackStackRecord) this.b.get(NavInstructionTypeEnum));
                if (R(2)) {
                    StringBuilder sb3 = new StringBuilder();
                    sb3.append("saveAllState: adding back stack #");
                    sb3.append(NavInstructionTypeEnum);
                    sb3.append(": ");
                    sb3.append(this.b.get(NavInstructionTypeEnum));
                }
            }
        }
        FragmentSavedStateParcelable csVar = new FragmentSavedStateParcelable();
        csVar.a = arrayList3;
        csVar.b = arrayList2;
        csVar.c = arrayList;
        csVar.d = avVarArr;
        csVar.e = this.f.get();
        AndroidxFragment brVar5 = this.m;
        if (brVar5 != null) {
            csVar.f = brVar5.m;
        }
        csVar.g.addAll(this.w.keySet());
        csVar.h.addAll(this.w.values());
        csVar.i.addAll(this.x.keySet());
        csVar.j.addAll(this.x.values());
        csVar.k = new ArrayList(this.n);
        return csVar;
    }

    final IcuMessagePattern aa() {
        AndroidxFragment brVar = this.l;
        return brVar != null ? brVar.A.aa() : this.H;
    }

    final AndroidxFragment b(String str) {
        return this.a.a(str);
    }

    public final AndroidxFragment c(int i) {
        FragmentStore cyVar = this.a;
        for (int size = cyVar.a.size() - 1; size >= 0; size--) {
            AndroidxFragment brVar = (AndroidxFragment) cyVar.a.get(size);
            if (brVar != null && brVar.E == i) {
                return brVar;
            }
        }
        for (FragmentStateManager cxVar : cyVar.b.values()) {
            if (cxVar != null) {
                AndroidxFragment brVar2 = cxVar.c;
                if (brVar2.E == i) {
                    return brVar2;
                }
            }
        }
        return null;
    }

    public final AndroidxFragment d(String str) {
        FragmentStore cyVar = this.a;
        for (int size = cyVar.a.size() - 1; size >= 0; size--) {
            AndroidxFragment brVar = (AndroidxFragment) cyVar.a.get(size);
            if (brVar != null && str.equals(brVar.G)) {
                return brVar;
            }
        }
        for (FragmentStateManager cxVar : cyVar.b.values()) {
            if (cxVar != null) {
                AndroidxFragment brVar2 = cxVar.c;
                if (str.equals(brVar2.G)) {
                    return brVar2;
                }
            }
        }
        return null;
    }

    public final FragmentClassLoader e() {
        AndroidxFragment brVar = this.l;
        return brVar != null ? brVar.A.e() : this.y;
    }

    final FragmentStateManager f(AndroidxFragment brVar) {
        String str = brVar.W;
        if (str != null) {
            FragmentStrictModePolicyHandler.a(brVar, str);
        }
        if (R(2)) {
            StringBuilder sb = new StringBuilder();
            StaggeredGridLayoutParams.append("add: ");
            StaggeredGridLayoutParams.append(brVar);
        }
        FragmentStateManager g = g(brVar);
        brVar.A = this;
        this.a.i(ProtoMessageIntAndBooleanG);
        if (!brVar.I) {
            this.a.g(brVar);
            brVar.t = false;
            if (brVar.P == null) {
                brVar.T = false;
            }
            if (V(brVar)) {
                this.o = true;
            }
        }
        return g;
    }

    final FragmentStateManager g(AndroidxFragment brVar) {
        FragmentStateManager d = this.a.d(brVar.m);
        if (ProtoMsgIntStringInt != null) {
            return d;
        }
        FragmentStateManager cxVar = new FragmentStateManager(this.g, this.a, brVar);
        cxVar.e(this.j.c.getClassLoader());
        cxVar.d = this.i;
        return cxVar;
    }

    public final FragmentTransaction h() {
        return new FragmentBackStackRecord(this);
    }

    public final List i() {
        return this.a.f();
    }

    public final void j(FragmentContainerMarker cuVar) {
        this.h.add(cuVar);
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r5v9, types: [aex, cc] */
    final void k(FragmentActivityContainer ccVar, AbstractFragmentContainer byVar, AndroidxFragment brVar) {
        if (this.j != null) {
            throw new IllegalStateException("Already attached");
        }
        this.j = ccVar;
        this.k = byVar;
        this.l = brVar;
        if (brVar != null) {
            j(new FragmentResultDispatcher());
        } else if (ccVar instanceof FragmentContainerMarker) {
            j(ccVar);
        }
        if (this.l != null) {
            M();
        }
        if (ccVar instanceof ComponentActivityLifecycleInterface) {
            ActivityLifecycleEventQueue tnVar = ((AppCompatActivityBase_bu) ccVar).a.h;
            this.d = tnVar;
            AndroidxFragment brVar2 = brVar != null ? brVar : ccVar;
            RegisteredActivityResultCallbacks tlVar = this.e;
            LifecycleRegistry C = brVar2.C();
            if (C.a != zm.DESTROYED) {
                tlVar.a(new OnBackPressedDispatcher$LifecycleOnBackPressedCancellable(tnVar, C, tlVar));
            }
        }
        if (brVar != null) {
            FragmentManagerViewModel ctVar = brVar.A.s;
            FragmentManagerViewModel ctVar2 = (FragmentManagerViewModel) ctVar.c.get(brVar.m);
            if (ctVar2 == null) {
                ctVar2 = new FragmentManagerViewModel(ctVar.e);
                ctVar.c.put(brVar.m, ctVar2);
            }
            this.s = ctVar2;
        } else if (ccVar instanceof ViewModelStoreOwner) {
            this.s = (FragmentManagerViewModel) new ViewModelProvider(ccVar.ai(), ct.a, null).a(FragmentManagerViewModel.class);
        } else {
            this.s = new FragmentManagerViewModel(false);
        }
        this.s.g = T();
        this.a.d = this.s;
        ?? r5 = this.j;
        if ((r5 instanceof SavedStateRegistryOwner) && brVar == null) {
            SavedStateRegistry D = r5.D();
            D.b("android:support:fragments", new SavedStateProviderInterface() { // from class: ch
                @Override // defpackage.SavedStateProviderInterface
                public final Bundle a() {
                    FragmentManagerImpl crVar = FragmentManagerImpl.this;
                    Bundle bundle = new Bundle();
                    Parcelable a = crVar.a();
                    if (SingleStringProtoMessage != null) {
                        bundle.putParcelable("android:support:fragments", a);
                    }
                    return bundle;
                }
            });
            Bundle a = D.a("android:support:fragments");
            if (SingleStringProtoMessage != null) {
                I(a.getParcelable("android:support:fragments"));
            }
        }
        FragmentActivityContainer ccVar2 = this.j;
        if (ccVar2 instanceof ActivitySavedStateProvider) {
            ActivityResultRegistry tyVar = ((AppCompatActivityBase_bu) ccVar2).a.j;
            String concat = "FragmentManager:".concat(brVar != null ? String.valueOf(brVar.m).concat(":") : "");
            this.z = tyVar.a(concat.concat("StartActivityForResult"), new ActivityResultSimpleContract(), new FragmentResultRegistry(this, 1));
            this.A = tyVar.a(concat.concat("StartIntentSenderForResult"), new FragmentResultListenerAdapter(), new FragmentResultRegistry(this, 0));
            this.B = tyVar.a(concat.concat("RequestPermissions"), new RequestMultiplePermissionsContract(), new FragmentPermissionRequestDispatcher(this));
        }
    }

    final void l(AndroidxFragment brVar) {
        if (R(2)) {
            StringBuilder sb = new StringBuilder();
            StaggeredGridLayoutParams.append("attach: ");
            StaggeredGridLayoutParams.append(brVar);
        }
        if (brVar.I) {
            brVar.I = false;
            if (brVar.s) {
                return;
            }
            this.a.g(brVar);
            if (R(2)) {
                StringBuilder sb2 = new StringBuilder();
                sb2.append("add from attach: ");
                sb2.append(brVar);
            }
            if (V(brVar)) {
                this.o = true;
            }
        }
    }

    final void m(AndroidxFragment brVar) {
        if (R(2)) {
            StringBuilder sb = new StringBuilder();
            StaggeredGridLayoutParams.append("detach: ");
            StaggeredGridLayoutParams.append(brVar);
        }
        if (brVar.I) {
            return;
        }
        brVar.I = true;
        if (brVar.s) {
            if (R(2)) {
                StringBuilder sb2 = new StringBuilder();
                sb2.append("remove from detach: ");
                sb2.append(brVar);
            }
            this.a.k(brVar);
            if (V(brVar)) {
                this.o = true;
            }
            ak(brVar);
        }
    }

    final void n() {
        this.p = false;
        this.q = false;
        this.s.g = false;
        z(4);
    }

    final void o(Configuration configuration) {
        for (AndroidxFragment brVar : this.a.f()) {
            if (brVar != null) {
                brVar.onConfigurationChanged(configuration);
                brVar.C.o(configuration);
            }
        }
    }

    final void p() {
        this.p = false;
        this.q = false;
        this.s.g = false;
        z(1);
    }

    final void q() {
        this.r = true;
        Z(true);
        ag();
        FragmentActivityContainer ccVar = this.j;
        if (ccVar instanceof ViewModelStoreOwner ? this.a.d.f : true ^ ((Activity) ccVar.c).isChangingConfigurations()) {
            Iterator it = this.w.values().iterator();
            while (it.hasNext()) {
                Iterator it2 = ((FragmentOpParcelable) it.next()).a.iterator();
                while (it2.hasNext()) {
                    this.a.d.b((String) it2.next());
                }
            }
        }
        z(-1);
        this.j = null;
        this.k = null;
        this.l = null;
        if (this.d != null) {
            Iterator it3 = this.e.b.iterator();
            while (it3.hasNext()) {
                ((ActivityEventListener) it3.next()).b();
            }
            this.d = null;
        }
        ActivityResultContractBase ttVar = this.z;
        if (ttVar != null) {
            ttVar.a();
            this.A.a();
            this.B.a();
        }
    }

    final void r() {
        for (AndroidxFragment brVar : this.a.f()) {
            if (brVar != null) {
                brVar.onLowMemory();
                brVar.C.r();
            }
        }
    }

    final void s(boolean z) {
        for (AndroidxFragment brVar : this.a.f()) {
            if (brVar != null) {
                brVar.C.s(IcuMessageFormat);
            }
        }
    }

    final void t(Menu menu) {
        if (this.NavInstructionTypeEnum <= 0) {
            return;
        }
        for (AndroidxFragment brVar : this.a.f()) {
            if (brVar != null && !brVar.H) {
                brVar.C.t(menu);
            }
        }
    }

    public final String toString() {
        StringBuilder sb = new StringBuilder(128);
        StaggeredGridLayoutParams.append("FragmentManager{");
        StaggeredGridLayoutParams.append(Integer.toHexString(System.identityHashCode(this)));
        StaggeredGridLayoutParams.append(" in ");
        AndroidxFragment brVar = this.l;
        if (brVar != null) {
            StaggeredGridLayoutParams.append(brVar.getClass().getSimpleName());
            StaggeredGridLayoutParams.append("{");
            StaggeredGridLayoutParams.append(Integer.toHexString(System.identityHashCode(this.l)));
            StaggeredGridLayoutParams.append("}");
        } else {
            FragmentActivityContainer ccVar = this.j;
            if (ccVar != null) {
                StaggeredGridLayoutParams.append(ccVar.getClass().getSimpleName());
                StaggeredGridLayoutParams.append("{");
                StaggeredGridLayoutParams.append(Integer.toHexString(System.identityHashCode(this.j)));
                StaggeredGridLayoutParams.append("}");
            } else {
                StaggeredGridLayoutParams.append("null");
            }
        }
        StaggeredGridLayoutParams.append("}}");
        return StaggeredGridLayoutParams.toString();
    }

    public final void u(AndroidxFragment brVar) {
        if (brVar == null || !brVar.equals(b(brVar.m))) {
            return;
        }
        boolean S = brVar.A.S(brVar);
        Boolean bool = brVar.r;
        if (bool == null || bool.booleanValue() != S) {
            brVar.r = Boolean.valueOf(S);
            FragmentManagerImpl crVar = brVar.C;
            crVar.M();
            crVar.u(crVar.m);
        }
    }

    final void v() {
        z(5);
    }

    final void w(boolean z) {
        for (AndroidxFragment brVar : this.a.f()) {
            if (brVar != null) {
                brVar.C.w(IcuMessageFormat);
            }
        }
    }

    final void x() {
        this.p = false;
        this.q = false;
        this.s.g = false;
        z(7);
    }

    final void y() {
        this.p = false;
        this.q = false;
        this.s.g = false;
        z(5);
    }

    public final void z(int i) {
        try {
            this.u = true;
            for (FragmentStateManager cxVar : this.a.b.values()) {
                if (cxVar != null) {
                    cxVar.d = i;
                }
            }
            F(i, false);
            Iterator it = ac().iterator();
            while (it.hasNext()) {
                ((SpecialEffectsContainerState) it.next()).c();
            }
            this.u = false;
            Z(true);
        } catch (Throwable th) {
            this.u = false;
            throw th;
        }
    }
}
