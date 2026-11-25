package com.android.car.ui.preference;

import android.content.Context;
import android.content.DialogInterface;
import android.util.AttributeSet;
import android.widget.SeekBar;
import android.widget.TextView;
import androidx.preference.DialogPreference;
import com.google.android.embedded.projection.R;
import defpackage.ado;
import defpackage.aoa;
import defpackage.aro;

/* compiled from: PG */
/* loaded from: classes.dex */
public class CarUiSeekBarDialogPreference extends DialogPreference implements DialogInterface.OnClickListener, aoa {
    public int a;
    public SeekBar b;
    public TextView c;
    public TextView d;
    public TextView e;
    public int f;

    public CarUiSeekBarDialogPreference(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.f = 100;
        setDialogLayoutResource(R.layout.car_ui_seekbar_dialog);
        setPositiveButtonText(R.string.car_ui_dialog_preference_positive);
        setNegativeButtonText(R.string.car_ui_dialog_preference_negative);
    }

    @Override // androidx.preference.Preference
    public final void onAttached() {
        super.onAttached();
        this.a = getPersistedInt(0);
    }

    @Override // androidx.preference.Preference
    public final void onBindViewHolder(ado adoVar) {
        super.onBindViewHolder(adoVar);
        aro.l(adoVar.itemView, false);
    }

    @Override // android.content.DialogInterface.OnClickListener
    public final /* synthetic */ void onClick(DialogInterface dialogInterface, int i) {
    }

    @Override // androidx.preference.Preference
    public final void performClick() {
        if (!isEnabled()) {
            isSelectable();
        }
        super.performClick();
    }
}
