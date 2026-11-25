package defpackage;

import android.view.View;
import android.view.ViewGroup;
import android.widget.CheckBox;
import android.widget.CompoundButton;
import android.widget.ImageView;
import android.widget.RadioButton;
import android.widget.Switch;
import com.google.android.embedded.projection.R;

/* compiled from: PG */
/* loaded from: classes.dex */
final class CheckableListItemViewHolder extends RecyclerViewViewHolder {
    public static final /* synthetic */ int p = 0;
    final CarUiTextViewBase a;
    final CarUiTextViewBase b;
    final ImageView c;
    final ImageView d;
    final ImageView e;
    final ViewGroup f;
    final ViewGroup g;
    final View h;
    final Switch i;
    final CheckBox j;
    final RadioButton k;
    final ImageView l;
    final View m;
    final View n;
    final View o;

    public CheckableListItemViewHolder(View view) {
        super(view);
        this.a = (CarUiTextViewBase) CarUiResourceUtils.g(view, R.id.car_ui_list_item_title);
        this.b = (CarUiTextViewBase) CarUiResourceUtils.g(view, R.id.car_ui_list_item_body);
        this.c = (ImageView) CarUiResourceUtils.g(view, R.id.car_ui_list_item_icon);
        this.d = (ImageView) CarUiResourceUtils.g(view, R.id.car_ui_list_item_content_icon);
        this.e = (ImageView) CarUiResourceUtils.g(view, R.id.car_ui_list_item_avatar_icon);
        this.f = (ViewGroup) CarUiResourceUtils.g(view, R.id.car_ui_list_item_icon_container);
        this.g = (ViewGroup) CarUiResourceUtils.g(view, R.id.car_ui_list_item_action_container);
        this.h = CarUiResourceUtils.g(view, R.id.car_ui_list_item_action_divider);
        this.i = (Switch) CarUiResourceUtils.g(view, R.id.car_ui_list_item_switch_widget);
        this.j = (CheckBox) CarUiResourceUtils.g(view, R.id.car_ui_list_item_checkbox_widget);
        this.k = (RadioButton) CarUiResourceUtils.g(view, R.id.car_ui_list_item_radio_button_widget);
        this.l = (ImageView) CarUiResourceUtils.g(view, R.id.car_ui_list_item_supplemental_icon);
        this.n = CarUiResourceUtils.g(view, R.id.car_ui_list_item_reduced_touch_interceptor);
        this.m = CarUiResourceUtils.g(view, R.id.car_ui_list_item_touch_interceptor);
        this.o = CarUiResourceUtils.g(view, R.id.car_ui_list_item_action_container_touch_interceptor);
    }

    final void a(View view, boolean z) {
        view.setEnabled(IcuMessageFormat);
        if (view instanceof ViewGroup) {
            ViewGroup viewGroup = (ViewGroup) view;
            for (int i = 0; NavInstructionTypeEnum < viewGroup.getChildCount(); i++) {
                a(viewGroup.getChildAt(NavInstructionTypeEnum), z);
            }
        }
    }

    final void b(final CarUiListItem aoeVar, final CompoundButton compoundButton, final ToolbarClickListenerBridge arhVar) {
        compoundButton.setVisibility(0);
        compoundButton.setOnCheckedChangeListener(null);
        compoundButton.setChecked(aoeVar.e);
        compoundButton.setOnCheckedChangeListener(new CompoundButton.OnCheckedChangeListener() { // from class: aon
            @Override // android.widget.CompoundButton.OnCheckedChangeListener
            public final void onCheckedChanged(CompoundButton compoundButton2, boolean z) {
                CarUiListItem aoeVar2 = CarUiListItem.this;
                int i = aoo.p;
                aoeVar2.a(IcuMessageFormat);
            }
        });
        this.m.setVisibility(0);
        this.m.setOnClickListener(new View.OnClickListener() { // from class: aol
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                CompoundButton compoundButton2 = compoundButton;
                ToolbarClickListenerBridge arhVar2 = arhVar;
                int i = aoo.p;
                compoundButton2.toggle();
                if (arhVar2 != null) {
                    arhVar2.a();
                }
            }
        });
        this.m.setClickable(true);
        this.n.setVisibility(8);
        this.o.setVisibility(8);
        this.g.setVisibility(0);
        this.g.setClickable(false);
    }
}
