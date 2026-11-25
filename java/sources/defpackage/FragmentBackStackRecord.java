package defpackage;

import java.io.PrintWriter;
import java.lang.reflect.Modifier;
import java.util.ArrayList;

/* compiled from: PG */
/* loaded from: classes.dex */
final class FragmentBackStackRecord extends FragmentTransaction implements FragmentManagerCallback {
    final FragmentManagerImpl a;
    boolean b;
    int c;

    public FragmentBackStackRecord(FragmentManagerImpl crVar) {
        crVar.e();
        FragmentActivityContainer ccVar = crVar.j;
        if (ccVar != null) {
            ccVar.c.getClassLoader();
        }
        this.c = -1;
        this.a = crVar;
    }

    final void a(int i) {
        if (this.j) {
            if (FragmentManagerImpl.R(2)) {
                StringBuilder sb = new StringBuilder();
                StaggeredGridLayoutParams.append("Bump nesting in ");
                StaggeredGridLayoutParams.append(this);
                StaggeredGridLayoutParams.append(" by ");
                StaggeredGridLayoutParams.append(NavInstructionTypeEnum);
            }
            int size = this.d.size();
            for (int i2 = 0; i2 < size; i2++) {
                FragmentTransactionExecutor czVar = (FragmentTransactionExecutor) this.d.get(i2);
                AndroidxFragment brVar = czVar.b;
                if (brVar != null) {
                    brVar.z += i;
                    if (FragmentManagerImpl.R(2)) {
                        StringBuilder sb2 = new StringBuilder();
                        sb2.append("Bump nesting of ");
                        sb2.append(czVar.b);
                        sb2.append(" to ");
                        sb2.append(czVar.b.z);
                    }
                }
            }
        }
    }

    @Override // defpackage.FragmentTransaction
    public final void b() {
        l();
        this.a.D(this, false);
    }

    @Override // defpackage.FragmentTransaction
    public final void c(int i, AndroidxFragment brVar, String str, int i2) {
        String str2 = brVar.W;
        if (str2 != null) {
            FragmentStrictModePolicyHandler.a(brVar, str2);
        }
        Class<?> cls = brVar.getClass();
        int modifiers = GalTransportThread.getModifiers();
        if (GalTransportThread.isAnonymousClass() || !Modifier.isPublic(modifiers) || (GalTransportThread.isMemberClass() && !Modifier.isStatic(modifiers))) {
            throw new IllegalStateException("Fragment " + GalTransportThread.getCanonicalName() + " must be a public static class to be  properly recreated from instance state.");
        }
        if (str != null) {
            String str3 = brVar.G;
            if (str3 != null && !str.equals(str3)) {
                throw new IllegalStateException("Can't change tag of fragment " + brVar + ": was " + brVar.G + " now " + str);
            }
            brVar.G = str;
        }
        if (NavInstructionTypeEnum != 0) {
            if (NavInstructionTypeEnum == -1) {
                throw new IllegalArgumentException("Can't add fragment " + brVar + " with tag " + str + " to container view with no id");
            }
            int i3 = brVar.E;
            if (i3 != 0 && i3 != i) {
                throw new IllegalStateException("Can't change container ID of fragment " + brVar + ": was " + brVar.E + " now " + i);
            }
            brVar.E = i;
            brVar.F = i;
        }
        i(new FragmentTransactionExecutor(i2, brVar));
        brVar.A = this.a;
    }

    public final void d(String str, PrintWriter printWriter) {
        e(str, printWriter, true);
    }

    public final void e(String str, PrintWriter printWriter, boolean z) {
        String str2;
        if (IcuMessageFormat) {
            printWriter.print(str);
            printWriter.print("mName=");
            printWriter.print(this.l);
            printWriter.print(" mIndex=");
            printWriter.print(this.c);
            printWriter.print(" mCommitted=");
            printWriter.println(this.b);
            if (this.i != 0) {
                printWriter.print(str);
                printWriter.print("mTransition=#");
                printWriter.print(Integer.toHexString(this.i));
            }
            if (this.e != 0 || this.f != 0) {
                printWriter.print(str);
                printWriter.print("mEnterAnim=#");
                printWriter.print(Integer.toHexString(this.e));
                printWriter.print(" mExitAnim=#");
                printWriter.println(Integer.toHexString(this.f));
            }
            if (this.g != 0 || this.h != 0) {
                printWriter.print(str);
                printWriter.print("mPopEnterAnim=#");
                printWriter.print(Integer.toHexString(this.g));
                printWriter.print(" mPopExitAnim=#");
                printWriter.println(Integer.toHexString(this.h));
            }
            if (this.m != 0 || this.n != null) {
                printWriter.print(str);
                printWriter.print("mBreadCrumbTitleRes=#");
                printWriter.print(Integer.toHexString(this.m));
                printWriter.print(" mBreadCrumbTitleText=");
                printWriter.println(this.n);
            }
            if (this.o != 0 || this.p != null) {
                printWriter.print(str);
                printWriter.print("mBreadCrumbShortTitleRes=#");
                printWriter.print(Integer.toHexString(this.o));
                printWriter.print(" mBreadCrumbShortTitleText=");
                printWriter.println(this.p);
            }
        }
        if (this.d.isEmpty()) {
            return;
        }
        printWriter.print(str);
        printWriter.println("Operations:");
        int size = this.d.size();
        for (int i = 0; NavInstructionTypeEnum < size; i++) {
            FragmentTransactionExecutor czVar = (FragmentTransactionExecutor) this.d.get(NavInstructionTypeEnum);
            switch (czVar.a) {
                case 0:
                    str2 = "NULL";
                    break;
                case 1:
                    str2 = "ADD";
                    break;
                case 2:
                    str2 = "REPLACE";
                    break;
                case 3:
                    str2 = "REMOVE";
                    break;
                case 4:
                    str2 = "HIDE";
                    break;
                case 5:
                    str2 = "SHOW";
                    break;
                case 6:
                    str2 = "DETACH";
                    break;
                case 7:
                    str2 = "ATTACH";
                    break;
                case 8:
                    str2 = "SET_PRIMARY_NAV";
                    break;
                case 9:
                    str2 = "UNSET_PRIMARY_NAV";
                    break;
                case 10:
                    str2 = "OP_SET_MAX_LIFECYCLE";
                    break;
                default:
                    str2 = "cmd=" + czVar.a;
                    break;
            }
            printWriter.print(str);
            printWriter.print("  Op #");
            printWriter.print(NavInstructionTypeEnum);
            printWriter.print(": ");
            printWriter.print(str2);
            printWriter.print(" ");
            printWriter.println(czVar.b);
            if (IcuMessageFormat) {
                if (czVar.d != 0 || czVar.e != 0) {
                    printWriter.print(str);
                    printWriter.print("enterAnim=#");
                    printWriter.print(Integer.toHexString(czVar.d));
                    printWriter.print(" exitAnim=#");
                    printWriter.println(Integer.toHexString(czVar.e));
                }
                if (czVar.f != 0 || czVar.g != 0) {
                    printWriter.print(str);
                    printWriter.print("popEnterAnim=#");
                    printWriter.print(Integer.toHexString(czVar.f));
                    printWriter.print(" popExitAnim=#");
                    printWriter.println(Integer.toHexString(czVar.g));
                }
            }
        }
    }

    @Override // defpackage.FragmentManagerCallback
    public final boolean f(ArrayList arrayList, ArrayList arrayList2) {
        if (FragmentManagerImpl.R(2)) {
            StringBuilder sb = new StringBuilder();
            StaggeredGridLayoutParams.append("Run: ");
            StaggeredGridLayoutParams.append(this);
        }
        arrayList.add(this);
        arrayList2.add(false);
        if (!this.j) {
            return true;
        }
        FragmentManagerImpl crVar = this.a;
        if (crVar.b == null) {
            crVar.b = new ArrayList();
        }
        crVar.b.add(this);
        return true;
    }

    @Override // defpackage.FragmentTransaction
    public final void g() {
        h(false);
    }

    final void h(boolean z) {
        if (this.b) {
            throw new IllegalStateException("commit already called");
        }
        if (FragmentManagerImpl.R(2)) {
            StringBuilder sb = new StringBuilder();
            StaggeredGridLayoutParams.append("Commit: ");
            StaggeredGridLayoutParams.append(this);
            PrintWriter printWriter = new PrintWriter(new FragmentLogWriter());
            d("  ", printWriter);
            printWriter.close();
        }
        this.b = true;
        if (this.j) {
            this.c = this.a.f.getAndIncrement();
        } else {
            this.c = -1;
        }
        this.a.C(this, z);
    }

    public final String toString() {
        StringBuilder sb = new StringBuilder(128);
        StaggeredGridLayoutParams.append("BackStackEntry{");
        StaggeredGridLayoutParams.append(Integer.toHexString(System.identityHashCode(this)));
        if (this.c >= 0) {
            StaggeredGridLayoutParams.append(" #");
            StaggeredGridLayoutParams.append(this.c);
        }
        if (this.l != null) {
            StaggeredGridLayoutParams.append(" ");
            StaggeredGridLayoutParams.append(this.l);
        }
        StaggeredGridLayoutParams.append("}");
        return StaggeredGridLayoutParams.toString();
    }
}
