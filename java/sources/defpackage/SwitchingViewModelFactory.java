package defpackage;

/* compiled from: PG */
/* loaded from: classes.dex */
public final class SwitchingViewModelFactory implements ViewModelFactory {
    private final /* synthetic */ int a;

    public SwitchingViewModelFactory(int i) {
        this.a = i;
    }

    @Override // defpackage.ViewModelFactory
    public final ViewModelBase a() {
        switch (this.a) {
            case 0:
                return new LoaderViewModel();
            default:
                return new FragmentManagerViewModel(true);
        }
    }
}
