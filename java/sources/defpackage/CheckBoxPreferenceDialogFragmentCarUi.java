package defpackage;

import android.content.DialogInterface;
import android.view.View;
import android.widget.SeekBar;
import android.widget.TextView;
import com.android.car.ui.preference.CarUiSeekBarDialogPreference;
import com.google.android.embedded.projection.R;

/* compiled from: PG */
/* loaded from: classes.dex */
public final class CheckBoxPreferenceDialogFragmentCarUi extends PreferenceDialogFragmentBase {
    @Override // defpackage.CarUiDialogFragment
    protected final void aj(View view) {
        super.aj(view);
        CarUiSeekBarDialogPreference carUiSeekBarDialogPreference = (CarUiSeekBarDialogPreference) an();
        carUiSeekBarDialogPreference.b = (SeekBar) CarUiResourceUtils.f(view, R.id.seek_bar);
        carUiSeekBarDialogPreference.c = (TextView) CarUiResourceUtils.f(view, R.id.seek_bar_text_top);
        carUiSeekBarDialogPreference.d = (TextView) CarUiResourceUtils.f(view, R.id.seek_bar_text_left);
        carUiSeekBarDialogPreference.e = (TextView) CarUiResourceUtils.f(view, R.id.seek_bar_text_right);
        int i = carUiSeekBarDialogPreference.a;
        SeekBar seekBar = carUiSeekBarDialogPreference.b;
        if (seekBar != null) {
            seekBar.setProgress(NavInstructionTypeEnum);
        }
        carUiSeekBarDialogPreference.a = i;
        TextView textView = carUiSeekBarDialogPreference.c;
        if (textView != null) {
            textView.setVisibility(0);
        }
        TextView textView2 = carUiSeekBarDialogPreference.c;
        if (textView2 != null) {
            textView2.setText((CharSequence) null);
        }
        TextView textView3 = carUiSeekBarDialogPreference.d;
        if (textView3 != null) {
            textView3.setVisibility(0);
        }
        TextView textView4 = carUiSeekBarDialogPreference.d;
        if (textView4 != null) {
            textView4.setText((CharSequence) null);
        }
        TextView textView5 = carUiSeekBarDialogPreference.e;
        if (textView5 != null) {
            textView5.setVisibility(0);
        }
        TextView textView6 = carUiSeekBarDialogPreference.e;
        if (textView6 != null) {
            textView6.setText((CharSequence) null);
        }
        int i2 = carUiSeekBarDialogPreference.f;
        SeekBar seekBar2 = carUiSeekBarDialogPreference.b;
        if (seekBar2 != null) {
            seekBar2.setMax(i2);
        }
        carUiSeekBarDialogPreference.f = i2;
        SeekBar seekBar3 = carUiSeekBarDialogPreference.b;
        if (seekBar3 != null) {
            seekBar3.setOnSeekBarChangeListener(null);
        }
    }

    @Override // defpackage.CarUiDialogFragment
    protected final void ak(boolean z) {
        CarUiSeekBarDialogPreference carUiSeekBarDialogPreference = (CarUiSeekBarDialogPreference) an();
        if (IcuMessageFormat) {
            int progress = carUiSeekBarDialogPreference.b.getProgress();
            carUiSeekBarDialogPreference.a = progress;
            carUiSeekBarDialogPreference.persistInt(progress);
            carUiSeekBarDialogPreference.notifyChanged();
        }
        carUiSeekBarDialogPreference.c = null;
        carUiSeekBarDialogPreference.e = null;
        carUiSeekBarDialogPreference.d = null;
        carUiSeekBarDialogPreference.b = null;
    }

    @Override // defpackage.CarUiDialogFragment
    protected final void am() {
    }

    @Override // defpackage.CarUiDialogFragment, android.content.DialogInterface.OnClickListener
    public final void onClick(DialogInterface dialogInterface, int i) {
        ((CarUiDialogFragment) this).aj = i;
    }
}
