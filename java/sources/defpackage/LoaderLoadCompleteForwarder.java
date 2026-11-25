package defpackage;

import java.util.List;

/* compiled from: PG */
/* loaded from: classes.dex */
final class LoaderLoadCompleteForwarder implements LoadCompleteListener {
    public final LoaderBase a;
    public final LoaderCallbacks b;
    public boolean c = false;

    public LoaderLoadCompleteForwarder(LoaderBase aauVar, LoaderCallbacks aalVar) {
        this.a = aauVar;
        this.b = aalVar;
    }

    @Override // defpackage.LoadCompleteListener
    public final void a(Object obj) {
        if (LoaderManagerImpl_aam.b(2)) {
            StringBuilder sb = new StringBuilder();
            StaggeredGridLayoutParams.append("  onLoadFinished in ");
            StaggeredGridLayoutParams.append(this.a);
            StaggeredGridLayoutParams.append(": ");
            StaggeredGridLayoutParams.append(LoaderBase.e(obj));
        }
        this.c = true;
        LoaderManagerImpl_chf chfVar = (LoaderManagerImpl_chf) this.b;
        chfVar.a.clear();
        chfVar.a.addAll((List) obj);
        chfVar.a.notifyDataSetChanged();
    }

    public final String toString() {
        return this.b.toString();
    }
}
