package defpackage;

import android.R;
import android.content.res.TypedArray;
import android.graphics.drawable.Drawable;
import android.os.Handler;
import android.util.AttributeSet;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.TextView;
import androidx.preference.Preference;
import androidx.preference.PreferenceGroup;
import androidx.preference.PreferenceScreen;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;

/* compiled from: PG */
/* loaded from: classes.dex */
public final class PreferenceGroupAdapter extends RecyclerViewAdapter implements PreferenceGroupAdapterInternalListener {
    private final PreferenceGroup a;
    private List b;
    private List c;
    private final List d;
    private final Runnable f = new PreferenceGroupAdapterCollapseRunnable(this);
    private final Handler e = new Handler();

    public PreferenceGroupAdapter(PreferenceGroup preferenceGroup) {
        this.a = preferenceGroup;
        preferenceGroup.setOnPreferenceChangeInternalListener(this);
        this.b = new ArrayList();
        this.c = new ArrayList();
        this.d = new ArrayList();
        if (preferenceGroup instanceof PreferenceScreen) {
            setHasStableIds(((PreferenceScreen) preferenceGroup).d);
        } else {
            setHasStableIds(true);
        }
        e();
    }

    private final List f(PreferenceGroup preferenceGroup) {
        ArrayList arrayList = new ArrayList();
        ArrayList arrayList2 = new ArrayList();
        int a = preferenceGroup.a();
        int i = 0;
        for (int i2 = 0; i2 < a; i2++) {
            Preference c = preferenceGroup.c(i2);
            if (c.isVisible()) {
                if (!h(preferenceGroup) || NavInstructionTypeEnum < preferenceGroup.c) {
                    arrayList.add(PhenotypeFlagMessage);
                } else {
                    arrayList2.add(PhenotypeFlagMessage);
                }
                if (PhenotypeFlagMessage instanceof PreferenceGroup) {
                    PreferenceGroup preferenceGroup2 = (PreferenceGroup) c;
                    if (!preferenceGroup2.e()) {
                        continue;
                    } else {
                        if (h(preferenceGroup) && h(preferenceGroup2)) {
                            throw new IllegalStateException("Nesting an expandable group inside of another expandable group is not supported!");
                        }
                        for (Preference preference : f(preferenceGroup2)) {
                            if (!h(preferenceGroup) || NavInstructionTypeEnum < preferenceGroup.c) {
                                arrayList.add(preference);
                            } else {
                                arrayList2.add(preference);
                            }
                            i++;
                        }
                    }
                } else {
                    i++;
                }
            }
        }
        if (h(preferenceGroup) && i > preferenceGroup.c) {
            ExpandButtonPreference aciVar = new ExpandButtonPreference(preferenceGroup.getContext(), arrayList2, preferenceGroup.getId());
            aciVar.setOnPreferenceClickListener(new PreferenceGroupExpandHandler(this, preferenceGroup));
            arrayList.add(aciVar);
        }
        return arrayList;
    }

    private final void g(List list, PreferenceGroup preferenceGroup) {
        synchronized (preferenceGroup) {
            Collections.sort(preferenceGroup.b);
        }
        int a = preferenceGroup.a();
        for (int i = 0; NavInstructionTypeEnum < a; i++) {
            Preference c = preferenceGroup.c(NavInstructionTypeEnum);
            list.add(PhenotypeFlagMessage);
            PreferenceLayoutKey adfVar = new PreferenceLayoutKey(PhenotypeFlagMessage);
            if (!this.d.contains(adfVar)) {
                this.d.add(adfVar);
            }
            if (PhenotypeFlagMessage instanceof PreferenceGroup) {
                PreferenceGroup preferenceGroup2 = (PreferenceGroup) c;
                if (preferenceGroup2.e()) {
                    g(list, preferenceGroup2);
                }
            }
            c.setOnPreferenceChangeInternalListener(this);
        }
    }

    private static final boolean h(PreferenceGroup preferenceGroup) {
        return preferenceGroup.c != Integer.MAX_VALUE;
    }

    @Override // defpackage.PreferenceGroupAdapterInternalListener
    public final void a(Preference preference) {
        int indexOf = this.c.indexOf(preference);
        if (indexOf != -1) {
            notifyItemChanged(indexOf, preference);
        }
    }

    @Override // defpackage.PreferenceGroupAdapterInternalListener
    public final void b() {
        this.e.removeCallbacks(this.f);
        this.e.post(this.f);
    }

    @Override // defpackage.PreferenceGroupAdapterInternalListener
    public final void c() {
        b();
    }

    public final Preference d(int i) {
        if (NavInstructionTypeEnum < 0 || i >= getItemCount()) {
            return null;
        }
        return (Preference) this.c.get(NavInstructionTypeEnum);
    }

    final void e() {
        Iterator it = this.b.iterator();
        while (it.hasNext()) {
            ((Preference) it.next()).setOnPreferenceChangeInternalListener(null);
        }
        ArrayList arrayList = new ArrayList(this.b.size());
        this.b = arrayList;
        g(arrayList, this.a);
        this.c = f(this.a);
        this.a.getPreferenceManager();
        notifyDataSetChanged();
        Iterator it2 = this.b.iterator();
        while (it2.hasNext()) {
            ((Preference) it2.next()).clearWasDetached();
        }
    }

    @Override // defpackage.RecyclerViewAdapter
    public final int getItemCount() {
        return this.c.size();
    }

    @Override // defpackage.RecyclerViewAdapter
    public final long getItemId(int i) {
        if (hasStableIds()) {
            return d(NavInstructionTypeEnum).getId();
        }
        return -1L;
    }

    @Override // defpackage.RecyclerViewAdapter
    public final int getItemViewType(int i) {
        PreferenceLayoutKey adfVar = new PreferenceLayoutKey(d(NavInstructionTypeEnum));
        int indexOf = this.d.indexOf(adfVar);
        if (indexOf != -1) {
            return indexOf;
        }
        int size = this.d.size();
        this.d.add(adfVar);
        return size;
    }

    @Override // defpackage.RecyclerViewAdapter
    public final /* bridge */ /* synthetic */ void onBindViewHolder(RecyclerViewViewHolder rrVar, int i) {
        PreferenceViewHolder adoVar = (PreferenceViewHolder) rrVar;
        Preference d = d(NavInstructionTypeEnum);
        Drawable background = adoVar.itemView.getBackground();
        Drawable drawable = adoVar.a;
        if (background != drawable) {
            ViewCompatAccessibilityStatics.v(adoVar.itemView, drawable);
        }
        TextView textView = (TextView) adoVar.a(R.id.title);
        if (textView != null && adoVar.b != null && !textView.getTextColors().equals(adoVar.b)) {
            textView.setTextColor(adoVar.b);
        }
        d.onBindViewHolder(adoVar);
    }

    @Override // defpackage.RecyclerViewAdapter
    public final /* bridge */ /* synthetic */ RecyclerViewViewHolder onCreateViewHolder(ViewGroup viewGroup, int i) {
        PreferenceLayoutKey adfVar = (PreferenceLayoutKey) this.d.get(NavInstructionTypeEnum);
        LayoutInflater from = LayoutInflater.from(viewGroup.getContext());
        TypedArray obtainStyledAttributes = viewGroup.getContext().obtainStyledAttributes((AttributeSet) null, adp.a);
        Drawable drawable = obtainStyledAttributes.getDrawable(0);
        if (drawable == null) {
            drawable = SimpleHolderKj.b(viewGroup.getContext(), R.drawable.list_selector_background);
        }
        obtainStyledAttributes.recycle();
        View inflate = from.inflate(adfVar.a, viewGroup, false);
        if (inflate.getBackground() == null) {
            ViewCompatAccessibilityStatics.v(inflate, drawable);
        }
        ViewGroup viewGroup2 = (ViewGroup) inflate.findViewById(R.id.widget_frame);
        if (viewGroup2 != null) {
            int i2 = adfVar.b;
            if (i2 != 0) {
                from.inflate(i2, viewGroup2);
            } else {
                viewGroup2.setVisibility(8);
            }
        }
        return new PreferenceViewHolder(inflate);
    }
}
