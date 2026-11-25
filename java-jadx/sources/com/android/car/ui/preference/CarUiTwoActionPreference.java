package com.android.car.ui.preference;

import android.content.Context;
import android.content.res.TypedArray;
import android.util.AttributeSet;
import android.view.View;
import com.android.car.ui.preference.CarUiTwoActionPreference;
import com.google.android.embedded.projection.R;
import defpackage.ado;
import defpackage.amu;
import defpackage.aro;

/* compiled from: PG */
@Deprecated
/* loaded from: classes.dex */
public class CarUiTwoActionPreference extends CarUiPreference {
    private boolean mIsActionShown;

    public CarUiTwoActionPreference(Context context) {
        super(context);
        init(null);
    }

    private void init(AttributeSet attributeSet) {
        setLayoutResource(R.layout.car_ui_two_action_preference);
        TypedArray obtainStyledAttributes = getContext().obtainStyledAttributes(attributeSet, amu.f);
        this.mIsActionShown = obtainStyledAttributes.getBoolean(1, true);
        setShowChevron(false);
        obtainStyledAttributes.recycle();
    }

    public boolean isActionShown() {
        return this.mIsActionShown;
    }

    @Override // com.android.car.ui.preference.CarUiPreference, androidx.preference.Preference
    public void onBindViewHolder(ado adoVar) {
        super.onBindViewHolder(adoVar);
        View f = aro.f(adoVar.itemView, R.id.car_ui_preference_container_without_widget);
        View f2 = aro.f(adoVar.itemView, R.id.action_widget_container);
        View f3 = aro.f(adoVar.itemView, android.R.id.widget_frame);
        adoVar.itemView.setFocusable(!this.mIsActionShown);
        f.setOnClickListener(this.mIsActionShown ? new View.OnClickListener() { // from class: anp
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                CarUiTwoActionPreference.this.performClickUnrestricted(view);
            }
        } : null);
        f.setClickable(this.mIsActionShown);
        f.setFocusable(this.mIsActionShown);
        f2.setVisibility(true != this.mIsActionShown ? 8 : 0);
        f3.setFocusable(this.mIsActionShown);
        if (this.mIsActionShown) {
            onBindWidgetFrame(f3);
        }
    }

    protected void onBindWidgetFrame(View view) {
    }

    public void showAction(boolean z) {
        this.mIsActionShown = z;
        notifyChanged();
    }

    public CarUiTwoActionPreference(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        init(attributeSet);
    }

    public CarUiTwoActionPreference(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        init(attributeSet);
    }

    public CarUiTwoActionPreference(Context context, AttributeSet attributeSet, int i, int i2) {
        super(context, attributeSet, i, i2);
        init(attributeSet);
    }
}
