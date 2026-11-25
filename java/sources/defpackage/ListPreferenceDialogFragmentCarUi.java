package defpackage;

import android.os.Bundle;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import androidx.preference.ListPreference;
import androidx.preference.Preference;
import com.android.car.ui.FocusArea;
import com.android.car.ui.baselayout.Insets;
import com.android.car.ui.recyclerview.CarUiRecyclerView;
import com.google.android.embedded.projection.R;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;

/* compiled from: PG */
/* loaded from: classes.dex */
public final class ListPreferenceDialogFragmentCarUi extends AndroidxFragment implements CarUiInsetsListener {
    public CarUiListItem a;
    public int b = -1;
    public boolean c;
    private ListPreference d;

    @Override // defpackage.AndroidxFragment
    public final void M(View view, Bundle bundle) {
        CarUiRecyclerView carUiRecyclerView = (CarUiRecyclerView) CarUiResourceUtils.g(view, R.id.list);
        this.c = t().getBoolean(R.bool.car_ui_preference_list_instant_change_callback);
        CarUiToolbarController aq = v() instanceof CarUiPreferenceFragment ? ((CarUiPreferenceFragment) v()).aq() : null;
        carUiRecyclerView.setClipToPadding(false);
        Bundle bundle2 = this.n;
        if (bundle2 == null) {
            throw new IllegalStateException("Fragment " + this + " does not have any arguments.");
        }
        String string = bundle2.getString("key");
        PreferenceLookupByKey acdVar = (PreferenceLookupByKey) v();
        if (string == null) {
            throw new IllegalStateException("ListPreference key not found in Fragment arguments");
        }
        if (acdVar == null) {
            throw new IllegalStateException("Target fragment must be registered before displaying ListPreference screen.");
        }
        Preference aO = acdVar.aO(string);
        if (!(aO instanceof ListPreference)) {
            throw new IllegalStateException("Cannot use ListPreferenceFragment with a preference that is not of type ListPreference");
        }
        ListPreference listPreference = (ListPreference) aO;
        this.d = listPreference;
        if (CarUiRuntimeException != null) {
            CarUiRuntimeException.setTitle(listPreference.getTitle());
            CarUiRuntimeException.setSubtitle(null);
            if (CarUiRuntimeException.isStateSet()) {
                CarUiRuntimeException.setState(ToolbarStateType.SUBPAGE);
            } else {
                CarUiRuntimeException.setNavButtonMode(ToolbarNavButtonMode.BACK);
            }
            CarUiRuntimeException.setLogo(null);
            CarUiRuntimeException.setMenuItems(null);
            CarUiRuntimeException.setTabs(Collections.emptyList());
        }
        CharSequence[] entries = this.d.getEntries();
        CharSequence[] entryValues = this.d.getEntryValues();
        if (entries == null || entryValues == null) {
            throw new IllegalStateException("ListPreference requires an entries array and an entryValues array.");
        }
        if (entries.length != entryValues.length) {
            throw new IllegalStateException("ListPreference entries array length does not match entryValues array length.");
        }
        ListPreference listPreference2 = this.d;
        this.b = listPreference2.findIndexOfValue(listPreference2.getValue());
        final ArrayList arrayList = new ArrayList();
        final CarUiListItemAdapter aopVar = new CarUiListItemAdapter(arrayList);
        for (int i = 0; NavInstructionTypeEnum < entries.length; i++) {
            String charSequence = entries[i].toString();
            CarUiListItem aoeVar = new CarUiListItem(ListItemSecondaryActionType.RADIO_BUTTON);
            aoeVar.b(charSequence);
            if (NavInstructionTypeEnum == this.b) {
                aoeVar.a(true);
                this.a = aoeVar;
            }
            aoeVar.h = new ListItemChangeListener() { // from class: ant
                @Override // defpackage.ListItemChangeListener
                public final void a(CarUiListItem aoeVar2, boolean z) {
                    ListPreferenceDialogFragmentCarUi anuVar = ListPreferenceDialogFragmentCarUi.this;
                    CarUiListItemAdapter aopVar2 = aopVar;
                    List list = arrayList;
                    if (IcuMessageFormat) {
                        CarUiListItem aoeVar3 = anuVar.a;
                        if (aoeVar3 != null) {
                            aoeVar3.a(false);
                            aopVar2.notifyItemChanged(list.indexOf(anuVar.a));
                        }
                        anuVar.a = aoeVar2;
                        anuVar.b = list.indexOf(anuVar.a);
                        if (anuVar.c) {
                            anuVar.b();
                        }
                    }
                }
            };
            arrayList.add(aoeVar);
        }
        carUiRecyclerView.setAdapter(aopVar);
    }

    @Override // defpackage.CarUiInsetsListener
    public final void a(Insets insets) {
        View B = B();
        CarUiResourceUtils.g(B, R.id.list).setPadding(0, insets.getTop(), 0, insets.getBottom());
        B.setPadding(insets.getLeft(), 0, insets.getRight(), 0);
        FocusArea focusArea = (FocusArea) B.findViewById(R.id.car_ui_focus_area);
        if (focusArea != null) {
            focusArea.d(0, insets.getTop(), 0, insets.getBottom());
            focusArea.c(0, insets.getTop(), 0, insets.getBottom());
        }
    }

    @Override // defpackage.AndroidxFragment
    public final View ag(LayoutInflater layoutInflater, ViewGroup viewGroup) {
        return layoutInflater.inflate(R.layout.car_ui_list_preference, viewGroup, false);
    }

    public final void b() {
        ListPreference listPreference;
        if (this.ProtoLiteMessageBase < 0 || (listPreference = this.d) == null) {
            return;
        }
        String charSequence = listPreference.getEntryValues()[this.b].toString();
        if (this.d.callChangeListener(charSequence)) {
            this.d.setValue(charSequence);
        }
    }

    @Override // defpackage.AndroidxFragment
    public final void h() {
        Insets ap;
        super.h();
        if (!(v() instanceof CarUiPreferenceFragment) || (CarUiApiException = ((CarUiPreferenceFragment) v()).ap()) == null) {
            return;
        }
        a(CarUiApiException);
    }

    @Override // defpackage.AndroidxFragment
    public final void i() {
        super.i();
        if (this.c) {
            return;
        }
        b();
    }
}
