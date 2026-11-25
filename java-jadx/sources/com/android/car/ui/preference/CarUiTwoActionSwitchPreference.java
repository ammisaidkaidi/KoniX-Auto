package com.android.car.ui.preference;

import android.content.Context;
import android.util.AttributeSet;
import android.view.View;
import android.widget.Switch;
import com.android.car.ui.preference.CarUiTwoActionSwitchPreference;
import com.google.android.embedded.projection.R;
import defpackage.ado;
import defpackage.aro;
import j$.util.function.Consumer;

/* compiled from: PG */
/* loaded from: classes.dex */
public class CarUiTwoActionSwitchPreference extends CarUiTwoActionBasePreference {
    private boolean mSecondaryActionChecked;
    protected Consumer mSecondaryActionOnClickListener;

    public CarUiTwoActionSwitchPreference(Context context) {
        super(context);
    }

    @Override // com.android.car.ui.preference.CarUiTwoActionBasePreference
    protected void init(AttributeSet attributeSet) {
        super.init(attributeSet);
        setLayoutResourceInternal(R.layout.car_ui_preference_two_action_switch);
    }

    public boolean isSecondaryActionChecked() {
        return this.mSecondaryActionChecked;
    }

    /* renamed from: lambda$onBindViewHolder$0$com-android-car-ui-preference-CarUiTwoActionSwitchPreference, reason: not valid java name */
    public /* synthetic */ void m4xc58e6973(View view) {
        performSecondaryActionClick();
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // com.android.car.ui.preference.CarUiPreference, androidx.preference.Preference
    public void onBindViewHolder(ado adoVar) {
        super.onBindViewHolder(adoVar);
        View g = aro.g(adoVar.itemView, R.id.car_ui_first_action_container);
        View g2 = aro.g(adoVar.itemView, R.id.car_ui_second_action_container);
        View g3 = aro.g(adoVar.itemView, R.id.car_ui_secondary_action);
        Switch r3 = (Switch) aro.g(adoVar.itemView, R.id.car_ui_secondary_action_concrete);
        boolean z = false;
        Object[] objArr = 0;
        adoVar.itemView.setFocusable(false);
        adoVar.itemView.setClickable(false);
        final int i = 1;
        g.setOnClickListener(new View.OnClickListener(this) { // from class: anq
            public final /* synthetic */ CarUiTwoActionSwitchPreference a;

            {
                this.a = this;
            }

            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                switch (i) {
                    case 0:
                        this.a.m4xc58e6973(view);
                        break;
                    default:
                        this.a.performClickUnrestricted(view);
                        break;
                }
            }
        });
        g.setEnabled((isEnabled() || isUxRestricted()) ? true : isClickableWhileDisabled());
        g.setFocusable((isEnabled() || isUxRestricted()) ? true : isClickableWhileDisabled());
        g2.setVisibility(true != this.mSecondaryActionVisible ? 8 : 0);
        r3.setChecked(this.mSecondaryActionChecked);
        r3.setEnabled(isSecondaryActionEnabled());
        final Object[] objArr2 = objArr == true ? 1 : 0;
        g3.setOnClickListener(new View.OnClickListener(this) { // from class: anq
            public final /* synthetic */ CarUiTwoActionSwitchPreference a;

            {
                this.a = this;
            }

            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                switch (objArr2) {
                    case 0:
                        this.a.m4xc58e6973(view);
                        break;
                    default:
                        this.a.performClickUnrestricted(view);
                        break;
                }
            }
        });
        g3.setEnabled((isSecondaryActionEnabled() || isUxRestricted()) ? true : isClickableWhileDisabled());
        if (isSecondaryActionEnabled() || isUxRestricted()) {
            z = true;
        } else if (isClickableWhileDisabled()) {
            z = true;
        }
        g3.setFocusable(z);
        aro.k(g3, isSecondaryActionEnabled(), isUxRestricted());
    }

    @Override // com.android.car.ui.preference.CarUiTwoActionBasePreference
    protected void performSecondaryActionClickInternal() {
        this.mSecondaryActionChecked = !this.mSecondaryActionChecked;
        notifyChanged();
        Consumer consumer = this.mSecondaryActionOnClickListener;
        if (consumer != null) {
            consumer.accept(Boolean.valueOf(this.mSecondaryActionChecked));
        }
    }

    public void setOnSecondaryActionClickListener(Consumer consumer) {
        this.mSecondaryActionOnClickListener = consumer;
        notifyChanged();
    }

    public void setSecondaryActionChecked(boolean z) {
        this.mSecondaryActionChecked = z;
        notifyChanged();
    }

    public CarUiTwoActionSwitchPreference(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
    }

    public CarUiTwoActionSwitchPreference(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
    }

    public CarUiTwoActionSwitchPreference(Context context, AttributeSet attributeSet, int i, int i2) {
        super(context, attributeSet, i, i2);
    }
}
