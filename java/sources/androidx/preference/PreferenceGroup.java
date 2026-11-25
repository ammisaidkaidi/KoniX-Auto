package androidx.preference;

import android.content.Context;
import android.content.res.TypedArray;
import android.os.Bundle;
import android.os.Handler;
import android.os.Parcelable;
import android.text.TextUtils;
import android.util.AttributeSet;
import android.util.Log;
import defpackage.PreferenceGroupClearListRunnable;
import defpackage.DropDownPreferenceSavedState;
import defpackage.PreferenceManager;
import defpackage.PreferenceStyleableAttrs;
import defpackage.ProtoTextFormatPrinterUtil;
import defpackage.SimpleArrayMap;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;

/* compiled from: PG */
/* loaded from: classes.dex */
public abstract class PreferenceGroup extends Preference {
    public final SimpleArrayMap a;
    public List b;
    public int c;
    private final Handler d;
    private boolean e;
    private int f;
    private boolean g;
    private final Runnable h;

    public PreferenceGroup(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    public final int a() {
        return this.b.size();
    }

    public final Preference b(CharSequence charSequence) {
        Preference b;
        if (charSequence == null) {
            throw new IllegalArgumentException("Key cannot be null");
        }
        if (TextUtils.equals(getKey(), charSequence)) {
            return this;
        }
        int a = a();
        for (int i = 0; i < a; i++) {
            Preference c = c(i);
            if (TextUtils.equals(c.getKey(), charSequence)) {
                return c;
            }
            if ((c instanceof PreferenceGroup) && (b = ((PreferenceGroup) c).b(charSequence)) != null) {
                return b;
            }
        }
        return null;
    }

    public final Preference c(int i) {
        return (Preference) this.b.get(i);
    }

    public final void d(int i) {
        if (i != Integer.MAX_VALUE && !hasKey()) {
            Log.e("PreferenceGroup", String.valueOf(getClass().getSimpleName()).concat(" should have a key defined if it contains an expandable preference"));
        }
        this.c = i;
    }

    @Override // androidx.preference.Preference
    public final void dispatchRestoreInstanceState(Bundle bundle) {
        super.dispatchRestoreInstanceState(bundle);
        int a = a();
        for (int i = 0; i < a; i++) {
            c(i).dispatchRestoreInstanceState(bundle);
        }
    }

    @Override // androidx.preference.Preference
    public final void dispatchSaveInstanceState(Bundle bundle) {
        super.dispatchSaveInstanceState(bundle);
        int a = a();
        for (int i = 0; i < a; i++) {
            c(i).dispatchSaveInstanceState(bundle);
        }
    }

    public boolean e() {
        return true;
    }

    public final void f(Preference preference) {
        long a;
        if (this.b.contains(preference)) {
            return;
        }
        if (preference.getKey() != null) {
            PreferenceGroup preferenceGroup = this;
            while (preferenceGroup.getParent() != null) {
                preferenceGroup = preferenceGroup.getParent();
            }
            String key = preference.getKey();
            if (preferenceGroup.b(key) != null) {
                Log.e("PreferenceGroup", "Found duplicated key: \"" + key + "\". This can cause unintended behaviour, please use unique keys for every preference.");
            }
        }
        if (preference.getOrder() == Integer.MAX_VALUE) {
            if (this.e) {
                int i = this.f;
                this.f = i + 1;
                preference.setOrder(i);
            }
            if (preference instanceof PreferenceGroup) {
                ((PreferenceGroup) preference).e = this.e;
            }
        }
        int binarySearch = Collections.binarySearch(this.b, preference);
        if (binarySearch < 0) {
            binarySearch = (-binarySearch) - 1;
        }
        preference.onParentChanged(this, shouldDisableDependents());
        synchronized (this) {
            this.b.add(binarySearch, preference);
        }
        PreferenceManager preferenceManager = getPreferenceManager();
        String key2 = preference.getKey();
        if (key2 == null || !this.a.containsKey(key2)) {
            a = preferenceManager.a();
        } else {
            a = ((Long) this.a.get(key2)).longValue();
            this.a.remove(key2);
        }
        preference.onAttachedToHierarchy(preferenceManager, a);
        preference.assignParent(this);
        if (this.g) {
            preference.onAttached();
        }
        notifyHierarchyChanged();
    }

    public final void g(Preference preference) {
        h(preference);
        notifyHierarchyChanged();
    }

    public final void h(Preference preference) {
        synchronized (this) {
            preference.onPrepareForRemoval();
            if (preference.getParent() == this) {
                preference.assignParent(null);
            }
            if (this.b.remove(preference)) {
                String key = preference.getKey();
                if (key != null) {
                    this.a.put(key, Long.valueOf(preference.getId()));
                    this.d.removeCallbacks(this.h);
                    this.d.post(this.h);
                }
                if (this.g) {
                    preference.onDetached();
                }
            }
        }
    }

    @Override // androidx.preference.Preference
    public final void notifyDependencyChange(boolean z) {
        super.notifyDependencyChange(z);
        int a = a();
        for (int i = 0; i < a; i++) {
            c(i).onParentChanged(this, z);
        }
    }

    @Override // androidx.preference.Preference
    public final void onAttached() {
        super.onAttached();
        this.g = true;
        int a = a();
        for (int i = 0; i < a; i++) {
            c(i).onAttached();
        }
    }

    @Override // androidx.preference.Preference
    public final void onDetached() {
        super.onDetached();
        this.g = false;
        int a = a();
        for (int i = 0; i < a; i++) {
            c(i).onDetached();
        }
    }

    @Override // androidx.preference.Preference
    protected final void onRestoreInstanceState(Parcelable parcelable) {
        if (parcelable == null || !parcelable.getClass().equals(DropDownPreferenceSavedState.class)) {
            super.onRestoreInstanceState(parcelable);
            return;
        }
        DropDownPreferenceSavedState adcVar = (DropDownPreferenceSavedState) parcelable;
        this.c = adcVar.a;
        super.onRestoreInstanceState(adcVar.getSuperState());
    }

    @Override // androidx.preference.Preference
    protected final Parcelable onSaveInstanceState() {
        return new DropDownPreferenceSavedState(super.onSaveInstanceState(), this.c);
    }

    public PreferenceGroup(Context context, AttributeSet attributeSet, int i) {
        this(context, attributeSet, i, null);
    }

    public PreferenceGroup(Context context, AttributeSet attributeSet, int i, byte[] bArr) {
        super(context, attributeSet, i, 0);
        this.a = new SimpleArrayMap();
        this.d = new Handler();
        this.e = true;
        this.f = 0;
        this.g = false;
        this.c = Preference.DEFAULT_ORDER;
        this.h = new PreferenceGroupClearListRunnable(this);
        this.b = new ArrayList();
        TypedArray obtainStyledAttributes = context.obtainStyledAttributes(attributeSet, adp.i, i, 0);
        this.e = ev.q(obtainStyledAttributes, 2, 2, true);
        if (obtainStyledAttributes.hasValue(1)) {
            d(ev.t(obtainStyledAttributes, 1, 1));
        }
        obtainStyledAttributes.recycle();
    }
}
