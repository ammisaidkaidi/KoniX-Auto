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
public final class anu extends br implements anc {
    public aoe a;
    public int b = -1;
    public boolean c;
    private ListPreference d;

    @Override // defpackage.br
    public final void M(View view, Bundle bundle) {
        CarUiRecyclerView carUiRecyclerView = (CarUiRecyclerView) aro.g(view, R.id.list);
        this.c = t().getBoolean(R.bool.car_ui_preference_list_instant_change_callback);
        are aq = v() instanceof any ? ((any) v()).aq() : null;
        carUiRecyclerView.setClipToPadding(false);
        Bundle bundle2 = this.n;
        if (bundle2 == null) {
            throw new IllegalStateException("Fragment " + this + " does not have any arguments.");
        }
        String string = bundle2.getString("key");
        acd acdVar = (acd) v();
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
        if (aq != null) {
            aq.setTitle(listPreference.getTitle());
            aq.setSubtitle(null);
            if (aq.isStateSet()) {
                aq.setState(ard.SUBPAGE);
            } else {
                aq.setNavButtonMode(aqa.BACK);
            }
            aq.setLogo(null);
            aq.setMenuItems(null);
            aq.setTabs(Collections.emptyList());
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
        final aop aopVar = new aop(arrayList);
        for (int i = 0; i < entries.length; i++) {
            String charSequence = entries[i].toString();
            aoe aoeVar = new aoe(aob.RADIO_BUTTON);
            aoeVar.b(charSequence);
            if (i == this.b) {
                aoeVar.a(true);
                this.a = aoeVar;
            }
            aoeVar.h = new aod() { // from class: ant
                @Override // defpackage.aod
                public final void a(aoe aoeVar2, boolean z) {
                    anu anuVar = anu.this;
                    aop aopVar2 = aopVar;
                    List list = arrayList;
                    if (z) {
                        aoe aoeVar3 = anuVar.a;
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

    @Override // defpackage.anc
    public final void a(Insets insets) {
        View B = B();
        aro.g(B, R.id.list).setPadding(0, insets.getTop(), 0, insets.getBottom());
        B.setPadding(insets.getLeft(), 0, insets.getRight(), 0);
        FocusArea focusArea = (FocusArea) B.findViewById(R.id.car_ui_focus_area);
        if (focusArea != null) {
            focusArea.d(0, insets.getTop(), 0, insets.getBottom());
            focusArea.c(0, insets.getTop(), 0, insets.getBottom());
        }
    }

    @Override // defpackage.br
    public final View ag(LayoutInflater layoutInflater, ViewGroup viewGroup) {
        return layoutInflater.inflate(R.layout.car_ui_list_preference, viewGroup, false);
    }

    public final void b() {
        ListPreference listPreference;
        if (this.b < 0 || (listPreference = this.d) == null) {
            return;
        }
        String charSequence = listPreference.getEntryValues()[this.b].toString();
        if (this.d.callChangeListener(charSequence)) {
            this.d.setValue(charSequence);
        }
    }

    @Override // defpackage.br
    public final void h() {
        Insets ap;
        super.h();
        if (!(v() instanceof any) || (ap = ((any) v()).ap()) == null) {
            return;
        }
        a(ap);
    }

    @Override // defpackage.br
    public final void i() {
        super.i();
        if (this.c) {
            return;
        }
        b();
    }
}
