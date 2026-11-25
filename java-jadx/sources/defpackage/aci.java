package defpackage;

import android.content.Context;
import android.text.TextUtils;
import androidx.preference.Preference;
import androidx.preference.PreferenceGroup;
import com.google.android.embedded.projection.R;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

/* compiled from: PG */
/* loaded from: classes.dex */
final class aci extends Preference {
    private long a;

    public aci(Context context, List list, long j) {
        super(context);
        setLayoutResource(R.layout.expand_button);
        setIcon(R.drawable.ic_arrow_down_24dp);
        setTitle(R.string.expand_button_title);
        setOrder(999);
        ArrayList arrayList = new ArrayList();
        Iterator it = list.iterator();
        CharSequence charSequence = null;
        while (it.hasNext()) {
            Preference preference = (Preference) it.next();
            CharSequence title = preference.getTitle();
            boolean z = preference instanceof PreferenceGroup;
            if (z && !TextUtils.isEmpty(title)) {
                arrayList.add((PreferenceGroup) preference);
            }
            if (arrayList.contains(preference.getParent())) {
                if (z) {
                    arrayList.add((PreferenceGroup) preference);
                }
            } else if (!TextUtils.isEmpty(title)) {
                charSequence = charSequence == null ? title : getContext().getString(R.string.summary_collapsed_preference_list, charSequence, title);
            }
        }
        setSummary(charSequence);
        this.a = j + 1000000;
    }

    @Override // androidx.preference.Preference
    public final long getId() {
        return this.a;
    }

    @Override // androidx.preference.Preference
    public final void onBindViewHolder(ado adoVar) {
        super.onBindViewHolder(adoVar);
        adoVar.c = false;
    }
}
