package defpackage;

import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.drawable.Drawable;
import android.os.Handler;
import android.support.v4.widget.NestedScrollView;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewParent;
import android.view.ViewStub;
import android.view.Window;
import android.widget.Button;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.ListAdapter;
import android.widget.ListView;
import android.widget.TextView;
import com.google.android.embedded.projection.R;

/* compiled from: PG */
/* loaded from: classes.dex */
public final class jb {
    public final Context a;
    final jy b;
    public final Window c;
    public CharSequence d;
    public ListView e;
    Button f;
    Button g;
    Button h;
    NestedScrollView i;
    public Drawable k;
    public ImageView l;
    public TextView m;
    public TextView n;
    public View o;
    public ListAdapter p;
    public final int r;
    public final int s;
    public final int t;
    public final int u;
    public final int v;
    public final boolean w;
    final Handler x;
    public int j = 0;
    public int q = -1;
    public final View.OnClickListener y = new iw(this);

    public jb(Context context, jy jyVar, Window window) {
        this.a = context;
        this.b = jyVar;
        this.c = window;
        this.x = new iz(jyVar);
        TypedArray obtainStyledAttributes = context.obtainStyledAttributes(null, ki.e, R.attr.alertDialogStyle, 0);
        this.r = obtainStyledAttributes.getResourceId(0, 0);
        this.s = obtainStyledAttributes.getResourceId(2, 0);
        this.t = obtainStyledAttributes.getResourceId(4, 0);
        obtainStyledAttributes.getResourceId(5, 0);
        this.u = obtainStyledAttributes.getResourceId(7, 0);
        this.v = obtainStyledAttributes.getResourceId(3, 0);
        this.w = obtainStyledAttributes.getBoolean(6, true);
        obtainStyledAttributes.getDimensionPixelSize(1, 0);
        obtainStyledAttributes.recycle();
        jyVar.b().n(1);
    }

    public static final void b(Button button) {
        LinearLayout.LayoutParams layoutParams = (LinearLayout.LayoutParams) button.getLayoutParams();
        layoutParams.gravity = 1;
        layoutParams.weight = 0.5f;
        button.setLayoutParams(layoutParams);
    }

    public static final ViewGroup c(View view, View view2) {
        if (view == null) {
            if (view2 instanceof ViewStub) {
                view2 = ((ViewStub) view2).inflate();
            }
            return (ViewGroup) view2;
        }
        if (view2 != null) {
            ViewParent parent = view2.getParent();
            if (parent instanceof ViewGroup) {
                ((ViewGroup) parent).removeView(view2);
            }
        }
        if (view instanceof ViewStub) {
            view = ((ViewStub) view).inflate();
        }
        return (ViewGroup) view;
    }

    public final void a(CharSequence charSequence) {
        this.d = charSequence;
        TextView textView = this.m;
        if (textView != null) {
            textView.setText(charSequence);
        }
    }
}
