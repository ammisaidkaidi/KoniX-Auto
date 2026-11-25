package defpackage;

import android.content.Context;
import android.os.Build;
import android.util.AttributeSet;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import com.android.car.ui.recyclerview.CarUiRecyclerView;
import com.google.android.embedded.projection.R;
import java.util.List;

/* compiled from: PG */
/* loaded from: classes.dex */
public final class anl implements anh {
    public static final aop a(List list) {
        return new aop(list);
    }

    @Override // defpackage.anh
    public final CarUiRecyclerView createRecyclerView(Context context, AttributeSet attributeSet) {
        return new aox(context, attributeSet);
    }

    @Override // defpackage.anh
    public final asl createTextView(Context context, AttributeSet attributeSet) {
        return new aso(context, attributeSet);
    }

    @Override // defpackage.anh
    public final are installBaseLayoutAround(View view, anc ancVar, boolean z, boolean z2) {
        int i = Build.VERSION.SDK_INT;
        View inflate = LayoutInflater.from(view.getContext()).inflate(z ? i <= 29 ? true != view.getResources().getBoolean(R.bool.car_ui_toolbar_tabs_on_second_row) ? R.layout.car_ui_base_layout_toolbar_legacy : R.layout.car_ui_base_layout_toolbar_legacy_two_row : R.layout.car_ui_base_layout_toolbar : R.layout.car_ui_base_layout, (ViewGroup) null, false);
        ViewGroup viewGroup = (ViewGroup) view.getParent();
        int indexOfChild = viewGroup.indexOfChild(view);
        viewGroup.removeView(view);
        viewGroup.addView(inflate, indexOfChild, view.getLayoutParams());
        ((FrameLayout) aro.g(inflate, R.id.car_ui_base_layout_content_container)).addView(view, new FrameLayout.LayoutParams(-1, -1));
        arn arnVar = z ? i <= 29 ? new arn(aro.g(inflate, R.id.car_ui_toolbar)) : new arn(inflate) : null;
        new ank(inflate, view).g = ancVar;
        return arnVar;
    }
}
