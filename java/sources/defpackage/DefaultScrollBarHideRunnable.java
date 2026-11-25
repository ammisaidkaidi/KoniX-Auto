package defpackage;

import com.android.car.ui.recyclerview.DefaultScrollBar;

/* compiled from: PG */
/* loaded from: classes.dex */
public final /* synthetic */ class DefaultScrollBarHideRunnable implements Runnable {
    public final /* synthetic */ DefaultScrollBar a;
    private final /* synthetic */ int b;

    public /* synthetic */ apc(DefaultScrollBar defaultScrollBar, int i) {
        this.b = i;
        this.a = defaultScrollBar;
    }

    @Override // java.lang.Runnable
    public final void run() {
        switch (this.b) {
            case 0:
                this.a.updatePaginationButtons();
                break;
            default:
                this.a.m12xd7d5ec();
                break;
        }
    }
}
