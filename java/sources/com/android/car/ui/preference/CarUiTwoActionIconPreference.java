package com.android.car.ui.preference;

import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.drawable.Drawable;
import android.util.AttributeSet;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import com.android.car.ui.preference.CarUiTwoActionIconPreference;
import com.google.android.embedded.projection.R;
import defpackage.PreferenceViewHolder;
import defpackage.CarUiStyleableAttrs;
import defpackage.CarUiResourceUtils;
import defpackage.PrimesDebugEventsHelper;

/* compiled from: PG */
/* loaded from: classes.dex */
public class CarUiTwoActionIconPreference extends CarUiTwoActionBasePreference {
    private Drawable mSecondaryActionIcon;
    protected Runnable mSecondaryActionOnClickListener;

    public CarUiTwoActionIconPreference(Context context) {
        super(context);
    }

    @Override // com.android.car.ui.preference.CarUiTwoActionBasePreference
    protected void init(AttributeSet attributeSet) {
        super.init(attributeSet);
        TypedArray obtainStyledAttributes = getContext().obtainStyledAttributes(attributeSet, amu.e);
        try {
            this.mSecondaryActionIcon = obtainStyledAttributes.getDrawable(0);
            obtainStyledAttributes.recycle();
            setLayoutResourceInternal(R.layout.car_ui_preference_two_action_icon);
        } catch (Throwable th) {
            obtainStyledAttributes.recycle();
            throw th;
        }
    }

    /* renamed from: lambda$onBindViewHolder$0$com-android-car-ui-preference-CarUiTwoActionIconPreference, reason: not valid java name */
    public /* synthetic */ void m3x216b9d78(View view) {
        performSecondaryActionClick();
    }

    @Override // com.android.car.ui.preference.CarUiPreference, androidx.preference.Preference
    public void onBindViewHolder(PreferenceViewHolder adoVar) {
        super.onBindViewHolder(adoVar);
        View g = CarUiResourceUtils.g(adoVar.itemView, R.id.car_ui_first_action_container);
        View g2 = CarUiResourceUtils.g(adoVar.itemView, R.id.car_ui_second_action_container);
        ViewGroup viewGroup = (ViewGroup) CarUiResourceUtils.g(adoVar.itemView, R.id.car_ui_secondary_action);
        ImageView imageView = (ImageView) CarUiResourceUtils.g(adoVar.itemView, R.id.car_ui_secondary_action_concrete);
        final int i = 0;
        adoVar.itemView.setFocusable(false);
        adoVar.itemView.setClickable(false);
        boolean z = true;
        z = true;
        final int i2 = z ? 1 : 0;
        g.setOnClickListener(new View.OnClickListener(this) { // from class: ano
            public final /* synthetic */ CarUiTwoActionIconPreference a;

            {
                this.a = this;
            }

            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                switch (i2) {
                    case 0:
                        this.a.m3x216b9d78(view);
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
        imageView.setImageDrawable(this.mSecondaryActionIcon);
        imageView.setEnabled(!isSecondaryActionEnabled() ? isClickableWhileDisabled() : true);
        viewGroup.setEnabled(!isSecondaryActionEnabled() ? isClickableWhileDisabled() : true);
        if (!isSecondaryActionEnabled() && !isClickableWhileDisabled()) {
            z = false;
        }
        viewGroup.setFocusable(z);
        viewGroup.setOnClickListener(new View.OnClickListener(this) { // from class: ano
            public final /* synthetic */ CarUiTwoActionIconPreference a;

            {
                this.a = this;
            }

            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                switch (i) {
                    case 0:
                        this.a.m3x216b9d78(view);
                        break;
                    default:
                        this.a.performClickUnrestricted(view);
                        break;
                }
            }
        });
        CarUiResourceUtils.k(viewGroup, isSecondaryActionEnabled(), isUxRestricted());
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

    public void setSecondaryActionIcon(int i) {
        setSecondaryActionIcon(PrimesDebugEventsHelper.a(getContext(), i));
    }

    public CarUiTwoActionIconPreference(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
    }

    public CarUiTwoActionIconPreference(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
    }

    public void setSecondaryActionIcon(Drawable drawable) {
        this.mSecondaryActionIcon = drawable;
        notifyChanged();
    }

    public CarUiTwoActionIconPreference(Context context, AttributeSet attributeSet, int i, int i2) {
        super(context, attributeSet, i, i2);
    }
}
