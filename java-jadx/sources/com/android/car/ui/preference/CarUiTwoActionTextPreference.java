package com.android.car.ui.preference;

import android.content.Context;
import android.content.res.TypedArray;
import android.util.AttributeSet;
import android.view.View;
import android.widget.Button;
import com.android.car.ui.preference.CarUiTwoActionTextPreference;
import com.google.android.embedded.projection.R;
import defpackage.ado;
import defpackage.amu;
import defpackage.aro;

/* compiled from: PG */
/* loaded from: classes.dex */
public class CarUiTwoActionTextPreference extends CarUiTwoActionBasePreference {
    protected Runnable mSecondaryActionOnClickListener;
    private CharSequence mSecondaryActionText;

    public CarUiTwoActionTextPreference(Context context) {
        super(context);
    }

    public CharSequence getSecondaryActionText() {
        return this.mSecondaryActionText;
    }

    @Override // com.android.car.ui.preference.CarUiTwoActionBasePreference
    protected void init(AttributeSet attributeSet) {
        super.init(attributeSet);
        TypedArray obtainStyledAttributes = getContext().obtainStyledAttributes(attributeSet, amu.g);
        try {
            int integer = obtainStyledAttributes.getInteger(0, 0);
            this.mSecondaryActionText = obtainStyledAttributes.getString(1);
            setLayoutResourceInternal(integer == 0 ? R.layout.car_ui_preference_two_action_text : R.layout.car_ui_preference_two_action_text_borderless);
        } finally {
            obtainStyledAttributes.recycle();
        }
    }

    /* renamed from: lambda$onBindViewHolder$0$com-android-car-ui-preference-CarUiTwoActionTextPreference, reason: not valid java name */
    public /* synthetic */ void m5x7594552c(View view) {
        performSecondaryActionClick();
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // com.android.car.ui.preference.CarUiPreference, androidx.preference.Preference
    public void onBindViewHolder(ado adoVar) {
        super.onBindViewHolder(adoVar);
        View g = aro.g(adoVar.itemView, R.id.car_ui_first_action_container);
        View g2 = aro.g(adoVar.itemView, R.id.car_ui_second_action_container);
        Button button = (Button) aro.g(adoVar.itemView, R.id.car_ui_secondary_action);
        boolean z = false;
        Object[] objArr = 0;
        adoVar.itemView.setFocusable(false);
        adoVar.itemView.setClickable(false);
        final int i = 1;
        g.setOnClickListener(new View.OnClickListener(this) { // from class: anr
            public final /* synthetic */ CarUiTwoActionTextPreference a;

            {
                this.a = this;
            }

            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                switch (i) {
                    case 0:
                        this.a.m5x7594552c(view);
                        break;
                    default:
                        this.a.performClickUnrestricted(view);
                        break;
                }
            }
        });
        g.setEnabled(!isEnabled() ? isClickableWhileDisabled() : true);
        g.setFocusable(!isEnabled() ? isClickableWhileDisabled() : true);
        g2.setVisibility(true != this.mSecondaryActionVisible ? 8 : 0);
        button.setText(this.mSecondaryActionText);
        final Object[] objArr2 = objArr == true ? 1 : 0;
        button.setOnClickListener(new View.OnClickListener(this) { // from class: anr
            public final /* synthetic */ CarUiTwoActionTextPreference a;

            {
                this.a = this;
            }

            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                switch (objArr2) {
                    case 0:
                        this.a.m5x7594552c(view);
                        break;
                    default:
                        this.a.performClickUnrestricted(view);
                        break;
                }
            }
        });
        button.setEnabled(!isSecondaryActionEnabled() ? isClickableWhileDisabled() : true);
        if (isSecondaryActionEnabled()) {
            z = true;
        } else if (isClickableWhileDisabled()) {
            z = true;
        }
        button.setFocusable(z);
        aro.k(button, isSecondaryActionEnabled(), isUxRestricted());
    }

    @Override // com.android.car.ui.preference.CarUiTwoActionBasePreference
    protected void performSecondaryActionClickInternal() {
        Runnable runnable = this.mSecondaryActionOnClickListener;
        if (runnable != null) {
            runnable.run();
        }
    }

    public void setOnSecondaryActionClickListener(Runnable runnable) {
        this.mSecondaryActionOnClickListener = runnable;
        notifyChanged();
    }

    public void setSecondaryActionText(int i) {
        setSecondaryActionText(getContext().getString(i));
    }

    public CarUiTwoActionTextPreference(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
    }

    public void setSecondaryActionText(CharSequence charSequence) {
        this.mSecondaryActionText = charSequence;
        notifyChanged();
    }

    public CarUiTwoActionTextPreference(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
    }

    public CarUiTwoActionTextPreference(Context context, AttributeSet attributeSet, int i, int i2) {
        super(context, attributeSet, i, i2);
    }
}
