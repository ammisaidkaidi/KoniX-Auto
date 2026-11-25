package android.support.v7.view.menu;

import android.content.Context;
import android.content.res.Configuration;
import android.content.res.Resources;
import android.content.res.TypedArray;
import android.graphics.drawable.Drawable;
import android.os.Parcelable;
import android.text.TextUtils;
import android.util.AttributeSet;
import android.view.MotionEvent;
import android.view.View;
import defpackage.DecorToolbarHelper;
import defpackage.WidgetStubKz;
import defpackage.SimpleHolderLa;
import defpackage.SimpleInterfaceLn;
import defpackage.MenuItemImpl;
import defpackage.SimpleInterfaceMd;
import defpackage.MenuPresenterCallback;
import defpackage.AppCompatTextView;
import defpackage.ForwardingListener;

/* compiled from: PG */
/* loaded from: classes.dex */
public class ActionMenuItemView extends AppCompatTextView implements View.OnClickListener, md, na {
    public MenuItemImpl a;
    public SimpleInterfaceLn b;
    public SimpleHolderLa c;
    private CharSequence d;
    private Drawable e;
    private ForwardingListener f;
    private boolean g;
    private int h;
    private int i;
    private int j;

    public ActionMenuItemView(Context context) {
        this(context, null);
    }

    private final void g() {
        boolean z = true;
        boolean z2 = !TextUtils.isEmpty(this.d);
        if (this.e != null) {
            if ((this.a.n & 4) != 4) {
                z = false;
            } else if (!this.g) {
                z = false;
            }
        }
        boolean z3 = z2 & z;
        setText(z3 ? this.d : null);
        CharSequence charSequence = this.a.l;
        if (TextUtils.isEmpty(charSequence)) {
            setContentDescription(z3 ? null : this.a.d);
        } else {
            setContentDescription(charSequence);
        }
        CharSequence charSequence2 = this.a.m;
        if (TextUtils.isEmpty(charSequence2)) {
            setTooltipText(z3 ? null : this.a.d);
        } else {
            setTooltipText(charSequence2);
        }
    }

    private final boolean h() {
        Configuration configuration = getContext().getResources().getConfiguration();
        int i = configuration.screenWidthDp;
        int i2 = configuration.screenHeightDp;
        return i >= 480 || configuration.orientation == 2;
    }

    @Override // defpackage.SimpleInterfaceMd
    public final MenuItemImpl a() {
        return this.a;
    }

    public final boolean b() {
        return !TextUtils.isEmpty(getText());
    }

    @Override // defpackage.MenuPresenterCallback
    public final boolean c() {
        return b();
    }

    @Override // defpackage.MenuPresenterCallback
    public final boolean d() {
        return b() && this.a.getIcon() == null;
    }

    @Override // defpackage.SimpleInterfaceMd
    public final boolean e() {
        return true;
    }

    @Override // defpackage.SimpleInterfaceMd
    public final void f(MenuItemImpl lrVar) {
        this.a = lrVar;
        Drawable icon = lrVar.getIcon();
        this.e = icon;
        if (icon != null) {
            int intrinsicWidth = icon.getIntrinsicWidth();
            int intrinsicHeight = icon.getIntrinsicHeight();
            int i = this.j;
            if (intrinsicWidth > i) {
                intrinsicHeight = (int) (intrinsicHeight * (i / intrinsicWidth));
                intrinsicWidth = i;
            }
            if (intrinsicHeight > i) {
                intrinsicWidth = (int) (intrinsicWidth * (i / intrinsicHeight));
            } else {
                i = intrinsicHeight;
            }
            icon.setBounds(0, 0, intrinsicWidth, i);
        }
        setCompoundDrawables(icon, null, null, null);
        g();
        this.d = lrVar.f(this);
        g();
        setId(lrVar.a);
        setVisibility(true != lrVar.isVisible() ? 8 : 0);
        setEnabled(lrVar.isEnabled());
        if (lrVar.hasSubMenu() && this.f == null) {
            this.f = new WidgetStubKz(this);
        }
    }

    @Override // android.view.View.OnClickListener
    public final void onClick(View view) {
        SimpleInterfaceLn lnVar = this.b;
        if (lnVar != null) {
            lnVar.b(this.a);
        }
    }

    @Override // android.widget.TextView, android.view.View
    public final void onConfigurationChanged(Configuration configuration) {
        super.onConfigurationChanged(configuration);
        this.g = h();
        g();
    }

    @Override // defpackage.AppCompatTextView, android.widget.TextView, android.view.View
    protected final void onMeasure(int i, int i2) {
        int i3;
        boolean b = b();
        if (b && (i3 = this.i) >= 0) {
            super.setPadding(i3, getPaddingTop(), getPaddingRight(), getPaddingBottom());
        }
        super.onMeasure(i, i2);
        int mode = View.MeasureSpec.getMode(i);
        int size = View.MeasureSpec.getSize(i);
        int measuredWidth = getMeasuredWidth();
        int min = mode == Integer.MIN_VALUE ? Math.min(size, this.h) : this.h;
        if (mode != 1073741824 && this.h > 0 && measuredWidth < min) {
            super.onMeasure(View.MeasureSpec.makeMeasureSpec(min, 1073741824), i2);
        }
        if (b || this.e == null) {
            return;
        }
        super.setPadding((getMeasuredWidth() - this.e.getBounds().width()) / 2, getPaddingTop(), getPaddingRight(), getPaddingBottom());
    }

    @Override // android.widget.TextView, android.view.View
    public final void onRestoreInstanceState(Parcelable parcelable) {
        super.onRestoreInstanceState(null);
    }

    @Override // android.widget.TextView, android.view.View
    public final boolean onTouchEvent(MotionEvent motionEvent) {
        ForwardingListener pmVar;
        if (this.a.hasSubMenu() && (pmVar = this.f) != null && pmVar.onTouch(this, motionEvent)) {
            return true;
        }
        return super.onTouchEvent(motionEvent);
    }

    @Override // android.widget.TextView, android.view.View
    public final void setPadding(int i, int i2, int i3, int i4) {
        this.i = i;
        super.setPadding(i, i2, i3, i4);
    }

    public ActionMenuItemView(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    public ActionMenuItemView(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        Resources resources = context.getResources();
        this.g = h();
        TypedArray obtainStyledAttributes = context.obtainStyledAttributes(attributeSet, ki.c, i, 0);
        this.h = obtainStyledAttributes.getDimensionPixelSize(0, 0);
        obtainStyledAttributes.recycle();
        this.j = (int) ((resources.getDisplayMetrics().density * 32.0f) + 0.5f);
        setOnClickListener(this);
        this.i = -1;
        setSaveEnabled(false);
    }
}
