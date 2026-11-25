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
final class aoo extends rr {
    public static final /* synthetic */ int p = 0;
    final asl a;
    final asl b;
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

    public aoo(View view) {
        super(view);
        this.a = (asl) aro.g(view, R.id.car_ui_list_item_title);
        this.b = (asl) aro.g(view, R.id.car_ui_list_item_body);
        this.c = (ImageView) aro.g(view, R.id.car_ui_list_item_icon);
        this.d = (ImageView) aro.g(view, R.id.car_ui_list_item_content_icon);
        this.e = (ImageView) aro.g(view, R.id.car_ui_list_item_avatar_icon);
        this.f = (ViewGroup) aro.g(view, R.id.car_ui_list_item_icon_container);
        this.g = (ViewGroup) aro.g(view, R.id.car_ui_list_item_action_container);
        this.h = aro.g(view, R.id.car_ui_list_item_action_divider);
        this.i = (Switch) aro.g(view, R.id.car_ui_list_item_switch_widget);
        this.j = (CheckBox) aro.g(view, R.id.car_ui_list_item_checkbox_widget);
        this.k = (RadioButton) aro.g(view, R.id.car_ui_list_item_radio_button_widget);
        this.l = (ImageView) aro.g(view, R.id.car_ui_list_item_supplemental_icon);
        this.n = aro.g(view, R.id.car_ui_list_item_reduced_touch_interceptor);
        this.m = aro.g(view, R.id.car_ui_list_item_touch_interceptor);
        this.o = aro.g(view, R.id.car_ui_list_item_action_container_touch_interceptor);
    }

    final void a(View view, boolean z) {
        view.setEnabled(z);
        if (view instanceof ViewGroup) {
            ViewGroup viewGroup = (ViewGroup) view;
            for (int i = 0; i < viewGroup.getChildCount(); i++) {
                a(viewGroup.getChildAt(i), z);
            }
        }
    }

    final void b(final aoe aoeVar, final CompoundButton compoundButton, final arh arhVar) {
        compoundButton.setVisibility(0);
        compoundButton.setOnCheckedChangeListener(null);
        compoundButton.setChecked(aoeVar.e);
        compoundButton.setOnCheckedChangeListener(new CompoundButton.OnCheckedChangeListener() { // from class: aon
            @Override // android.widget.CompoundButton.OnCheckedChangeListener
            public final void onCheckedChanged(CompoundButton compoundButton2, boolean z) {
                aoe aoeVar2 = aoe.this;
                int i = aoo.p;
                aoeVar2.a(z);
            }
        });
        this.m.setVisibility(0);
        this.m.setOnClickListener(new View.OnClickListener() { // from class: aol
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                CompoundButton compoundButton2 = compoundButton;
                arh arhVar2 = arhVar;
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
