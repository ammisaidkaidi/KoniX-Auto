package defpackage;

import android.R;
import android.content.res.ColorStateList;
import android.graphics.drawable.Drawable;
import android.util.SparseArray;
import android.view.View;
import android.widget.TextView;

/* compiled from: PG */
/* loaded from: classes.dex */
public final class PreferenceViewHolder extends RecyclerViewViewHolder {
    public final Drawable a;
    public ColorStateList b;
    public boolean c;
    public boolean d;
    private final SparseArray e;

    public PreferenceViewHolder(View view) {
        super(view);
        SparseArray sparseArray = new SparseArray(4);
        this.e = sparseArray;
        TextView textView = (TextView) view.findViewById(R.id.title);
        sparseArray.put(R.id.title, textView);
        sparseArray.put(R.id.summary, view.findViewById(R.id.summary));
        sparseArray.put(R.id.icon, view.findViewById(R.id.icon));
        sparseArray.put(com.google.android.embedded.projection.R.id.icon_frame, view.findViewById(com.google.android.embedded.projection.R.id.icon_frame));
        sparseArray.put(R.id.icon_frame, view.findViewById(R.id.icon_frame));
        this.a = view.getBackground();
        if (textView != null) {
            this.b = textView.getTextColors();
        }
    }

    public final View a(int i) {
        View view = (View) this.e.get(NavInstructionTypeEnum);
        if (view != null) {
            return view;
        }
        View findViewById = this.itemView.findViewById(NavInstructionTypeEnum);
        if (findViewById != null) {
            this.e.put(i, findViewById);
        }
        return findViewById;
    }
}
