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
public final class adg extends qq implements aco {
    private final PreferenceGroup a;
    private List b;
    private List c;
    private final List d;
    private final Runnable f = new add(this);
    private final Handler e = new Handler();

    public adg(PreferenceGroup preferenceGroup) {
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
                if (!h(preferenceGroup) || i < preferenceGroup.c) {
                    arrayList.add(c);
                } else {
                    arrayList2.add(c);
                }
                if (c instanceof PreferenceGroup) {
                    PreferenceGroup preferenceGroup2 = (PreferenceGroup) c;
                    if (!preferenceGroup2.e()) {
                        continue;
                    } else {
                        if (h(preferenceGroup) && h(preferenceGroup2)) {
                            throw new IllegalStateException("Nesting an expandable group inside of another expandable group is not supported!");
                        }
                        for (Preference preference : f(preferenceGroup2)) {
                            if (!h(preferenceGroup) || i < preferenceGroup.c) {
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
            aci aciVar = new aci(preferenceGroup.getContext(), arrayList2, preferenceGroup.getId());
            aciVar.setOnPreferenceClickListener(new ade(this, preferenceGroup));
            arrayList.add(aciVar);
        }
        return arrayList;
    }

    private final void g(List list, PreferenceGroup preferenceGroup) {
        synchronized (preferenceGroup) {
            Collections.sort(preferenceGroup.b);
        }
        int a = preferenceGroup.a();
        for (int i = 0; i < a; i++) {
            Preference c = preferenceGroup.c(i);
            list.add(c);
            adf adfVar = new adf(c);
            if (!this.d.contains(adfVar)) {
                this.d.add(adfVar);
            }
            if (c instanceof PreferenceGroup) {
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

    @Override // defpackage.aco
    public final void a(Preference preference) {
        int indexOf = this.c.indexOf(preference);
        if (indexOf != -1) {
            notifyItemChanged(indexOf, preference);
        }
    }

    @Override // defpackage.aco
    public final void b() {
        this.e.removeCallbacks(this.f);
        this.e.post(this.f);
    }

    @Override // defpackage.aco
    public final void c() {
        b();
    }

    public final Preference d(int i) {
        if (i < 0 || i >= getItemCount()) {
            return null;
        }
        return (Preference) this.c.get(i);
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

    @Override // defpackage.qq
    public final int getItemCount() {
        return this.c.size();
    }

    @Override // defpackage.qq
    public final long getItemId(int i) {
        if (hasStableIds()) {
            return d(i).getId();
        }
        return -1L;
    }

    @Override // defpackage.qq
    public final int getItemViewType(int i) {
        adf adfVar = new adf(d(i));
        int indexOf = this.d.indexOf(adfVar);
        if (indexOf != -1) {
            return indexOf;
        }
        int size = this.d.size();
        this.d.add(adfVar);
        return size;
    }

    @Override // defpackage.qq
    public final /* bridge */ /* synthetic */ void onBindViewHolder(rr rrVar, int i) {
        ado adoVar = (ado) rrVar;
        Preference d = d(i);
        Drawable background = adoVar.itemView.getBackground();
        Drawable drawable = adoVar.a;
        if (background != drawable) {
            hs.v(adoVar.itemView, drawable);
        }
        TextView textView = (TextView) adoVar.a(R.id.title);
        if (textView != null && adoVar.b != null && !textView.getTextColors().equals(adoVar.b)) {
            textView.setTextColor(adoVar.b);
        }
        d.onBindViewHolder(adoVar);
    }

    @Override // defpackage.qq
    public final /* bridge */ /* synthetic */ rr onCreateViewHolder(ViewGroup viewGroup, int i) {
        adf adfVar = (adf) this.d.get(i);
        LayoutInflater from = LayoutInflater.from(viewGroup.getContext());
        TypedArray obtainStyledAttributes = viewGroup.getContext().obtainStyledAttributes((AttributeSet) null, adp.a);
        Drawable drawable = obtainStyledAttributes.getDrawable(0);
        if (drawable == null) {
            drawable = kj.b(viewGroup.getContext(), R.drawable.list_selector_background);
        }
        obtainStyledAttributes.recycle();
        View inflate = from.inflate(adfVar.a, viewGroup, false);
        if (inflate.getBackground() == null) {
            hs.v(inflate, drawable);
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
        return new ado(inflate);
    }
}
