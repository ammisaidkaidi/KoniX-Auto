package com.android.car.ui.toolbar;

import android.content.Context;
import android.util.AttributeSet;
import android.view.View;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.TextView;
import com.android.car.ui.toolbar.TabLayout;
import com.google.android.embedded.projection.R;
import defpackage.ToolbarTab;
import defpackage.CarUiResourceUtils;
import j$.util.function.Consumer;
import java.util.Collections;
import java.util.List;

/* compiled from: PG */
/* loaded from: classes.dex */
public class TabLayout extends LinearLayout {
    public final int a;
    public List b;
    public int c;

    public TabLayout(Context context) {
        this(context, null);
    }

    public final void a(final int i) {
        if (i < 0 || i > this.b.size()) {
            return;
        }
        View childAt = getChildAt(i);
        ToolbarTab aquVar = (ToolbarTab) this.b.get(i);
        ImageView imageView = (ImageView) CarUiResourceUtils.g(childAt, R.id.car_ui_toolbar_tab_item_icon);
        TextView textView = (TextView) CarUiResourceUtils.g(childAt, R.id.car_ui_toolbar_tab_item_text);
        childAt.setOnClickListener(new View.OnClickListener() { // from class: aqv
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                ToolbarTab aquVar2;
                Consumer consumer;
                TabLayout tabLayout = TabLayout.this;
                int i2 = i;
                if (i2 > tabLayout.b.size()) {
                    i2 = true != tabLayout.b.isEmpty() ? 0 : -1;
                }
                int i3 = tabLayout.c;
                if (i2 == i3) {
                    return;
                }
                tabLayout.c = i2;
                tabLayout.a(i3);
                tabLayout.a(i2);
                if (i2 < 0 || (consumer = (aquVar2 = (ToolbarTab) tabLayout.b.get(i2)).c) == null) {
                    return;
                }
                consumer.accept(aquVar2);
            }
        });
        childAt.setActivated(i == this.c);
        boolean z = aquVar.d;
        imageView.setImageTintList(getContext().getColorStateList(R.color.car_ui_toolbar_tab_item_selector));
        imageView.setImageDrawable(aquVar.b);
        textView.setText(aquVar.a);
        textView.setTextAppearance(i == this.c ? R.style.TextAppearance_CarUi_Widget_Toolbar_Tab_Selected : R.style.TextAppearance_CarUi_Widget_Toolbar_Tab);
    }

    public TabLayout(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    public TabLayout(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        this.b = Collections.emptyList();
        this.c = -1;
        this.a = true != context.getResources().getBoolean(R.bool.car_ui_toolbar_tab_flexible_layout) ? R.layout.car_ui_toolbar_tab_item_layout : R.layout.car_ui_toolbar_tab_item_layout_flexible;
    }
}
