package androidx.preference;

import android.R;
import android.content.Context;
import android.content.Intent;
import android.content.SharedPreferences;
import android.content.res.TypedArray;
import android.graphics.drawable.Drawable;
import android.os.Bundle;
import android.os.Parcelable;
import android.text.TextUtils;
import android.util.AttributeSet;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.TextView;
import defpackage.acm;
import defpackage.acn;
import defpackage.aco;
import defpackage.acp;
import defpackage.acq;
import defpackage.acr;
import defpackage.acs;
import defpackage.act;
import defpackage.adk;
import defpackage.adl;
import defpackage.ado;
import defpackage.adp;
import defpackage.ev;
import defpackage.hs;
import defpackage.ik;
import defpackage.kj;
import java.util.ArrayList;
import java.util.List;
import java.util.Set;

/* compiled from: PG */
/* loaded from: classes.dex */
public class Preference implements Comparable {
    private static final String CLIPBOARD_ID = "Preference";
    public static final int DEFAULT_ORDER = Integer.MAX_VALUE;
    private boolean mAllowDividerAbove;
    private boolean mAllowDividerBelow;
    private boolean mBaseMethodCalled;
    private final View.OnClickListener mClickListener;
    private Context mContext;
    private boolean mCopyingEnabled;
    private Object mDefaultValue;
    private String mDependencyKey;
    private boolean mDependencyMet;
    private List mDependents;
    private boolean mEnabled;
    private Bundle mExtras;
    private String mFragment;
    private boolean mHasId;
    private boolean mHasSingleLineTitleAttr;
    private Drawable mIcon;
    private int mIconResId;
    private boolean mIconSpaceReserved;
    private long mId;
    private Intent mIntent;
    private String mKey;
    private int mLayoutResId;
    private aco mListener;
    private acp mOnChangeListener;
    private acq mOnClickListener;
    private acr mOnCopyListener;
    private int mOrder;
    private boolean mParentDependencyMet;
    private PreferenceGroup mParentGroup;
    private boolean mPersistent;
    private act mPreferenceDataStore;
    private adl mPreferenceManager;
    private boolean mRequiresKey;
    private boolean mSelectable;
    private boolean mShouldDisableView;
    private boolean mSingleLineTitle;
    private CharSequence mSummary;
    private acs mSummaryProvider;
    private CharSequence mTitle;
    private int mViewId;
    private boolean mVisible;
    private boolean mWasDetached;
    private int mWidgetLayoutResId;

    public Preference(Context context) {
        this(context, null);
    }

    private void dispatchSetInitialValue() {
        if (getPreferenceDataStore() != null) {
            onSetInitialValue(true, this.mDefaultValue);
            return;
        }
        if (shouldPersist() && getSharedPreferences().contains(this.mKey)) {
            onSetInitialValue(true, null);
            return;
        }
        Object obj = this.mDefaultValue;
        if (obj != null) {
            onSetInitialValue(false, obj);
        }
    }

    private void registerDependency() {
        if (TextUtils.isEmpty(this.mDependencyKey)) {
            return;
        }
        Preference findPreferenceInHierarchy = findPreferenceInHierarchy(this.mDependencyKey);
        if (findPreferenceInHierarchy != null) {
            findPreferenceInHierarchy.registerDependent(this);
            return;
        }
        throw new IllegalStateException("Dependency \"" + this.mDependencyKey + "\" not found for preference \"" + this.mKey + "\" (title: \"" + ((Object) this.mTitle) + "\"");
    }

    private void registerDependent(Preference preference) {
        if (this.mDependents == null) {
            this.mDependents = new ArrayList();
        }
        this.mDependents.add(preference);
        preference.onDependencyChanged(this, shouldDisableDependents());
    }

    private void setEnabledStateOnViews(View view, boolean z) {
        view.setEnabled(z);
        if (view instanceof ViewGroup) {
            ViewGroup viewGroup = (ViewGroup) view;
            for (int childCount = viewGroup.getChildCount() - 1; childCount >= 0; childCount--) {
                setEnabledStateOnViews(viewGroup.getChildAt(childCount), z);
            }
        }
    }

    private void tryCommit(SharedPreferences.Editor editor) {
        if (this.mPreferenceManager.a) {
            return;
        }
        editor.apply();
    }

    private void unregisterDependency() {
        Preference findPreferenceInHierarchy;
        String str = this.mDependencyKey;
        if (str == null || (findPreferenceInHierarchy = findPreferenceInHierarchy(str)) == null) {
            return;
        }
        findPreferenceInHierarchy.unregisterDependent(this);
    }

    private void unregisterDependent(Preference preference) {
        List list = this.mDependents;
        if (list != null) {
            list.remove(preference);
        }
    }

    public void assignParent(PreferenceGroup preferenceGroup) {
        if (preferenceGroup != null && this.mParentGroup != null) {
            throw new IllegalStateException("This preference already has a parent. You must remove the existing parent before assigning a new one.");
        }
        this.mParentGroup = preferenceGroup;
    }

    public boolean callChangeListener(Object obj) {
        acp acpVar = this.mOnChangeListener;
        return acpVar == null || acpVar.a();
    }

    public final void clearWasDetached() {
        this.mWasDetached = false;
    }

    @Override // java.lang.Comparable
    public int compareTo(Preference preference) {
        int i = this.mOrder;
        int i2 = preference.mOrder;
        if (i != i2) {
            return i - i2;
        }
        CharSequence charSequence = this.mTitle;
        CharSequence charSequence2 = preference.mTitle;
        if (charSequence == charSequence2) {
            return 0;
        }
        if (charSequence == null) {
            return 1;
        }
        if (charSequence2 == null) {
            return -1;
        }
        return charSequence.toString().compareToIgnoreCase(preference.mTitle.toString());
    }

    public void dispatchRestoreInstanceState(Bundle bundle) {
        Parcelable parcelable;
        if (!hasKey() || (parcelable = bundle.getParcelable(this.mKey)) == null) {
            return;
        }
        this.mBaseMethodCalled = false;
        onRestoreInstanceState(parcelable);
        if (!this.mBaseMethodCalled) {
            throw new IllegalStateException("Derived class did not call super.onRestoreInstanceState()");
        }
    }

    public void dispatchSaveInstanceState(Bundle bundle) {
        if (hasKey()) {
            this.mBaseMethodCalled = false;
            Parcelable onSaveInstanceState = onSaveInstanceState();
            if (!this.mBaseMethodCalled) {
                throw new IllegalStateException("Derived class did not call super.onSaveInstanceState()");
            }
            if (onSaveInstanceState != null) {
                bundle.putParcelable(this.mKey, onSaveInstanceState);
            }
        }
    }

    protected Preference findPreferenceInHierarchy(String str) {
        adl adlVar = this.mPreferenceManager;
        if (adlVar == null) {
            return null;
        }
        return adlVar.e(str);
    }

    public Context getContext() {
        return this.mContext;
    }

    public String getDependency() {
        return this.mDependencyKey;
    }

    public Bundle getExtras() {
        if (this.mExtras == null) {
            this.mExtras = new Bundle();
        }
        return this.mExtras;
    }

    public StringBuilder getFilterableStringBuilder() {
        StringBuilder sb = new StringBuilder();
        CharSequence title = getTitle();
        if (!TextUtils.isEmpty(title)) {
            sb.append(title);
            sb.append(' ');
        }
        CharSequence summary = getSummary();
        if (!TextUtils.isEmpty(summary)) {
            sb.append(summary);
            sb.append(' ');
        }
        if (sb.length() > 0) {
            sb.setLength(sb.length() - 1);
        }
        return sb;
    }

    public String getFragment() {
        return this.mFragment;
    }

    public Drawable getIcon() {
        int i;
        if (this.mIcon == null && (i = this.mIconResId) != 0) {
            this.mIcon = kj.b(this.mContext, i);
        }
        return this.mIcon;
    }

    public long getId() {
        return this.mId;
    }

    public Intent getIntent() {
        return this.mIntent;
    }

    public String getKey() {
        return this.mKey;
    }

    public final int getLayoutResource() {
        return this.mLayoutResId;
    }

    public acp getOnPreferenceChangeListener() {
        return this.mOnChangeListener;
    }

    public acq getOnPreferenceClickListener() {
        return this.mOnClickListener;
    }

    public int getOrder() {
        return this.mOrder;
    }

    public PreferenceGroup getParent() {
        return this.mParentGroup;
    }

    protected boolean getPersistedBoolean(boolean z) {
        if (!shouldPersist()) {
            return z;
        }
        if (getPreferenceDataStore() == null) {
            return this.mPreferenceManager.d().getBoolean(this.mKey, z);
        }
        throw null;
    }

    protected float getPersistedFloat(float f) {
        if (!shouldPersist()) {
            return f;
        }
        if (getPreferenceDataStore() == null) {
            return this.mPreferenceManager.d().getFloat(this.mKey, f);
        }
        throw null;
    }

    protected int getPersistedInt(int i) {
        if (!shouldPersist()) {
            return i;
        }
        if (getPreferenceDataStore() == null) {
            return this.mPreferenceManager.d().getInt(this.mKey, i);
        }
        throw null;
    }

    protected long getPersistedLong(long j) {
        if (!shouldPersist()) {
            return j;
        }
        if (getPreferenceDataStore() == null) {
            return this.mPreferenceManager.d().getLong(this.mKey, j);
        }
        throw null;
    }

    protected String getPersistedString(String str) {
        if (!shouldPersist()) {
            return str;
        }
        if (getPreferenceDataStore() == null) {
            return this.mPreferenceManager.d().getString(this.mKey, str);
        }
        throw null;
    }

    public Set getPersistedStringSet(Set set) {
        if (!shouldPersist()) {
            return set;
        }
        if (getPreferenceDataStore() == null) {
            return this.mPreferenceManager.d().getStringSet(this.mKey, set);
        }
        throw null;
    }

    public act getPreferenceDataStore() {
        act actVar = this.mPreferenceDataStore;
        if (actVar != null) {
            return actVar;
        }
        return null;
    }

    public adl getPreferenceManager() {
        return this.mPreferenceManager;
    }

    public SharedPreferences getSharedPreferences() {
        if (this.mPreferenceManager == null || getPreferenceDataStore() != null) {
            return null;
        }
        return this.mPreferenceManager.d();
    }

    public boolean getShouldDisableView() {
        return this.mShouldDisableView;
    }

    public CharSequence getSummary() {
        return getSummaryProvider() != null ? getSummaryProvider().a(this) : this.mSummary;
    }

    public final acs getSummaryProvider() {
        return this.mSummaryProvider;
    }

    public CharSequence getTitle() {
        return this.mTitle;
    }

    public final int getWidgetLayoutResource() {
        return this.mWidgetLayoutResId;
    }

    public boolean hasKey() {
        return !TextUtils.isEmpty(this.mKey);
    }

    public boolean isCopyingEnabled() {
        return this.mCopyingEnabled;
    }

    public boolean isEnabled() {
        return this.mEnabled && this.mDependencyMet && this.mParentDependencyMet;
    }

    public boolean isIconSpaceReserved() {
        return this.mIconSpaceReserved;
    }

    public boolean isPersistent() {
        return this.mPersistent;
    }

    public boolean isSelectable() {
        return this.mSelectable;
    }

    public final boolean isShown() {
        if (!isVisible() || getPreferenceManager() == null) {
            return false;
        }
        if (this == getPreferenceManager().b) {
            return true;
        }
        PreferenceGroup parent = getParent();
        if (parent == null) {
            return false;
        }
        return parent.isShown();
    }

    public boolean isSingleLineTitle() {
        return this.mSingleLineTitle;
    }

    public final boolean isVisible() {
        return this.mVisible;
    }

    public void notifyChanged() {
        aco acoVar = this.mListener;
        if (acoVar != null) {
            acoVar.a(this);
        }
    }

    public void notifyDependencyChange(boolean z) {
        List list = this.mDependents;
        if (list == null) {
            return;
        }
        int size = list.size();
        for (int i = 0; i < size; i++) {
            ((Preference) list.get(i)).onDependencyChanged(this, z);
        }
    }

    public void notifyHierarchyChanged() {
        aco acoVar = this.mListener;
        if (acoVar != null) {
            acoVar.b();
        }
    }

    public void onAttached() {
        registerDependency();
    }

    public void onAttachedToHierarchy(adl adlVar) {
        this.mPreferenceManager = adlVar;
        if (!this.mHasId) {
            this.mId = adlVar.a();
        }
        dispatchSetInitialValue();
    }

    /* JADX WARN: Removed duplicated region for block: B:22:0x0086  */
    /* JADX WARN: Removed duplicated region for block: B:29:0x00a6  */
    /* JADX WARN: Removed duplicated region for block: B:30:0x00aa  */
    /* JADX WARN: Removed duplicated region for block: B:43:0x00be  */
    /* JADX WARN: Removed duplicated region for block: B:45:0x00c7  */
    /* JADX WARN: Removed duplicated region for block: B:54:0x00dc  */
    /* JADX WARN: Removed duplicated region for block: B:61:0x010d  */
    /* JADX WARN: Removed duplicated region for block: B:70:0x0110  */
    /* JADX WARN: Removed duplicated region for block: B:71:0x00e4  */
    /* JADX WARN: Removed duplicated region for block: B:8:0x0046  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public void onBindViewHolder(ado adoVar) {
        Integer num;
        TextView textView;
        ImageView imageView;
        View a;
        boolean isCopyingEnabled;
        View view = adoVar.itemView;
        view.setOnClickListener(this.mClickListener);
        view.setId(this.mViewId);
        TextView textView2 = (TextView) adoVar.a(R.id.summary);
        if (textView2 != null) {
            CharSequence summary = getSummary();
            if (!TextUtils.isEmpty(summary)) {
                textView2.setText(summary);
                textView2.setVisibility(0);
                num = Integer.valueOf(textView2.getCurrentTextColor());
                textView = (TextView) adoVar.a(R.id.title);
                if (textView != null) {
                    CharSequence title = getTitle();
                    if (TextUtils.isEmpty(title)) {
                        textView.setVisibility(8);
                    } else {
                        textView.setText(title);
                        textView.setVisibility(0);
                        if (this.mHasSingleLineTitleAttr) {
                            textView.setSingleLine(this.mSingleLineTitle);
                        }
                        if (!isSelectable() && isEnabled() && num != null) {
                            textView.setTextColor(num.intValue());
                        }
                    }
                }
                imageView = (ImageView) adoVar.a(R.id.icon);
                if (imageView != null) {
                    int i = this.mIconResId;
                    if (i == 0) {
                        if (this.mIcon != null) {
                            i = 0;
                        }
                        if (this.mIcon == null) {
                            imageView.setVisibility(0);
                        } else {
                            imageView.setVisibility(true != this.mIconSpaceReserved ? 8 : 4);
                        }
                    }
                    if (this.mIcon == null) {
                        this.mIcon = kj.b(this.mContext, i);
                    }
                    Drawable drawable = this.mIcon;
                    if (drawable != null) {
                        imageView.setImageDrawable(drawable);
                    }
                    if (this.mIcon == null) {
                    }
                }
                a = adoVar.a(com.google.android.embedded.projection.R.id.icon_frame);
                if (a == null) {
                    a = adoVar.a(R.id.icon_frame);
                }
                if (a != null) {
                    if (this.mIcon != null) {
                        a.setVisibility(0);
                    } else {
                        a.setVisibility(true == this.mIconSpaceReserved ? 4 : 8);
                    }
                }
                if (this.mShouldDisableView) {
                    setEnabledStateOnViews(view, true);
                } else {
                    setEnabledStateOnViews(view, isEnabled());
                }
                boolean isSelectable = isSelectable();
                view.setFocusable(isSelectable);
                view.setClickable(isSelectable);
                adoVar.c = this.mAllowDividerAbove;
                adoVar.d = this.mAllowDividerBelow;
                isCopyingEnabled = isCopyingEnabled();
                if (isCopyingEnabled && this.mOnCopyListener == null) {
                    this.mOnCopyListener = new acr(this);
                }
                view.setOnCreateContextMenuListener(!isCopyingEnabled ? this.mOnCopyListener : null);
                view.setLongClickable(isCopyingEnabled);
                if (isCopyingEnabled || isSelectable) {
                }
                hs.v(view, null);
                return;
            }
            textView2.setVisibility(8);
        }
        num = null;
        textView = (TextView) adoVar.a(R.id.title);
        if (textView != null) {
        }
        imageView = (ImageView) adoVar.a(R.id.icon);
        if (imageView != null) {
        }
        a = adoVar.a(com.google.android.embedded.projection.R.id.icon_frame);
        if (a == null) {
        }
        if (a != null) {
        }
        if (this.mShouldDisableView) {
        }
        boolean isSelectable2 = isSelectable();
        view.setFocusable(isSelectable2);
        view.setClickable(isSelectable2);
        adoVar.c = this.mAllowDividerAbove;
        adoVar.d = this.mAllowDividerBelow;
        isCopyingEnabled = isCopyingEnabled();
        if (isCopyingEnabled) {
            this.mOnCopyListener = new acr(this);
        }
        view.setOnCreateContextMenuListener(!isCopyingEnabled ? this.mOnCopyListener : null);
        view.setLongClickable(isCopyingEnabled);
        if (isCopyingEnabled) {
        }
    }

    protected void onClick() {
    }

    public void onDependencyChanged(Preference preference, boolean z) {
        if (this.mDependencyMet == z) {
            this.mDependencyMet = !z;
            notifyDependencyChange(shouldDisableDependents());
            notifyChanged();
        }
    }

    public void onDetached() {
        unregisterDependency();
        this.mWasDetached = true;
    }

    protected Object onGetDefaultValue(TypedArray typedArray, int i) {
        return null;
    }

    @Deprecated
    public void onInitializeAccessibilityNodeInfo(ik ikVar) {
    }

    public void onParentChanged(Preference preference, boolean z) {
        if (this.mParentDependencyMet == z) {
            this.mParentDependencyMet = !z;
            notifyDependencyChange(shouldDisableDependents());
            notifyChanged();
        }
    }

    protected void onPrepareForRemoval() {
        unregisterDependency();
    }

    protected void onRestoreInstanceState(Parcelable parcelable) {
        this.mBaseMethodCalled = true;
        if (parcelable != acn.EMPTY_STATE && parcelable != null) {
            throw new IllegalArgumentException("Wrong state class -- expecting Preference State");
        }
    }

    protected Parcelable onSaveInstanceState() {
        this.mBaseMethodCalled = true;
        return acn.EMPTY_STATE;
    }

    protected void onSetInitialValue(Object obj) {
    }

    @Deprecated
    protected void onSetInitialValue(boolean z, Object obj) {
        onSetInitialValue(obj);
    }

    public Bundle peekExtras() {
        return this.mExtras;
    }

    public void performClick() {
        adk adkVar;
        if (isEnabled() && isSelectable()) {
            onClick();
            acq acqVar = this.mOnClickListener;
            if (acqVar != null) {
                acqVar.a();
                return;
            }
            adl preferenceManager = getPreferenceManager();
            if ((preferenceManager == null || (adkVar = preferenceManager.c) == null || !adkVar.ak(this)) && this.mIntent != null) {
                getContext().startActivity(this.mIntent);
            }
        }
    }

    protected boolean persistBoolean(boolean z) {
        if (!shouldPersist()) {
            return false;
        }
        if (z == getPersistedBoolean(!z)) {
            return true;
        }
        if (getPreferenceDataStore() != null) {
            throw null;
        }
        SharedPreferences.Editor b = this.mPreferenceManager.b();
        b.putBoolean(this.mKey, z);
        tryCommit(b);
        return true;
    }

    protected boolean persistFloat(float f) {
        if (!shouldPersist()) {
            return false;
        }
        if (f == getPersistedFloat(Float.NaN)) {
            return true;
        }
        if (getPreferenceDataStore() != null) {
            throw null;
        }
        SharedPreferences.Editor b = this.mPreferenceManager.b();
        b.putFloat(this.mKey, f);
        tryCommit(b);
        return true;
    }

    public boolean persistInt(int i) {
        if (!shouldPersist()) {
            return false;
        }
        if (i == getPersistedInt(i ^ (-1))) {
            return true;
        }
        if (getPreferenceDataStore() != null) {
            throw null;
        }
        SharedPreferences.Editor b = this.mPreferenceManager.b();
        b.putInt(this.mKey, i);
        tryCommit(b);
        return true;
    }

    protected boolean persistLong(long j) {
        if (!shouldPersist()) {
            return false;
        }
        if (j == getPersistedLong((-1) ^ j)) {
            return true;
        }
        if (getPreferenceDataStore() != null) {
            throw null;
        }
        SharedPreferences.Editor b = this.mPreferenceManager.b();
        b.putLong(this.mKey, j);
        tryCommit(b);
        return true;
    }

    protected boolean persistString(String str) {
        if (!shouldPersist()) {
            return false;
        }
        if (TextUtils.equals(str, getPersistedString(null))) {
            return true;
        }
        if (getPreferenceDataStore() != null) {
            throw null;
        }
        SharedPreferences.Editor b = this.mPreferenceManager.b();
        b.putString(this.mKey, str);
        tryCommit(b);
        return true;
    }

    public boolean persistStringSet(Set set) {
        if (!shouldPersist()) {
            return false;
        }
        if (set.equals(getPersistedStringSet(null))) {
            return true;
        }
        if (getPreferenceDataStore() != null) {
            throw null;
        }
        SharedPreferences.Editor b = this.mPreferenceManager.b();
        b.putStringSet(this.mKey, set);
        tryCommit(b);
        return true;
    }

    public void requireKey() {
        if (TextUtils.isEmpty(this.mKey)) {
            throw new IllegalStateException("Preference does not have a key assigned.");
        }
        this.mRequiresKey = true;
    }

    public void restoreHierarchyState(Bundle bundle) {
        dispatchRestoreInstanceState(bundle);
    }

    public void saveHierarchyState(Bundle bundle) {
        dispatchSaveInstanceState(bundle);
    }

    public void setCopyingEnabled(boolean z) {
        if (this.mCopyingEnabled != z) {
            this.mCopyingEnabled = z;
            notifyChanged();
        }
    }

    public void setDefaultValue(Object obj) {
        this.mDefaultValue = obj;
    }

    public void setDependency(String str) {
        unregisterDependency();
        this.mDependencyKey = str;
        registerDependency();
    }

    public void setEnabled(boolean z) {
        if (this.mEnabled != z) {
            this.mEnabled = z;
            notifyDependencyChange(shouldDisableDependents());
            notifyChanged();
        }
    }

    public void setFragment(String str) {
        this.mFragment = str;
    }

    public void setIcon(int i) {
        setIcon(kj.b(this.mContext, i));
        this.mIconResId = i;
    }

    public void setIconSpaceReserved(boolean z) {
        if (this.mIconSpaceReserved != z) {
            this.mIconSpaceReserved = z;
            notifyChanged();
        }
    }

    public void setIntent(Intent intent) {
        this.mIntent = intent;
    }

    public void setKey(String str) {
        this.mKey = str;
        if (!this.mRequiresKey || hasKey()) {
            return;
        }
        requireKey();
    }

    public void setLayoutResource(int i) {
        this.mLayoutResId = i;
    }

    public final void setOnPreferenceChangeInternalListener(aco acoVar) {
        this.mListener = acoVar;
    }

    public void setOnPreferenceChangeListener(acp acpVar) {
        this.mOnChangeListener = acpVar;
    }

    public void setOnPreferenceClickListener(acq acqVar) {
        this.mOnClickListener = acqVar;
    }

    public void setOrder(int i) {
        if (i != this.mOrder) {
            this.mOrder = i;
            notifyHierarchyChanged();
        }
    }

    public void setPersistent(boolean z) {
        this.mPersistent = z;
    }

    public void setPreferenceDataStore(act actVar) {
        this.mPreferenceDataStore = actVar;
    }

    public void setSelectable(boolean z) {
        if (this.mSelectable != z) {
            this.mSelectable = z;
            notifyChanged();
        }
    }

    public void setShouldDisableView(boolean z) {
        if (this.mShouldDisableView != z) {
            this.mShouldDisableView = z;
            notifyChanged();
        }
    }

    public void setSingleLineTitle(boolean z) {
        this.mHasSingleLineTitleAttr = true;
        this.mSingleLineTitle = z;
    }

    public void setSummary(int i) {
        setSummary(this.mContext.getString(i));
    }

    public final void setSummaryProvider(acs acsVar) {
        this.mSummaryProvider = acsVar;
        notifyChanged();
    }

    public void setTitle(int i) {
        setTitle(this.mContext.getString(i));
    }

    public void setViewId(int i) {
        this.mViewId = i;
    }

    public final void setVisible(boolean z) {
        if (this.mVisible != z) {
            this.mVisible = z;
            aco acoVar = this.mListener;
            if (acoVar != null) {
                acoVar.c();
            }
        }
    }

    public void setWidgetLayoutResource(int i) {
        this.mWidgetLayoutResId = i;
    }

    public boolean shouldDisableDependents() {
        return !isEnabled();
    }

    protected boolean shouldPersist() {
        return this.mPreferenceManager != null && isPersistent() && hasKey();
    }

    public String toString() {
        return getFilterableStringBuilder().toString();
    }

    final boolean wasDetached() {
        return this.mWasDetached;
    }

    public Preference(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, ev.k(context, com.google.android.embedded.projection.R.attr.preferenceStyle, R.attr.preferenceStyle));
    }

    public void setIcon(Drawable drawable) {
        if (this.mIcon != drawable) {
            this.mIcon = drawable;
            this.mIconResId = 0;
            notifyChanged();
        }
    }

    public void setSummary(CharSequence charSequence) {
        if (getSummaryProvider() != null) {
            throw new IllegalStateException("Preference already has a SummaryProvider set.");
        }
        if (TextUtils.equals(this.mSummary, charSequence)) {
            return;
        }
        this.mSummary = charSequence;
        notifyChanged();
    }

    public void setTitle(CharSequence charSequence) {
        if (TextUtils.equals(charSequence, this.mTitle)) {
            return;
        }
        this.mTitle = charSequence;
        notifyChanged();
    }

    public Preference(Context context, AttributeSet attributeSet, int i) {
        this(context, attributeSet, i, 0);
    }

    protected void onAttachedToHierarchy(adl adlVar, long j) {
        this.mId = j;
        this.mHasId = true;
        try {
            onAttachedToHierarchy(adlVar);
        } finally {
            this.mHasId = false;
        }
    }

    public Preference(Context context, AttributeSet attributeSet, int i, int i2) {
        this.mOrder = DEFAULT_ORDER;
        this.mViewId = 0;
        this.mEnabled = true;
        this.mSelectable = true;
        this.mPersistent = true;
        this.mDependencyMet = true;
        this.mParentDependencyMet = true;
        this.mVisible = true;
        this.mAllowDividerAbove = true;
        this.mAllowDividerBelow = true;
        this.mSingleLineTitle = true;
        this.mShouldDisableView = true;
        this.mLayoutResId = com.google.android.embedded.projection.R.layout.preference;
        this.mClickListener = new acm(this);
        this.mContext = context;
        TypedArray obtainStyledAttributes = context.obtainStyledAttributes(attributeSet, adp.g, i, i2);
        this.mIconResId = ev.m(obtainStyledAttributes, 23, 0, 0);
        this.mKey = ev.p(obtainStyledAttributes, 26, 6);
        this.mTitle = ev.o(obtainStyledAttributes, 34, 4);
        this.mSummary = ev.o(obtainStyledAttributes, 33, 7);
        this.mOrder = ev.t(obtainStyledAttributes, 28, 8);
        this.mFragment = ev.p(obtainStyledAttributes, 22, 13);
        this.mLayoutResId = ev.m(obtainStyledAttributes, 27, 3, com.google.android.embedded.projection.R.layout.preference);
        this.mWidgetLayoutResId = ev.m(obtainStyledAttributes, 35, 9, 0);
        this.mEnabled = ev.q(obtainStyledAttributes, 21, 2, true);
        this.mSelectable = ev.q(obtainStyledAttributes, 30, 5, true);
        this.mPersistent = ev.q(obtainStyledAttributes, 29, 1, true);
        this.mDependencyKey = ev.p(obtainStyledAttributes, 19, 10);
        this.mAllowDividerAbove = ev.q(obtainStyledAttributes, 16, 16, this.mSelectable);
        this.mAllowDividerBelow = ev.q(obtainStyledAttributes, 17, 17, this.mSelectable);
        if (obtainStyledAttributes.hasValue(18)) {
            this.mDefaultValue = onGetDefaultValue(obtainStyledAttributes, 18);
        } else if (obtainStyledAttributes.hasValue(11)) {
            this.mDefaultValue = onGetDefaultValue(obtainStyledAttributes, 11);
        }
        this.mShouldDisableView = ev.q(obtainStyledAttributes, 31, 12, true);
        boolean hasValue = obtainStyledAttributes.hasValue(32);
        this.mHasSingleLineTitleAttr = hasValue;
        if (hasValue) {
            this.mSingleLineTitle = ev.q(obtainStyledAttributes, 32, 14, true);
        }
        this.mIconSpaceReserved = ev.q(obtainStyledAttributes, 24, 15, false);
        this.mVisible = ev.q(obtainStyledAttributes, 25, 25, true);
        this.mCopyingEnabled = ev.q(obtainStyledAttributes, 20, 20, false);
        obtainStyledAttributes.recycle();
    }

    public void performClick(View view) {
        performClick();
    }
}
