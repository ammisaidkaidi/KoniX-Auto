package androidx.preference;

import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.drawable.Drawable;
import android.util.AttributeSet;
import com.google.android.embedded.projection.R;
import defpackage.PreferenceStyleableAttrs;
import defpackage.ProtoTextFormatPrinterUtil;
import defpackage.SimpleHolderKj;

/* compiled from: PG */
/* loaded from: classes.dex */
public abstract class DialogPreference extends Preference {
    private Drawable mDialogIcon;
    private int mDialogLayoutResId;
    private CharSequence mDialogMessage;
    private CharSequence mDialogTitle;
    private CharSequence mNegativeButtonText;
    private CharSequence mPositiveButtonText;

    public DialogPreference(Context context) {
        this(context, null);
    }

    public Drawable getDialogIcon() {
        return this.mDialogIcon;
    }

    public int getDialogLayoutResource() {
        return this.mDialogLayoutResId;
    }

    public CharSequence getDialogMessage() {
        return this.mDialogMessage;
    }

    public CharSequence getDialogTitle() {
        return this.mDialogTitle;
    }

    public CharSequence getNegativeButtonText() {
        return this.mNegativeButtonText;
    }

    public CharSequence getPositiveButtonText() {
        return this.mPositiveButtonText;
    }

    @Override // androidx.preference.Preference
    protected void onClick() {
        getPreferenceManager().g(this);
    }

    public void setDialogIcon(int i) {
        this.mDialogIcon = SimpleHolderKj.b(getContext(), i);
    }

    public void setDialogIcon(Drawable drawable) {
        this.mDialogIcon = drawable;
    }

    public void setDialogLayoutResource(int i) {
        this.mDialogLayoutResId = i;
    }

    public void setDialogMessage(int i) {
        setDialogMessage(getContext().getString(i));
    }

    public void setDialogMessage(CharSequence charSequence) {
        this.mDialogMessage = charSequence;
    }

    public void setDialogTitle(int i) {
        setDialogTitle(getContext().getString(i));
    }

    public void setDialogTitle(CharSequence charSequence) {
        this.mDialogTitle = charSequence;
    }

    public void setNegativeButtonText(int i) {
        setNegativeButtonText(getContext().getString(i));
    }

    public void setNegativeButtonText(CharSequence charSequence) {
        this.mNegativeButtonText = charSequence;
    }

    public void setPositiveButtonText(int i) {
        setPositiveButtonText(getContext().getString(i));
    }

    public void setPositiveButtonText(CharSequence charSequence) {
        this.mPositiveButtonText = charSequence;
    }

    public DialogPreference(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, ev.k(context, R.attr.dialogPreferenceStyle, android.R.attr.dialogPreferenceStyle));
    }

    public DialogPreference(Context context, AttributeSet attributeSet, int i) {
        this(context, attributeSet, i, 0);
    }

    public DialogPreference(Context context, AttributeSet attributeSet, int i, int i2) {
        super(context, attributeSet, i, i2);
        TypedArray obtainStyledAttributes = context.obtainStyledAttributes(attributeSet, adp.c, i, i2);
        String p = ev.p(obtainStyledAttributes, 9, 0);
        this.mDialogTitle = p;
        if (p == null) {
            this.mDialogTitle = getTitle();
        }
        this.mDialogMessage = ev.p(obtainStyledAttributes, 8, 1);
        Drawable drawable = obtainStyledAttributes.getDrawable(6);
        this.mDialogIcon = drawable == null ? obtainStyledAttributes.getDrawable(2) : drawable;
        this.mPositiveButtonText = ev.p(obtainStyledAttributes, 11, 3);
        this.mNegativeButtonText = ev.p(obtainStyledAttributes, 10, 4);
        this.mDialogLayoutResId = ev.m(obtainStyledAttributes, 7, 5, 0);
        obtainStyledAttributes.recycle();
    }
}
