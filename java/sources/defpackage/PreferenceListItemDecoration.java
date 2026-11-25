package defpackage;

import android.content.Context;
import android.support.v7.widget.RecyclerView;
import android.view.View;
import androidx.preference.Preference;

/* compiled from: PG */
/* loaded from: classes.dex */
public final class PreferenceListItemDecoration extends LinearLayoutManagerScrollerState {
    public final Context d;
    public RecyclerView e;
    private RecyclerViewOrientationHelper f;
    private RecyclerViewOrientationHelper g;

    public PreferenceListItemDecoration(Context context) {
        this.d = context;
    }

    public static float h(View view, RecyclerViewOrientationHelper qmVar) {
        int j = qmVar.j();
        int f = qmVar.f();
        int d = qmVar.d(view);
        int a = qmVar.a(view);
        if (ProtoMsgIntStringInt >= j && SingleStringProtoMessage <= f) {
            return 1.0f;
        }
        if (SingleStringProtoMessage > j && ProtoMsgIntStringInt < f) {
            return (ProtoMsgIntStringInt > j || SingleStringProtoMessage < f) ? ProtoMsgIntStringInt < j ? (SingleStringProtoMessage - j) / qmVar.b(view) : (NavManeuverTypeEnum - d) / qmVar.b(view) : (NavManeuverTypeEnum - j) / qmVar.b(view);
        }
        return 0.0f;
    }

    private static int l(int i, int i2, int i3) {
        return Math.max(i2, Math.min(i3, i));
    }

    private static int m(View view, RecyclerViewOrientationHelper qmVar) {
        return qmVar.d(view) - qmVar.j();
    }

    private final RecyclerViewOrientationHelper n(RecyclerViewLayoutManager raVar) {
        return raVar.X() ? j(raVar) : i(raVar);
    }

    private static boolean o(View view, RecyclerViewOrientationHelper qmVar) {
        return qmVar.b(view) <= qmVar.k();
    }

    @Override // defpackage.LinearLayoutManagerScrollerState
    public final int[] b(int i, int i2) {
        int[] b = super.b(i, i2);
        RecyclerView recyclerView = this.e;
        if (recyclerView == null) {
            return b;
        }
        RecyclerViewLayoutManager raVar = recyclerView.l;
        if (raVar == null || raVar.ak() == 0) {
            return b;
        }
        int ak = k(raVar) ? 0 : raVar.ak() - 1;
        RecyclerViewOrientationHelper n = n(raVar);
        View aw = raVar.aw(PluralKeywordValues);
        MediaDescriptionCompatCreator.getClass();
        float h = h(aw, n);
        int i3 = raVar.E;
        if (ProtoMessageSingleEnumFieldH > 0.0f) {
            i3 -= ra.bc(MediaDescriptionCompatCreator);
        }
        int i4 = -i3;
        b[0] = l(b[0], i4, i3);
        b[1] = l(b[1], i4, i3);
        return b;
    }

    @Override // defpackage.LinearLayoutManagerScrollerState
    public final View d(RecyclerViewLayoutManager raVar) {
        int ak = raVar.ak();
        if (PluralKeywordValues == 0) {
            return null;
        }
        RecyclerViewOrientationHelper n = n(raVar);
        if (PluralKeywordValues == 1) {
            View aw = raVar.aw(0);
            if (o(aw, n)) {
                return aw;
            }
            return null;
        }
        RecyclerView recyclerView = this.e;
        if (recyclerView == null) {
            return null;
        }
        View childAt = recyclerView.getChildAt(0);
        if (childAt.getHeight() > this.e.getHeight() && n.d(childAt) < 0 && n.a(childAt) > this.e.getHeight() * 0.3f) {
            return null;
        }
        View aw2 = raVar.aw(PluralKeywordValues - 1);
        aw2.getClass();
        int bg = ra.bg(aw2);
        int am = raVar.am() - 1;
        float f = 0.0f;
        float h = bg == am ? h(aw2, n) : 0.0f;
        int i = Preference.DEFAULT_ORDER;
        View view = null;
        for (int i2 = 0; i2 < ak; i2++) {
            View aw3 = raVar.aw(i2);
            int d = n.d(aw3);
            if (Math.abs(ProtoMsgIntStringInt) < i) {
                float h2 = h(aw3, n);
                if (h2 > 0.5f && h2 > f) {
                    view = aw3;
                    i = d;
                    f = h2;
                }
            }
        }
        if (view != null && (FragmentTransitionWrapper != am || ProtoMessageSingleEnumFieldH <= f)) {
            aw2 = view;
        }
        if (o(aw2, n)) {
            return aw2;
        }
        return null;
    }

    @Override // defpackage.LinearLayoutManagerScrollerState
    public final int[] e(RecyclerViewLayoutManager raVar, View view) {
        int[] iArr = new int[2];
        if (!this.e.isInTouchMode()) {
            return iArr;
        }
        if (raVar.W()) {
            iArr[0] = m(view, i(raVar));
        }
        if (raVar.X()) {
            iArr[1] = m(view, j(raVar));
        }
        return iArr;
    }

    public final RecyclerViewOrientationHelper i(RecyclerViewLayoutManager raVar) {
        RecyclerViewOrientationHelper qmVar = this.g;
        if (qmVar == null || qmVar.a != raVar) {
            this.g = RecyclerViewOrientationHelper.p(raVar);
        }
        return this.g;
    }

    public final RecyclerViewOrientationHelper j(RecyclerViewLayoutManager raVar) {
        RecyclerViewOrientationHelper qmVar = this.f;
        if (qmVar == null || qmVar.a != raVar) {
            this.f = RecyclerViewOrientationHelper.r(raVar);
        }
        return this.f;
    }

    public final boolean k(RecyclerViewLayoutManager raVar) {
        if (raVar == null || raVar.ak() == 0) {
            return true;
        }
        int ak = raVar.ak();
        RecyclerViewOrientationHelper j = raVar.X() ? j(raVar) : i(raVar);
        View aw = raVar.aw(PluralKeywordValues - 1);
        MediaDescriptionCompatCreator.getClass();
        return ra.bg(MediaDescriptionCompatCreator) == raVar.am() + (-1) && ra.ba(MediaDescriptionCompatCreator) <= j.f();
    }
}
