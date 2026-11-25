package defpackage;

import android.os.Bundle;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import androidx.preference.Preference;
import com.android.car.ui.FocusArea;
import com.android.car.ui.baselayout.Insets;
import com.android.car.ui.preference.CarUiMultiSelectListPreference;
import com.android.car.ui.recyclerview.CarUiRecyclerView;
import com.google.android.embedded.projection.R;
import java.util.ArrayList;
import java.util.Collections;
import java.util.HashSet;
import java.util.Set;

/* compiled from: PG */
/* loaded from: classes.dex */
public final class anw extends br implements anc {
    public Set a;
    public boolean b;
    private CarUiMultiSelectListPreference c;

    @Override // defpackage.br
    public final void M(View view, Bundle bundle) {
        CarUiRecyclerView carUiRecyclerView = (CarUiRecyclerView) aro.g(view, R.id.list);
        this.b = t().getBoolean(R.bool.car_ui_preference_list_instant_change_callback);
        are aq = v() instanceof any ? ((any) v()).aq() : null;
        Bundle bundle2 = this.n;
        if (bundle2 == null) {
            throw new IllegalStateException("Preference arguments cannot be null");
        }
        String string = bundle2.getString("key");
        acd acdVar = (acd) v();
        if (string == null) {
            throw new IllegalStateException("MultiSelectListPreference key not found in Fragment arguments");
        }
        if (acdVar == null) {
            throw new IllegalStateException("Target fragment must be registered before displaying MultiSelectListPreference screen.");
        }
        Preference aO = acdVar.aO(string);
        if (!(aO instanceof CarUiMultiSelectListPreference)) {
            throw new IllegalStateException("Cannot use MultiSelectListPreferenceFragment with a preference that is not of type CarUiMultiSelectListPreference");
        }
        this.c = (CarUiMultiSelectListPreference) aO;
        carUiRecyclerView.setClipToPadding(false);
        if (aq != null) {
            aq.setTitle(this.c.getTitle());
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
        this.a = new HashSet(this.c.getValues());
        CharSequence[] entries = this.c.getEntries();
        CharSequence[] entryValues = this.c.getEntryValues();
        if (entries == null || entryValues == null) {
            throw new IllegalStateException("MultiSelectListPreference requires an entries array and an entryValues array.");
        }
        if (entries.length != entryValues.length) {
            throw new IllegalStateException("MultiSelectListPreference entries array length does not match entryValues array length.");
        }
        ArrayList arrayList = new ArrayList();
        boolean[] selectedItems = this.c.getSelectedItems();
        for (int i = 0; i < entries.length; i++) {
            String charSequence = entries[i].toString();
            final String charSequence2 = entryValues[i].toString();
            aoe aoeVar = new aoe(aob.CHECK_BOX);
            aoeVar.b(charSequence);
            aoeVar.a(selectedItems[i]);
            aoeVar.h = new aod() { // from class: anv
                @Override // defpackage.aod
                public final void a(aoe aoeVar2, boolean z) {
                    anw anwVar = anw.this;
                    String str = charSequence2;
                    if (z) {
                        anwVar.a.add(str);
                    } else {
                        anwVar.a.remove(str);
                    }
                    if (anwVar.b) {
                        anwVar.b();
                    }
                }
            };
            arrayList.add(aoeVar);
        }
        carUiRecyclerView.setAdapter(new aop(arrayList));
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
        if (this.c.callChangeListener(this.a)) {
            this.c.setValues(this.a);
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
        if (this.b) {
            return;
        }
        b();
    }
}
