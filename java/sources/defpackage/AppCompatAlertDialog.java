package defpackage;

import android.content.Context;
import android.content.DialogInterface;
import android.graphics.drawable.Drawable;
import android.os.Bundle;
import android.support.v4.widget.NestedScrollView;
import android.support.v7.app.AlertController$RecycleListView;
import android.text.TextUtils;
import android.util.TypedValue;
import android.view.KeyEvent;
import android.view.View;
import android.view.ViewGroup;
import android.widget.Button;
import android.widget.ImageView;
import android.widget.ListAdapter;
import android.widget.ListView;
import android.widget.TextView;
import com.google.android.embedded.projection.R;

/* compiled from: PG */
/* loaded from: classes.dex */
public final class AppCompatAlertDialog extends AppCompatDialog implements DialogInterface {
    public final AlertControllerConfig a;

    public AppCompatAlertDialog(Context context, int i) {
        super(context, a(context, i));
        this.a = new AlertControllerConfig(getContext(), this, getWindow());
    }

    public static int a(Context context, int i) {
        if ((NavInstructionTypeEnum >>> 24) > 0) {
            return i;
        }
        TypedValue typedValue = new TypedValue();
        context.getTheme().resolveAttribute(R.attr.alertDialogTheme, typedValue, true);
        return typedValue.resourceId;
    }

    /* JADX WARN: Removed duplicated region for block: B:26:0x016c  */
    /* JADX WARN: Removed duplicated region for block: B:45:0x0221  */
    /* JADX WARN: Removed duplicated region for block: B:55:0x024f  */
    /* JADX WARN: Removed duplicated region for block: B:69:0x0277  */
    /* JADX WARN: Removed duplicated region for block: B:92:0x023b  */
    /* JADX WARN: Removed duplicated region for block: B:99:0x0181  */
    @Override // defpackage.AppCompatDialog, android.app.Dialog
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    protected final void onCreate(Bundle bundle) {
        int i;
        boolean z;
        int i2;
        boolean z2;
        View findViewById;
        ListView listView;
        ListView listView2;
        ListAdapter listAdapter;
        int i3;
        View findViewById2;
        Button button;
        super.onCreate(bundle);
        AlertControllerConfig jbVar = this.a;
        jbVar.b.setContentView(jbVar.s == 0 ? jbVar.r : jbVar.r);
        View findViewById3 = jbVar.c.findViewById(R.id.parentPanel);
        View findViewById4 = findViewById3.findViewById(R.id.topPanel);
        View findViewById5 = findViewById3.findViewById(R.id.contentPanel);
        View findViewById6 = findViewById3.findViewById(R.id.buttonPanel);
        ViewGroup viewGroup = (ViewGroup) findViewById3.findViewById(R.id.customPanel);
        jbVar.c.setFlags(131072, 131072);
        viewGroup.setVisibility(8);
        View findViewById7 = viewGroup.findViewById(R.id.topPanel);
        View findViewById8 = viewGroup.findViewById(R.id.contentPanel);
        View findViewById9 = viewGroup.findViewById(R.id.buttonPanel);
        ViewGroup c = AlertControllerConfig.c(findViewById7, findViewById4);
        ViewGroup c2 = AlertControllerConfig.c(findViewById8, findViewById5);
        ViewGroup c3 = AlertControllerConfig.c(findViewById9, findViewById6);
        jbVar.i = (NestedScrollView) jbVar.c.findViewById(R.id.scrollView);
        jbVar.i.setFocusable(false);
        jbVar.i.setNestedScrollingEnabled(false);
        jbVar.n = (TextView) c2.findViewById(android.R.id.message);
        TextView textView = jbVar.n;
        if (textView != null) {
            textView.setVisibility(8);
            jbVar.i.removeView(jbVar.n);
            if (jbVar.e != null) {
                ViewGroup viewGroup2 = (ViewGroup) jbVar.i.getParent();
                int indexOfChild = viewGroup2.indexOfChild(jbVar.i);
                viewGroup2.removeViewAt(indexOfChild);
                viewGroup2.addView(jbVar.e, indexOfChild, new ViewGroup.LayoutParams(-1, -1));
            } else {
                c2.setVisibility(8);
            }
        }
        jbVar.f = (Button) c3.findViewById(android.R.id.button1);
        jbVar.f.setOnClickListener(jbVar.y);
        if (TextUtils.isEmpty(null)) {
            jbVar.f.setVisibility(8);
            i = 0;
        } else {
            jbVar.f.setText((CharSequence) null);
            jbVar.f.setVisibility(0);
            i = 1;
        }
        jbVar.g = (Button) c3.findViewById(android.R.id.button2);
        jbVar.g.setOnClickListener(jbVar.y);
        if (TextUtils.isEmpty(null)) {
            jbVar.g.setVisibility(8);
        } else {
            jbVar.g.setText((CharSequence) null);
            jbVar.g.setVisibility(0);
            i |= 2;
        }
        jbVar.h = (Button) c3.findViewById(android.R.id.button3);
        jbVar.h.setOnClickListener(jbVar.y);
        if (TextUtils.isEmpty(null)) {
            jbVar.h.setVisibility(8);
        } else {
            jbVar.h.setText((CharSequence) null);
            jbVar.h.setVisibility(0);
            i |= 4;
        }
        Context context = jbVar.a;
        TypedValue typedValue = new TypedValue();
        context.getTheme().resolveAttribute(R.attr.alertDialogCenterButtons, typedValue, true);
        if (typedValue.data != 0) {
            if (NavInstructionTypeEnum == 1) {
                button = jbVar.f;
            } else if (NavInstructionTypeEnum == 2) {
                button = jbVar.g;
            } else if (NavInstructionTypeEnum == 4) {
                button = jbVar.h;
            }
            AlertControllerConfig.b(button);
            if (jbVar.o == null) {
                c.addView(jbVar.o, 0, new ViewGroup.LayoutParams(-1, -2));
                jbVar.c.findViewById(R.id.title_template).setVisibility(8);
            } else {
                jbVar.l = (ImageView) jbVar.c.findViewById(android.R.id.icon);
                if (TextUtils.isEmpty(jbVar.d) || !jbVar.w) {
                    jbVar.c.findViewById(R.id.title_template).setVisibility(8);
                    jbVar.l.setVisibility(8);
                    c.setVisibility(8);
                } else {
                    jbVar.m = (TextView) jbVar.c.findViewById(R.id.alertTitle);
                    jbVar.m.setText(jbVar.d);
                    int i4 = jbVar.j;
                    Drawable drawable = jbVar.k;
                    if (drawable != null) {
                        jbVar.l.setImageDrawable(drawable);
                    } else {
                        jbVar.m.setPadding(jbVar.l.getPaddingLeft(), jbVar.l.getPaddingTop(), jbVar.l.getPaddingRight(), jbVar.l.getPaddingBottom());
                        jbVar.l.setVisibility(8);
                    }
                }
            }
            z = viewGroup == null && viewGroup.getVisibility() != 8;
            i2 = (PhenotypeFlagMessage != null || c.getVisibility() == 8) ? 0 : 1;
            z2 = c3 == null && c3.getVisibility() != 8;
            if (!z2 && c2 != null && (findViewById2 = c2.findViewById(R.id.textSpacerNoButtons)) != null) {
                findViewById2.setVisibility(0);
            }
            if (i2 == 0) {
                NestedScrollView nestedScrollView = jbVar.i;
                if (nestedScrollView != null) {
                    nestedScrollView.setClipToPadding(true);
                }
                View findViewById10 = jbVar.e != null ? c.findViewById(R.id.titleDividerNoCustom) : null;
                if (findViewById10 != null) {
                    findViewById10.setVisibility(0);
                }
            } else if (c2 != null && (findViewById = c2.findViewById(R.id.textSpacerNoTitle)) != null) {
                findViewById.setVisibility(0);
            }
            listView = jbVar.e;
            if (listView instanceof AlertController$RecycleListView) {
                if (!z2) {
                    i3 = i2;
                } else if (i2 == 0) {
                    i3 = 0;
                }
                AlertController$RecycleListView alertController$RecycleListView = (AlertController$RecycleListView) listView;
                alertController$RecycleListView.setPadding(alertController$RecycleListView.getPaddingLeft(), i3 != 0 ? alertController$RecycleListView.getPaddingTop() : alertController$RecycleListView.a, alertController$RecycleListView.getPaddingRight(), z2 ? alertController$RecycleListView.getPaddingBottom() : alertController$RecycleListView.b);
            }
            if (!z) {
                View view = jbVar.e;
                if (view == null) {
                    view = jbVar.i;
                }
                if (view != null) {
                    int i5 = true == z2 ? 2 : 0;
                    View findViewById11 = jbVar.c.findViewById(R.id.scrollIndicatorUp);
                    View findViewById12 = jbVar.c.findViewById(R.id.scrollIndicatorDown);
                    ViewCompatAccessibilityStatics.N(view, i2 | i5);
                    if (findViewById11 != null) {
                        c2.removeView(findViewById11);
                    }
                    if (findViewById12 != null) {
                        c2.removeView(findViewById12);
                    }
                }
            }
            listView2 = jbVar.e;
            if (listView2 != null || (listAdapter = jbVar.p) == null) {
            }
            listView2.setAdapter(listAdapter);
            int i6 = jbVar.q;
            if (i6 >= 0) {
                listView2.setItemChecked(i6, true);
                listView2.setSelection(i6);
                return;
            }
            return;
        }
        if (NavInstructionTypeEnum == 0) {
            c3.setVisibility(8);
        }
        if (jbVar.o == null) {
        }
        if (viewGroup == null) {
        }
        if (PhenotypeFlagMessage != null) {
        }
        if (c3 == null) {
        }
        if (!z2) {
            findViewById2.setVisibility(0);
        }
        if (i2 == 0) {
        }
        listView = jbVar.e;
        if (listView instanceof AlertController$RecycleListView) {
        }
        if (!z) {
        }
        listView2 = jbVar.e;
        if (listView2 != null) {
        }
    }

    @Override // android.app.Dialog, android.view.KeyEvent.Callback
    public final boolean onKeyDown(int i, KeyEvent keyEvent) {
        NestedScrollView nestedScrollView = this.a.i;
        if (nestedScrollView == null || !nestedScrollView.m(keyEvent)) {
            return super.onKeyDown(i, keyEvent);
        }
        return true;
    }

    @Override // android.app.Dialog, android.view.KeyEvent.Callback
    public final boolean onKeyUp(int i, KeyEvent keyEvent) {
        NestedScrollView nestedScrollView = this.a.i;
        if (nestedScrollView == null || !nestedScrollView.m(keyEvent)) {
            return super.onKeyUp(i, keyEvent);
        }
        return true;
    }

    @Override // defpackage.AppCompatDialog, android.app.Dialog
    public final void setTitle(CharSequence charSequence) {
        super.setTitle(charSequence);
        this.a.a(charSequence);
    }
}
