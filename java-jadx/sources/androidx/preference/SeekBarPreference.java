package androidx.preference;

import android.content.Context;
import android.content.res.TypedArray;
import android.os.Parcelable;
import android.util.AttributeSet;
import android.util.Log;
import android.view.View;
import android.widget.SeekBar;
import android.widget.TextView;
import com.google.android.embedded.projection.R;
import defpackage.ado;
import defpackage.adp;
import defpackage.adq;
import defpackage.adr;
import defpackage.ads;

/* compiled from: PG */
/* loaded from: classes.dex */
public class SeekBarPreference extends Preference {
    public int a;
    public int b;
    public boolean c;
    public SeekBar d;
    public boolean e;
    public boolean f;
    private int g;
    private int h;
    private TextView i;
    private boolean j;
    private SeekBar.OnSeekBarChangeListener k;
    private View.OnKeyListener l;

    public SeekBarPreference(Context context, AttributeSet attributeSet) {
        super(context, attributeSet, R.attr.seekBarPreferenceStyle, 0);
        this.k = new adq(this);
        this.l = new adr(this);
        TypedArray obtainStyledAttributes = context.obtainStyledAttributes(attributeSet, adp.k, R.attr.seekBarPreferenceStyle, 0);
        this.b = obtainStyledAttributes.getInt(3, 0);
        int i = obtainStyledAttributes.getInt(1, 100);
        int i2 = this.b;
        i = i < i2 ? i2 : i;
        if (i != this.g) {
            this.g = i;
            notifyChanged();
        }
        int i3 = obtainStyledAttributes.getInt(4, 0);
        if (i3 != this.h) {
            this.h = Math.min(this.g - this.b, Math.abs(i3));
            notifyChanged();
        }
        this.e = obtainStyledAttributes.getBoolean(2, true);
        this.j = obtainStyledAttributes.getBoolean(5, false);
        this.f = obtainStyledAttributes.getBoolean(6, false);
        obtainStyledAttributes.recycle();
    }

    private final void c(int i, boolean z) {
        int i2 = this.b;
        if (i < i2) {
            i = i2;
        }
        int i3 = this.g;
        if (i > i3) {
            i = i3;
        }
        if (i != this.a) {
            this.a = i;
            b(i);
            persistInt(i);
            if (z) {
                notifyChanged();
            }
        }
    }

    public final void a(SeekBar seekBar) {
        int progress = this.b + seekBar.getProgress();
        if (progress != this.a) {
            if (callChangeListener(Integer.valueOf(progress))) {
                c(progress, false);
            } else {
                seekBar.setProgress(this.a - this.b);
                b(this.a);
            }
        }
    }

    public final void b(int i) {
        TextView textView = this.i;
        if (textView != null) {
            textView.setText(String.valueOf(i));
        }
    }

    @Override // androidx.preference.Preference
    public final void onBindViewHolder(ado adoVar) {
        super.onBindViewHolder(adoVar);
        adoVar.itemView.setOnKeyListener(this.l);
        this.d = (SeekBar) adoVar.a(R.id.seekbar);
        TextView textView = (TextView) adoVar.a(R.id.seekbar_value);
        this.i = textView;
        if (this.j) {
            textView.setVisibility(0);
        } else {
            textView.setVisibility(8);
            this.i = null;
        }
        SeekBar seekBar = this.d;
        if (seekBar == null) {
            Log.e("SeekBarPreference", "SeekBar view is null in onBindViewHolder.");
            return;
        }
        seekBar.setOnSeekBarChangeListener(this.k);
        this.d.setMax(this.g - this.b);
        int i = this.h;
        if (i != 0) {
            this.d.setKeyProgressIncrement(i);
        } else {
            this.h = this.d.getKeyProgressIncrement();
        }
        this.d.setProgress(this.a - this.b);
        b(this.a);
        this.d.setEnabled(isEnabled());
    }

    @Override // androidx.preference.Preference
    protected final Object onGetDefaultValue(TypedArray typedArray, int i) {
        return Integer.valueOf(typedArray.getInt(i, 0));
    }

    @Override // androidx.preference.Preference
    protected final void onRestoreInstanceState(Parcelable parcelable) {
        if (!parcelable.getClass().equals(ads.class)) {
            super.onRestoreInstanceState(parcelable);
            return;
        }
        ads adsVar = (ads) parcelable;
        super.onRestoreInstanceState(adsVar.getSuperState());
        this.a = adsVar.a;
        this.b = adsVar.b;
        this.g = adsVar.c;
        notifyChanged();
    }

    @Override // androidx.preference.Preference
    protected final Parcelable onSaveInstanceState() {
        Parcelable onSaveInstanceState = super.onSaveInstanceState();
        if (isPersistent()) {
            return onSaveInstanceState;
        }
        ads adsVar = new ads(onSaveInstanceState);
        adsVar.a = this.a;
        adsVar.b = this.b;
        adsVar.c = this.g;
        return adsVar;
    }

    @Override // androidx.preference.Preference
    protected final void onSetInitialValue(Object obj) {
        if (obj == null) {
            obj = 0;
        }
        c(getPersistedInt(((Integer) obj).intValue()), true);
    }
}
