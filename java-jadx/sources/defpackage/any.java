package defpackage;

import android.content.Context;
import android.os.Bundle;
import android.support.v7.widget.LinearLayoutManager;
import android.support.v7.widget.RecyclerView;
import android.util.Log;
import android.util.Pair;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import androidx.preference.DialogPreference;
import androidx.preference.DropDownPreference;
import androidx.preference.EditTextPreference;
import androidx.preference.ListPreference;
import androidx.preference.MultiSelectListPreference;
import androidx.preference.Preference;
import androidx.preference.PreferenceScreen;
import androidx.preference.SwitchPreference;
import androidx.preference.TwoStatePreference;
import com.android.car.ui.FocusArea;
import com.android.car.ui.baselayout.Insets;
import com.android.car.ui.core.BaseLayoutController;
import com.android.car.ui.preference.CarUiDropDownPreference;
import com.android.car.ui.preference.CarUiEditTextPreference;
import com.android.car.ui.preference.CarUiListPreference;
import com.android.car.ui.preference.CarUiMultiSelectListPreference;
import com.android.car.ui.preference.CarUiPreference;
import com.android.car.ui.preference.CarUiSeekBarDialogPreference;
import com.android.car.ui.preference.CarUiSwitchPreference;
import com.android.car.ui.recyclerview.CarUiRecyclerView;
import com.google.android.embedded.projection.R;
import java.util.Arrays;
import java.util.List;

/* compiled from: PG */
/* loaded from: classes.dex */
public abstract class any extends ada implements anc {
    private static final List f = Arrays.asList(new Pair(DropDownPreference.class, CarUiDropDownPreference.class), new Pair(ListPreference.class, CarUiListPreference.class), new Pair(MultiSelectListPreference.class, CarUiMultiSelectListPreference.class), new Pair(EditTextPreference.class, CarUiEditTextPreference.class), new Pair(SwitchPreference.class, CarUiSwitchPreference.class), new Pair(Preference.class, CarUiPreference.class));
    private CarUiRecyclerView ad;

    public static Preference ao(Preference preference) {
        Class<?> cls = preference.getClass();
        for (Pair pair : f) {
            Class<?> cls2 = (Class) pair.first;
            Class<?> cls3 = (Class) pair.second;
            if (cls2.isAssignableFrom(cls)) {
                if (cls != cls2) {
                    if (cls == cls3 || cls2 == Preference.class) {
                        return preference;
                    }
                    String simpleName = cls2.getSimpleName();
                    String simpleName2 = cls3.getSimpleName();
                    StringBuilder sb = new StringBuilder(String.valueOf(simpleName).length() + 63 + String.valueOf(simpleName2).length());
                    sb.append("Subclass of ");
                    sb.append(simpleName);
                    sb.append(" was used, preventing us from substituting it with ");
                    sb.append(simpleName2);
                    Log.w("CarUiPreferenceFragment", sb.toString());
                    return preference;
                }
                try {
                    Preference preference2 = (Preference) cls3.getDeclaredConstructor(Context.class).newInstance(preference.getContext());
                    preference2.setTitle(preference.getTitle());
                    preference2.setOnPreferenceClickListener(preference.getOnPreferenceClickListener());
                    preference2.setOnPreferenceChangeListener(preference.getOnPreferenceChangeListener());
                    preference2.setIcon(preference.getIcon());
                    preference2.setFragment(preference.getFragment());
                    preference2.setIntent(preference.getIntent());
                    preference2.setKey(preference.getKey());
                    preference2.setOrder(preference.getOrder());
                    preference2.setSelectable(preference.isSelectable());
                    preference2.setPersistent(preference.isPersistent());
                    preference2.setIconSpaceReserved(preference.isIconSpaceReserved());
                    preference2.setWidgetLayoutResource(preference.getWidgetLayoutResource());
                    preference2.setPreferenceDataStore(preference.getPreferenceDataStore());
                    preference2.setSingleLineTitle(preference.isSingleLineTitle());
                    preference2.setVisible(preference.isVisible());
                    preference2.setLayoutResource(preference.getLayoutResource());
                    preference2.setCopyingEnabled(preference.isCopyingEnabled());
                    if (!(preference2 instanceof aoa)) {
                        preference2.setShouldDisableView(preference.getShouldDisableView());
                    }
                    if (preference.getSummaryProvider() != null) {
                        preference2.setSummaryProvider(preference.getSummaryProvider());
                    } else {
                        preference2.setSummary(preference.getSummary());
                    }
                    if (preference.peekExtras() != null) {
                        preference2.getExtras().putAll(preference.peekExtras());
                    }
                    if (preference instanceof DialogPreference) {
                        DialogPreference dialogPreference = (DialogPreference) preference;
                        DialogPreference dialogPreference2 = (DialogPreference) preference2;
                        dialogPreference2.setDialogTitle(dialogPreference.getDialogTitle());
                        dialogPreference2.setDialogIcon(dialogPreference.getDialogIcon());
                        dialogPreference2.setDialogMessage(dialogPreference.getDialogMessage());
                        dialogPreference2.setDialogLayoutResource(dialogPreference.getDialogLayoutResource());
                        dialogPreference2.setNegativeButtonText(dialogPreference.getNegativeButtonText());
                        dialogPreference2.setPositiveButtonText(dialogPreference.getPositiveButtonText());
                    }
                    if (preference instanceof ListPreference) {
                        ListPreference listPreference = (ListPreference) preference;
                        ListPreference listPreference2 = (ListPreference) preference2;
                        listPreference2.setEntries(listPreference.getEntries());
                        listPreference2.setEntryValues(listPreference.getEntryValues());
                        listPreference2.setValue(listPreference.getValue());
                    } else if (preference instanceof EditTextPreference) {
                        ((EditTextPreference) preference2).setText(((EditTextPreference) preference).getText());
                    } else if (preference instanceof MultiSelectListPreference) {
                        MultiSelectListPreference multiSelectListPreference = (MultiSelectListPreference) preference;
                        MultiSelectListPreference multiSelectListPreference2 = (MultiSelectListPreference) preference2;
                        multiSelectListPreference2.setEntries(multiSelectListPreference.getEntries());
                        multiSelectListPreference2.setEntryValues(multiSelectListPreference.getEntryValues());
                        multiSelectListPreference2.setValues(multiSelectListPreference.getValues());
                    } else if (preference instanceof TwoStatePreference) {
                        TwoStatePreference twoStatePreference = (TwoStatePreference) preference;
                        TwoStatePreference twoStatePreference2 = (TwoStatePreference) preference2;
                        twoStatePreference2.setSummaryOn(twoStatePreference.getSummaryOn());
                        twoStatePreference2.setSummaryOff(twoStatePreference.getSummaryOff());
                        if (preference instanceof SwitchPreference) {
                            SwitchPreference switchPreference = (SwitchPreference) preference;
                            SwitchPreference switchPreference2 = (SwitchPreference) preference2;
                            switchPreference2.setSwitchTextOn(switchPreference.getSwitchTextOn());
                            switchPreference2.setSwitchTextOff(switchPreference.getSwitchTextOff());
                        }
                    }
                    return preference2;
                } catch (ReflectiveOperationException e) {
                    throw new RuntimeException(e);
                }
            }
        }
        return preference;
    }

    @Override // defpackage.br
    public final void M(View view, Bundle bundle) {
        Bundle bundle2;
        PreferenceScreen b;
        if (bundle != null && (bundle2 = bundle.getBundle("android:preferences")) != null && (b = b()) != null) {
            b.restoreHierarchyState(bundle2);
        }
        if (this.c) {
            l();
        }
        this.d = true;
        are aq = aq();
        if (aq != null) {
            aq.setNavButtonMode(aqy.BACK);
            PreferenceScreen b2 = b();
            if (b2 != null) {
                aq.setTitle(b2.getTitle());
            } else {
                aq.setTitle(null);
            }
        }
    }

    @Override // defpackage.anc
    public final void a(Insets insets) {
        View B = B();
        FocusArea focusArea = (FocusArea) aro.g(B, R.id.car_ui_focus_area);
        focusArea.d(0, insets.getTop(), 0, insets.getBottom());
        focusArea.c(0, insets.getTop(), 0, insets.getBottom());
        this.ad.setPadding(0, insets.getTop(), 0, insets.getBottom());
        B.setPadding(insets.getLeft(), 0, insets.getRight(), 0);
    }

    @Override // defpackage.ada, defpackage.adi
    public final void aj(Preference preference) {
        br anzVar;
        if (!((x() instanceof acx) && ((acx) x()).a()) && A().d("com.android.car.ui.PreferenceFragment.DIALOG") == null) {
            if (preference instanceof EditTextPreference) {
                String key = preference.getKey();
                anzVar = new ans();
                Bundle bundle = new Bundle(1);
                bundle.putString("key", key);
                anzVar.Q(bundle);
            } else if (preference instanceof ListPreference) {
                String key2 = preference.getKey();
                anzVar = new anu();
                Bundle bundle2 = new Bundle(1);
                bundle2.putString("key", key2);
                anzVar.Q(bundle2);
            } else if (preference instanceof MultiSelectListPreference) {
                String key3 = preference.getKey();
                anzVar = new anw();
                Bundle bundle3 = new Bundle(1);
                bundle3.putString("key", key3);
                anzVar.Q(bundle3);
            } else {
                if (!(preference instanceof CarUiSeekBarDialogPreference)) {
                    String simpleName = preference.getClass().getSimpleName();
                    StringBuilder sb = new StringBuilder(String.valueOf(simpleName).length() + 164);
                    sb.append("Cannot display dialog for an unknown Preference type: ");
                    sb.append(simpleName);
                    sb.append(". Make sure to implement onPreferenceDisplayDialog() to handle displaying a custom dialog for this Preference.");
                    throw new IllegalArgumentException(sb.toString());
                }
                String key4 = preference.getKey();
                anzVar = new anz();
                Bundle bundle4 = new Bundle(1);
                bundle4.putString("key", key4);
                anzVar.Q(bundle4);
            }
            anzVar.af(this);
            if (anzVar instanceof bm) {
                bm bmVar = (bm) anzVar;
                cr crVar = this.A;
                bmVar.d = false;
                bmVar.e = true;
                da h = crVar.h();
                h.m();
                h.c(0, bmVar, "com.android.car.ui.PreferenceFragment.DIALOG", 1);
                h.g();
                return;
            }
            if (x() == null) {
                throw new IllegalStateException("Preference fragment is not attached to an Activity.");
            }
            if (this.P == null) {
                throw new IllegalStateException("Preference fragment must have a layout.");
            }
            Context r = r();
            da h2 = x().aI().h();
            int c = aro.c(r, android.R.attr.fragmentOpenEnterAnimation);
            int c2 = aro.c(r, android.R.attr.fragmentOpenExitAnimation);
            int c3 = aro.c(r, android.R.attr.fragmentCloseEnterAnimation);
            int c4 = aro.c(r, android.R.attr.fragmentCloseExitAnimation);
            h2.e = c;
            h2.f = c2;
            h2.g = c3;
            h2.h = c4;
            h2.n(((ViewGroup) this.P.getParent()).getId(), anzVar);
            h2.k();
            h2.g();
        }
    }

    @Override // defpackage.ada
    public final RecyclerView am(LayoutInflater layoutInflater, ViewGroup viewGroup) {
        RecyclerView recyclerView;
        CarUiRecyclerView carUiRecyclerView = (CarUiRecyclerView) aro.g(viewGroup, R.id.recycler_view);
        this.ad = carUiRecyclerView;
        RecyclerView recyclerView2 = carUiRecyclerView.getRecyclerView();
        if (recyclerView2 != null) {
            return recyclerView2;
        }
        if (r().getPackageManager().hasSystemFeature("android.hardware.type.automotive") && (recyclerView = (RecyclerView) viewGroup.findViewById(R.id.recycler_view)) != null) {
            return recyclerView;
        }
        RecyclerView recyclerView3 = (RecyclerView) layoutInflater.inflate(R.layout.preference_recyclerview, viewGroup, false);
        r();
        recyclerView3.Z(new LinearLayoutManager());
        recyclerView3.X(new adn(recyclerView3));
        return recyclerView3;
    }

    protected final Insets ap() {
        BaseLayoutController baseLayoutController = BaseLayoutController.getBaseLayoutController(x());
        if (baseLayoutController != null) {
            return baseLayoutController.getInsets();
        }
        return null;
    }

    protected final are aq() {
        BaseLayoutController baseLayoutController = BaseLayoutController.getBaseLayoutController(x());
        if (baseLayoutController != null) {
            return baseLayoutController.getToolbarController();
        }
        return null;
    }

    @Override // defpackage.ada, defpackage.br
    public final void h() {
        super.h();
        Insets ap = ap();
        if (ap != null) {
            a(ap);
        }
    }
}
