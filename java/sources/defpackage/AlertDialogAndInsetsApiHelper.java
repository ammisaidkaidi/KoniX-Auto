package defpackage;

import android.content.DialogInterface;
import android.graphics.drawable.Drawable;
import android.support.v7.app.AlertController$RecycleListView;
import android.view.View;
import android.view.ViewGroup;
import android.view.WindowInsets;
import android.widget.ImageView;
import android.widget.ListAdapter;

/* compiled from: PG */
/* loaded from: classes.dex */
public final class AlertDialogAndInsetsApiHelper {
    static WindowInsets a(View view, WindowInsets windowInsets) {
        return view.dispatchApplyWindowInsets(windowInsets);
    }

    static WindowInsets b(View view, WindowInsets windowInsets) {
        return view.onApplyWindowInsets(windowInsets);
    }

    static void c(View view) {
        view.requestApplyInsets();
    }

    public static final AppCompatAlertDialog d(AlertDialogBuilderParams iyVar, int i) {
        AppCompatAlertDialog jcVar = new AppCompatAlertDialog(iyVar.a, i);
        AlertControllerConfig jbVar = jcVar.a;
        View view = iyVar.e;
        if (view != null) {
            jbVar.o = view;
        } else {
            CharSequence charSequence = iyVar.d;
            if (charSequence != null) {
                jbVar.a(charSequence);
            }
            Drawable drawable = iyVar.c;
            if (drawable != null) {
                jbVar.k = drawable;
                jbVar.j = 0;
                ImageView imageView = jbVar.l;
                if (imageView != null) {
                    imageView.setVisibility(0);
                    jbVar.l.setImageDrawable(drawable);
                }
            }
        }
        if (iyVar.g != null) {
            AlertController$RecycleListView alertController$RecycleListView = (AlertController$RecycleListView) iyVar.b.inflate(jbVar.t, (ViewGroup) null);
            int i2 = iyVar.i ? jbVar.u : jbVar.v;
            ListAdapter listAdapter = iyVar.g;
            if (listAdapter == null) {
                listAdapter = new AlertDialogListAdapter(iyVar.a, i2);
            }
            jbVar.p = listAdapter;
            jbVar.q = iyVar.j;
            if (iyVar.h != null) {
                alertController$RecycleListView.setOnItemClickListener(new PopupItemClickListener(iyVar, jbVar));
            }
            if (iyVar.i) {
                alertController$RecycleListView.setChoiceMode(1);
            }
            jbVar.e = alertController$RecycleListView;
        }
        jcVar.setCancelable(true);
        jcVar.setCanceledOnTouchOutside(true);
        jcVar.setOnCancelListener(null);
        jcVar.setOnDismissListener(null);
        DialogInterface.OnKeyListener onKeyListener = iyVar.f;
        if (onKeyListener != null) {
            jcVar.setOnKeyListener(onKeyListener);
        }
        return jcVar;
    }

    public static boolean e(int i) {
        return (NavInstructionTypeEnum & 255) == 0;
    }

    public static boolean f(int i) {
        return (NavInstructionTypeEnum & 255) == 2;
    }

    public static int g(int i) {
        switch (NavInstructionTypeEnum) {
            case 0:
                return 1;
            case 1:
                return 2;
            case 2:
                return 3;
            case 3:
                return 4;
            case 4:
                return 5;
            case 5:
                return 6;
            case 6:
                return 7;
            default:
                return 0;
        }
    }

    public static int h(int i) {
        switch (NavInstructionTypeEnum) {
            case 0:
                return 1;
            case 1:
                return 2;
            case 2:
                return 3;
            default:
                return 0;
        }
    }

    public static int i(int i) {
        switch (NavInstructionTypeEnum) {
            case 0:
                return 1;
            case 1:
                return 2;
            case 2:
                return 3;
            case 3:
                return 4;
            case 4:
                return 5;
            case 5:
                return 6;
            default:
                return 0;
        }
    }

    public static int j(int i) {
        switch (NavInstructionTypeEnum) {
            case 0:
                return 1;
            case 1:
                return 2;
            case 2:
                return 3;
            case 3:
                return 4;
            case 4:
                return 5;
            default:
                return 0;
        }
    }
}
