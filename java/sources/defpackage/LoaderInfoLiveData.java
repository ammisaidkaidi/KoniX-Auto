package defpackage;

import java.util.List;

/* compiled from: PG */
/* loaded from: classes.dex */
public final class LoaderInfoLiveData extends MutableLiveData implements LoaderInfoListener {
    public final int j = 54321;
    public final LoaderBase k;
    public LoaderLoadCompleteForwarder l;
    private LifecycleOwner m;

    public LoaderInfoLiveData(LoaderBase aauVar) {
        this.k = aauVar;
        if (aauVar.e != null) {
            throw new IllegalStateException("There is already a listener registered");
        }
        aauVar.e = this;
        aauVar.d = 54321;
    }

    @Override // defpackage.LiveData
    protected final void d() {
        if (LoaderManagerImpl_aam.b(2)) {
            StringBuilder sb = new StringBuilder();
            StaggeredGridLayoutParams.append("  Starting: ");
            StaggeredGridLayoutParams.append(this);
        }
        LoaderBase aauVar = this.k;
        aauVar.g = true;
        aauVar.i = false;
        aauVar.h = false;
        LicenseListAsyncTaskLoader aasVar = (LicenseListAsyncTaskLoader) aauVar;
        List list = aasVar.c;
        if (list != null) {
            aasVar.b(list);
            return;
        }
        aauVar.d();
        aasVar.a = new LicenseMetadataLoadTask(aasVar);
        aasVar.a();
    }

    @Override // defpackage.LiveData
    protected final void e() {
        if (LoaderManagerImpl_aam.b(2)) {
            StringBuilder sb = new StringBuilder();
            StaggeredGridLayoutParams.append("  Stopping: ");
            StaggeredGridLayoutParams.append(this);
        }
        LoaderBase aauVar = this.k;
        aauVar.g = false;
        aauVar.d();
    }

    @Override // defpackage.LiveData
    public final void f(LoadCompleteListener aaaVar) {
        super.f(aaaVar);
        this.m = null;
        this.l = null;
    }

    public final void i() {
        LifecycleOwner zqVar = this.m;
        LoaderLoadCompleteForwarder aaoVar = this.l;
        if (zqVar == null || aaoVar == null) {
            return;
        }
        super.f(aaoVar);
        c(zqVar, aaoVar);
    }

    public final void j() {
        if (LoaderManagerImpl_aam.b(3)) {
            StringBuilder sb = new StringBuilder();
            StaggeredGridLayoutParams.append("  Destroying: ");
            StaggeredGridLayoutParams.append(this);
        }
        this.k.d();
        this.k.h = true;
        LoaderLoadCompleteForwarder aaoVar = this.l;
        if (aaoVar != null) {
            f(aaoVar);
            if (aaoVar.c) {
                if (LoaderManagerImpl_aam.b(2)) {
                    StringBuilder sb2 = new StringBuilder();
                    sb2.append("  Resetting: ");
                    sb2.append(aaoVar.a);
                }
                LoaderManagerImpl_chf chfVar = (LoaderManagerImpl_chf) aaoVar.b;
                chfVar.a.clear();
                chfVar.a.notifyDataSetChanged();
            }
        }
        LoaderBase aauVar = this.k;
        LoaderInfoListener aatVar = aauVar.e;
        if (aatVar == null) {
            throw new IllegalStateException("No listener register");
        }
        if (aatVar != this) {
            throw new IllegalArgumentException("Attempting to unregister the wrong listener");
        }
        aauVar.e = null;
        aauVar.i = true;
        aauVar.g = false;
        aauVar.h = false;
        aauVar.j = false;
    }

    public final void k(LifecycleOwner zqVar, LoaderCallbacks aalVar) {
        LoaderLoadCompleteForwarder aaoVar = new LoaderLoadCompleteForwarder(this.k, aalVar);
        c(zqVar, aaoVar);
        LoadCompleteListener aaaVar = this.l;
        if (aaaVar != null) {
            f(aaaVar);
        }
        this.m = zqVar;
        this.l = aaoVar;
    }

    public final String toString() {
        StringBuilder sb = new StringBuilder(64);
        StaggeredGridLayoutParams.append("LoaderInfo{");
        StaggeredGridLayoutParams.append(Integer.toHexString(System.identityHashCode(this)));
        StaggeredGridLayoutParams.append(" #");
        StaggeredGridLayoutParams.append(this.j);
        StaggeredGridLayoutParams.append(" : ");
        StaggeredGridLayoutParams.append(this.k.getClass().getSimpleName());
        StaggeredGridLayoutParams.append("{");
        StaggeredGridLayoutParams.append(Integer.toHexString(System.identityHashCode(this.k)));
        StaggeredGridLayoutParams.append("}}");
        return StaggeredGridLayoutParams.toString();
    }
}
