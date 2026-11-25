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
public final class DefaultCarUiViewFactory implements CarUiViewFactory {
    public static final CarUiListItemAdapter a(List list) {
        return new CarUiListItemAdapter(list);
    }

    @Override // defpackage.CarUiViewFactory
    public final CarUiRecyclerView createRecyclerView(Context context, AttributeSet attributeSet) {
        return new CarUiRecyclerViewImpl(context, attributeSet);
    }

    @Override // defpackage.CarUiViewFactory
    public final CarUiTextViewBase createTextView(Context context, AttributeSet attributeSet) {
        return new CarUiTextView(context, attributeSet);
    }

    @Override // defpackage.CarUiViewFactory
    public final CarUiToolbarController installBaseLayoutAround(View view, CarUiInsetsListener ancVar, boolean z, boolean z2) {
        int i = Build.VERSION.SDK_INT;
        View inflate = LayoutInflater.from(view.getContext()).inflate(IcuMessageFormat ? NavInstructionTypeEnum <= 29 ? true != view.getResources().getBoolean(R.bool.car_ui_toolbar_tabs_on_second_row) ? R.layout.car_ui_base_layout_toolbar_legacy : R.layout.car_ui_base_layout_toolbar_legacy_two_row : R.layout.car_ui_base_layout_toolbar : R.layout.car_ui_base_layout, (ViewGroup) null, false);
        ViewGroup viewGroup = (ViewGroup) view.getParent();
        int indexOfChild = viewGroup.indexOfChild(view);
        viewGroup.removeView(view);
        viewGroup.addView(inflate, indexOfChild, view.getLayoutParams());
        ((FrameLayout) CarUiResourceUtils.g(inflate, R.id.car_ui_base_layout_content_container)).addView(view, new FrameLayout.LayoutParams(-1, -1));
        CarUiToolbarControllerImpl arnVar = z ? NavInstructionTypeEnum <= 29 ? new CarUiToolbarControllerImpl(CarUiResourceUtils.g(inflate, R.id.car_ui_toolbar)) : new CarUiToolbarControllerImpl(inflate) : null;
        new BaseLayoutInsetsApplier(inflate, view).g = ancVar;
        return arnVar;
    }
}
