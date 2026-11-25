package defpackage;

import android.view.View;

/* compiled from: PG */
/* loaded from: classes.dex */
final class LayoutManagerChildAttachCallback implements LayoutManagerChildCallback {
    final /* synthetic */ RecyclerViewLayoutManager a;
    private final /* synthetic */ int b;

    public LayoutManagerChildAttachCallback(RecyclerViewLayoutManager raVar, int i) {
        this.b = i;
        this.a = raVar;
    }

    @Override // defpackage.LayoutManagerChildCallback
    public final int c() {
        switch (this.b) {
            case 0:
                RecyclerViewLayoutManager raVar = this.a;
                return raVar.E - raVar.aq();
            default:
                RecyclerViewLayoutManager raVar2 = this.a;
                return raVar2.D - raVar2.as();
        }
    }

    @Override // defpackage.LayoutManagerChildCallback
    public final int d() {
        switch (this.b) {
            case 0:
                return this.a.at();
            default:
                return this.a.ar();
        }
    }

    @Override // defpackage.LayoutManagerChildCallback
    public final View e(int i) {
        switch (this.b) {
        }
        return this.a.aw(NavInstructionTypeEnum);
    }

    @Override // defpackage.LayoutManagerChildCallback
    public final int a(View view) {
        switch (this.b) {
            case 0:
                return ra.ba(view) + ((RecyclerViewLayoutParams) view.getLayoutParams()).bottomMargin;
            default:
                return ra.be(view) + ((RecyclerViewLayoutParams) view.getLayoutParams()).rightMargin;
        }
    }

    @Override // defpackage.LayoutManagerChildCallback
    public final int b(View view) {
        switch (this.b) {
            case 0:
                return ra.bf(view) - ((RecyclerViewLayoutParams) view.getLayoutParams()).topMargin;
            default:
                return ra.bb(view) - ((RecyclerViewLayoutParams) view.getLayoutParams()).leftMargin;
        }
    }
}
