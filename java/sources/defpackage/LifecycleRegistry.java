package defpackage;

import java.lang.ref.WeakReference;
import java.util.ArrayList;
import java.util.concurrent.atomic.AtomicReference;

/* compiled from: PG */
/* loaded from: classes.dex */
public final class LifecycleRegistry {
    public LifecycleState a;
    private SafeIterableMapEntryList b;
    private final WeakReference c;
    private int d;
    private boolean e;
    private boolean f;
    private ArrayList g;

    public LifecycleRegistry() {
        new AtomicReference();
    }

    static LifecycleState a(LifecycleState zmVar, LifecycleState zmVar2) {
        return (zmVar2 == null || zmVar2.compareTo(zmVar) >= 0) ? zmVar : zmVar2;
    }

    public static void f(String str) {
        if (ArchTaskExecutorDelegate.g().h()) {
            return;
        }
        throw new IllegalStateException("Method " + str + " must be called on the main thread");
    }

    private final LifecycleState g(LifecycleObserverBase zpVar) {
        SafeIterableMapEntryList uiVar = this.b;
        LifecycleState zmVar = null;
        SafeIterableMapEntry ulVar = uiVar.c(zpVar) ? ((SafeIterableMapEntry) uiVar.a.get(zpVar)).d : null;
        LifecycleState zmVar2 = ulVar != null ? ((LiveDataObserverHolder) ulVar.b).a : null;
        if (!this.g.isEmpty()) {
            zmVar = (LifecycleState) this.g.get(r0.size() - 1);
        }
        return a(a(this.a, zmVar2), zmVar);
    }

    private final void h(LifecycleState zmVar) {
        if (this.a == zmVar) {
            return;
        }
        this.a = zmVar;
        if (this.e || this.d != 0) {
            this.f = true;
            return;
        }
        this.e = true;
        k();
        this.e = false;
    }

    private final void i() {
        this.g.remove(r0.size() - 1);
    }

    private final void j(LifecycleState zmVar) {
        this.g.add(zmVar);
    }

    /* JADX WARN: Code restructure failed: missing block: B:10:0x0029, code lost:
    
        r6.f = false;
     */
    /* JADX WARN: Code restructure failed: missing block: B:11:0x002b, code lost:
    
        return;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    private final void k() {
        LifecycleState zmVar;
        LifecycleState zmVar2;
        LifecycleOwner zqVar = (LifecycleOwner) this.c.get();
        if (zqVar == null) {
            throw new IllegalStateException("LifecycleOwner of this LifecycleRegistry is alreadygarbage collected. It is too late to change lifecycle state.");
        }
        while (true) {
            SafeIterableMapEntryList uiVar = this.b;
            if (uiVar.e != 0 && ((zmVar = ((LiveDataObserverHolder) uiVar.b.b).a) != (zmVar2 = ((LiveDataObserverHolder) uiVar.c.b).a) || this.a != zmVar2)) {
                this.f = false;
                if (this.a.compareTo(zmVar) < 0) {
                    SafeIterableMapEntryList uiVar2 = this.b;
                    SafeIterableMapDescendingIterator ukVar = new SafeIterableMapDescendingIterator(uiVar2.c, uiVar2.b);
                    uiVar2.d.put(ukVar, false);
                    while (ukVar.hasNext() && !this.f) {
                        SafeIterableMapEntry ulVar = (SafeIterableMapEntry) ukVar.next();
                        LiveDataObserverHolder zrVar = (LiveDataObserverHolder) ulVar.b;
                        while (zrVar.a.compareTo(this.a) > 0 && !this.f && this.b.c((LifecycleObserverBase) ulVar.a)) {
                            LifecycleEvent a = zl.a(zrVar.a);
                            if (SingleStringProtoMessage == null) {
                                StringBuilder sb = new StringBuilder();
                                StaggeredGridLayoutParams.append("no event down from ");
                                LifecycleState zmVar3 = zrVar.a;
                                StaggeredGridLayoutParams.append(zmVar3);
                                throw new IllegalStateException("no event down from ".concat(String.valueOf(zmVar3)));
                            }
                            j(a.c());
                            zrVar.a(zqVar, a);
                            i();
                        }
                    }
                }
                SafeIterableMapEntry ulVar2 = this.b.c;
                if (!this.f && ulVar2 != null && this.a.compareTo(((LiveDataObserverHolder) ulVar2.b).a) > 0) {
                    SafeIterableMapListIterator e = this.b.e();
                    while (e.hasNext() && !this.f) {
                        SafeIterableMapEntry ulVar3 = (SafeIterableMapEntry) e.next();
                        LiveDataObserverHolder zrVar2 = (LiveDataObserverHolder) ulVar3.b;
                        while (zrVar2.a.compareTo(this.a) < 0 && !this.f && this.b.c((LifecycleObserverBase) ulVar3.a)) {
                            j(zrVar2.a);
                            LifecycleEvent b = zl.b(zrVar2.a);
                            if (ProtoLiteMessageBase == null) {
                                StringBuilder sb2 = new StringBuilder();
                                sb2.append("no event up from ");
                                LifecycleState zmVar4 = zrVar2.a;
                                sb2.append(zmVar4);
                                throw new IllegalStateException("no event up from ".concat(String.valueOf(zmVar4)));
                            }
                            zrVar2.a(zqVar, b);
                            i();
                        }
                    }
                }
            }
        }
    }

    public final void b(LifecycleObserverBase zpVar) {
        Object obj;
        LifecycleOwner zqVar;
        f("addObserver");
        LiveDataObserverHolder zrVar = new LiveDataObserverHolder(zpVar, this.a == zm.DESTROYED ? zm.DESTROYED : zm.INITIALIZED);
        SafeIterableMapEntryList uiVar = this.b;
        SafeIterableMapEntry a = uiVar.a(zpVar);
        if (SingleStringProtoMessage != null) {
            obj = a.b;
        } else {
            uiVar.a.put(zpVar, uiVar.d(zpVar, zrVar));
            obj = null;
        }
        if (((LiveDataObserverHolder) obj) == null && (zqVar = (LifecycleOwner) this.c.get()) != null) {
            boolean z = this.d == 0 ? this.e : true;
            LifecycleState g = g(zpVar);
            this.d++;
            while (zrVar.a.compareTo(ProtoMessageIntAndBooleanG) < 0 && this.b.c(zpVar)) {
                j(zrVar.a);
                LifecycleEvent b = zl.b(zrVar.a);
                if (ProtoLiteMessageBase == null) {
                    StringBuilder sb = new StringBuilder();
                    StaggeredGridLayoutParams.append("no event up from ");
                    LifecycleState zmVar = zrVar.a;
                    StaggeredGridLayoutParams.append(zmVar);
                    throw new IllegalStateException("no event up from ".concat(String.valueOf(zmVar)));
                }
                zrVar.a(zqVar, b);
                i();
                g = g(zpVar);
            }
            if (!z) {
                k();
            }
            this.d--;
        }
    }

    public final void c(LifecycleEvent zlVar) {
        f("handleLifecycleEvent");
        h(zlVar.c());
    }

    public final void d(LifecycleObserverBase zpVar) {
        f("removeObserver");
        this.b.b(zpVar);
    }

    public final void e(LifecycleState zmVar) {
        f("setCurrentState");
        h(zmVar);
    }

    public LifecycleRegistry(LifecycleOwner zqVar) {
        new AtomicReference();
        this.b = new SafeIterableMapEntryList();
        this.d = 0;
        this.e = false;
        this.f = false;
        this.g = new ArrayList();
        this.c = new WeakReference(zqVar);
        this.a = zm.INITIALIZED;
    }
}
