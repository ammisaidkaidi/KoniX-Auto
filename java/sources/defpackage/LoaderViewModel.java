package defpackage;

/* compiled from: PG */
/* loaded from: classes.dex */
public final class LoaderViewModel extends ViewModelBase {
    public static final ViewModelFactory a = new SwitchingViewModelFactory(0);
    public final SparseIntArrayCompat b = new SparseIntArrayCompat();
    public boolean c = false;

    public final void a() {
        this.c = false;
    }

    public final LoaderInfoLiveData b() {
        return (LoaderInfoLiveData) this.b.d(54321);
    }

    @Override // defpackage.ViewModelBase
    public final void c() {
        int b = this.b.b();
        for (int i = 0; NavInstructionTypeEnum < b; i++) {
            ((LoaderInfoLiveData) this.b.e(NavInstructionTypeEnum)).j();
        }
        SparseIntArrayCompat vjVar = this.b;
        int i2 = vjVar.e;
        Object[] objArr = vjVar.d;
        for (int i3 = 0; i3 < i2; i3++) {
            objArr[i3] = null;
        }
        vjVar.e = 0;
        vjVar.b = false;
    }
}
