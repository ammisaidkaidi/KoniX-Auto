package defpackage;

import android.content.Context;
import android.text.TextWatcher;
import android.view.KeyEvent;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.view.inputmethod.InputMethodManager;
import android.widget.EditText;
import android.widget.ImageView;
import android.widget.TextView;
import androidx.constraintlayout.widget.ConstraintLayout;
import com.android.car.ui.toolbar.CarUiEditText;
import com.google.android.embedded.projection.R;
import java.util.Collections;
import java.util.Iterator;
import java.util.Set;

/* compiled from: PG */
/* loaded from: classes.dex */
public final class aqm extends ConstraintLayout {
    public final InputMethodManager h;
    public final aqs i;
    public final ImageView j;
    public final EditText k;
    public CharSequence l;
    public boolean m;
    public final View n;
    public final int o;
    public final int p;
    public final int q;
    public Set r;
    public Set s;
    public Set t;
    public Set u;
    public boolean v;
    private final arr w;
    private final TextWatcher x;
    private boolean y;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public aqm(Context context) {
        super(context, null, 0);
        final int i = 0;
        this.w = new aql(this);
        this.r = Collections.emptySet();
        this.s = Collections.emptySet();
        this.t = Collections.emptySet();
        this.u = Collections.emptySet();
        aqk aqkVar = new aqk(this);
        this.x = aqkVar;
        this.v = false;
        this.y = false;
        this.h = (InputMethodManager) getContext().getSystemService(InputMethodManager.class);
        final int i2 = 1;
        LayoutInflater.from(context).inflate(R.layout.car_ui_toolbar_search_view, (ViewGroup) this, true);
        EditText editText = (EditText) aro.g(this, R.id.car_ui_toolbar_search_bar);
        this.k = editText;
        this.j = (ImageView) aro.g(this, R.id.car_ui_toolbar_search_icon);
        View g = aro.g(this, R.id.car_ui_toolbar_search_close);
        this.n = g;
        g.setOnClickListener(new View.OnClickListener(this) { // from class: aqh
            public final /* synthetic */ aqm a;

            {
                this.a = this;
            }

            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                switch (i2) {
                    case 0:
                        this.a.h.showSoftInput(view, 0);
                        break;
                    default:
                        aqm aqmVar = this.a;
                        if (view.isFocused()) {
                            aqmVar.k.requestFocus();
                            aqmVar.h.showSoftInput(aqmVar.k, 0);
                        }
                        aqmVar.k.getText().clear();
                        break;
                }
            }
        });
        g.setVisibility(8);
        this.o = editText.getPaddingStart();
        int dimensionPixelSize = context.getResources().getDimensionPixelSize(R.dimen.car_ui_toolbar_search_search_icon_container_width);
        this.p = dimensionPixelSize;
        int dimensionPixelSize2 = context.getResources().getDimensionPixelSize(R.dimen.car_ui_toolbar_search_close_icon_container_width);
        this.q = dimensionPixelSize2;
        editText.setSaveEnabled(false);
        editText.setPaddingRelative(dimensionPixelSize, 0, dimensionPixelSize2, 0);
        editText.setOnClickListener(new View.OnClickListener(this) { // from class: aqh
            public final /* synthetic */ aqm a;

            {
                this.a = this;
            }

            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                switch (i) {
                    case 0:
                        this.a.h.showSoftInput(view, 0);
                        break;
                    default:
                        aqm aqmVar = this.a;
                        if (view.isFocused()) {
                            aqmVar.k.requestFocus();
                            aqmVar.h.showSoftInput(aqmVar.k, 0);
                        }
                        aqmVar.k.getText().clear();
                        break;
                }
            }
        });
        editText.setOnFocusChangeListener(new View.OnFocusChangeListener() { // from class: aqi
            @Override // android.view.View.OnFocusChangeListener
            public final void onFocusChange(View view, boolean z) {
                aqm aqmVar = aqm.this;
                if (z) {
                    return;
                }
                aqmVar.h.hideSoftInputFromWindow(view.getWindowToken(), 0);
            }
        });
        editText.addTextChangedListener(aqkVar);
        editText.setOnEditorActionListener(new TextView.OnEditorActionListener() { // from class: aqj
            @Override // android.widget.TextView.OnEditorActionListener
            public final boolean onEditorAction(TextView textView, int i3, KeyEvent keyEvent) {
                int keyCode;
                aqm aqmVar = aqm.this;
                if (i3 == 6 || i3 == 3) {
                    aqmVar.e();
                    return false;
                }
                if (keyEvent == null || !((keyCode = keyEvent.getKeyCode()) == 66 || keyCode == 160 || keyCode == 84)) {
                    return false;
                }
                if (keyEvent.getAction() != 1) {
                    return true;
                }
                aqmVar.e();
                return true;
            }
        });
        aqs aqsVar = new aqs(context);
        this.i = aqsVar;
        aqsVar.e(editText);
        if (editText instanceof CarUiEditText) {
            ((CarUiEditText) editText).a = aqsVar.c();
        }
    }

    public final void e() {
        this.k.clearFocus();
        Iterator it = this.s.iterator();
        while (it.hasNext()) {
            ((Runnable) it.next()).run();
        }
        Iterator it2 = this.u.iterator();
        while (it2.hasNext()) {
            ((ara) it2.next()).a();
        }
    }

    @Override // android.view.ViewGroup, android.view.View
    protected final void onAttachedToWindow() {
        super.onAttachedToWindow();
        ars.b(getContext()).c(this.w);
    }

    @Override // android.view.ViewGroup, android.view.View
    protected final void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        ars.b(getContext()).e(this.w);
    }

    @Override // android.view.View
    public final void onVisibilityChanged(View view, int i) {
        super.onVisibilityChanged(view, i);
        boolean isShown = isShown();
        if (isShown && !this.y) {
            this.n.setVisibility(this.k.getText().length() > 0 ? 0 : 8);
            this.k.requestFocus();
            this.h.showSoftInput(this.k, 0);
        }
        this.y = isShown;
    }
}
