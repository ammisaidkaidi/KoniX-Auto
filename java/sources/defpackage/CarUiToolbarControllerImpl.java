package defpackage;

import android.app.Activity;
import android.app.AlertDialog;
import android.content.Context;
import android.content.DialogInterface;
import android.graphics.drawable.Drawable;
import android.support.v7.widget.LinearLayoutManager;
import android.support.v7.widget.RecyclerView;
import android.text.PrecomputedText;
import android.text.TextUtils;
import android.text.method.LinkMovementMethod;
import android.util.Log;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.EditText;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.TextView;
import com.android.car.ui.FocusParkingView;
import com.android.car.ui.toolbar.TabLayout;
import com.google.android.embedded.projection.R;
import j$.util.function.Consumer;
import j$.util.function.Supplier;
import java.lang.ref.WeakReference;
import java.util.ArrayList;
import java.util.Collections;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Set;
import java.util.concurrent.Executor;
import java.util.concurrent.atomic.AtomicInteger;

/* compiled from: PG */
/* loaded from: classes.dex */
public final class CarUiToolbarControllerImpl implements CarUiToolbarController {
    private final CarUiMenuItem B;
    private final boolean C;
    private ToolbarStateType D;
    private boolean E;
    private ToolbarNavButtonMode F;
    private final ToolbarSearchMode G;
    private List H;
    private final List I;
    private final List J;
    private final boolean K;
    private final boolean L;
    private final MenuItemChangeListener M;
    public final ViewGroup a;
    public final Context b;
    public List e;
    public final List f;
    public final CarUiListItemAdapter g;
    public View[] h;
    public AlertDialog i;
    private final View j;
    private final ImageView k;
    private final ImageView l;
    private final ViewGroup m;
    private final ViewGroup n;
    private final TextView o;
    private final TextView q;
    private final ViewGroup s;
    private final TabLayout t;
    private final FrameLayout u;
    private ToolbarSearchWidget v;
    private final CharSequence w;
    private CharSequence p = "";
    private CharSequence r = "";
    private final Set x = new HashSet();
    private final Set y = new HashSet();
    private final Set z = new HashSet();
    private final Set A = new HashSet();
    public final Set c = new HashSet();
    public final Set d = new HashSet();

    public CarUiToolbarControllerImpl(View view) {
        new HashSet();
        this.D = ToolbarStateType.HOME;
        this.E = false;
        this.F = ToolbarNavButtonMode.DISABLED;
        this.G = ToolbarSearchMode.DISABLED;
        this.H = Collections.emptyList();
        this.e = new ArrayList();
        ArrayList arrayList = new ArrayList();
        this.f = arrayList;
        this.I = new ArrayList();
        this.J = new ArrayList();
        this.M = new MenuItemChangeListener() { // from class: ari
            @Override // defpackage.MenuItemChangeListener
            public final void onMenuItemChanged(CarUiMenuItem apuVar) {
                CarUiToolbarControllerImpl arnVar = CarUiToolbarControllerImpl.this;
                int indexOf = arnVar.e.indexOf(apuVar);
                if (indexOf >= 0) {
                    arnVar.f.set(indexOf, arnVar.a(apuVar));
                    arnVar.g.notifyItemChanged(indexOf);
                } else {
                    arnVar.b();
                }
                arnVar.c();
            }
        };
        Context context = view.getContext();
        this.b = context;
        MenuItemValidator a = CarUiMenuItem.a(context);
        a.h = a.a.getDrawable(R.drawable.car_ui_icon_overflow_menu);
        a.g = a.a.getString(R.string.car_ui_toolbar_menu_item_overflow_title);
        a.i = new MenuItemActionCallback() { // from class: arj
            @Override // defpackage.MenuItemActionCallback
            public final void a(CarUiMenuItem apuVar) {
                AlertDialog alertDialog = CarUiToolbarControllerImpl.this.i;
                if (alertDialog != null) {
                    alertDialog.show();
                } else if (Log.isLoggable("CarUiToolbarController", 6)) {
                    Log.e("CarUiToolbarController", "Overflow dialog was null when trying to show it!");
                }
            }
        };
        this.B = a.a();
        this.C = context.getResources().getBoolean(R.bool.car_ui_toolbar_tabs_on_second_row);
        this.K = context.getResources().getBoolean(R.bool.car_ui_toolbar_nav_icon_reserve_space);
        context.getResources().getBoolean(R.bool.car_ui_toolbar_logo_fills_nav_icon_space);
        this.L = context.getResources().getBoolean(R.bool.car_ui_toolbar_show_logo);
        this.w = context.getString(R.string.car_ui_toolbar_default_search_hint);
        View f = CarUiResourceUtils.f(view, R.id.car_ui_toolbar_background);
        this.j = f;
        this.t = (TabLayout) CarUiResourceUtils.g(view, R.id.car_ui_toolbar_tabs);
        this.k = (ImageView) CarUiResourceUtils.g(view, R.id.car_ui_toolbar_nav_icon);
        this.l = (ImageView) CarUiResourceUtils.g(view, R.id.car_ui_toolbar_logo);
        this.m = (ViewGroup) CarUiResourceUtils.g(view, R.id.car_ui_toolbar_nav_icon_container);
        this.a = (ViewGroup) CarUiResourceUtils.g(view, R.id.car_ui_toolbar_menu_items_container);
        this.n = (ViewGroup) CarUiResourceUtils.g(view, R.id.car_ui_toolbar_title_container);
        this.q = (TextView) CarUiResourceUtils.g(view, R.id.car_ui_toolbar_subtitle);
        this.o = (TextView) CarUiResourceUtils.g(view, R.id.car_ui_toolbar_title);
        this.s = (ViewGroup) CarUiResourceUtils.g(view, R.id.car_ui_toolbar_title_logo_container);
        this.u = (FrameLayout) CarUiResourceUtils.g(view, R.id.car_ui_toolbar_search_view_container);
        if (NavManeuverTypeEnum != null) {
            f.setBackground(PrimesDebugEventsHelper.a(context, R.drawable.car_ui_toolbar_background));
        }
        this.g = new CarUiListItemAdapter(arrayList);
        c();
    }

    private static final void d(TextView textView, final CharSequence charSequence, Executor executor) {
        final PrecomputedText.Params textMetricsParams = textView.getTextMetricsParams();
        final WeakReference weakReference = new WeakReference(textView);
        executor.execute(new Runnable() { // from class: arl
            @Override // java.lang.Runnable
            public final void run() {
                final WeakReference weakReference2 = weakReference;
                final CharSequence charSequence2 = charSequence;
                PrecomputedText.Params params = textMetricsParams;
                TextView textView2 = (TextView) weakReference2.get();
                if (textView2 == null) {
                    return;
                }
                final PrecomputedText create = PrecomputedText.create(charSequence2, params);
                textView2.post(new Runnable() { // from class: ark
                    @Override // java.lang.Runnable
                    public final void run() {
                        WeakReference weakReference3 = weakReference2;
                        PrecomputedText precomputedText = create;
                        CharSequence charSequence3 = charSequence2;
                        TextView textView3 = (TextView) weakReference3.get();
                        if (textView3 == null) {
                            return;
                        }
                        try {
                            textView3.setTextMetricsParams(precomputedText.getParams());
                            textView3.setText(precomputedText);
                        } catch (IllegalArgumentException e) {
                            textView3.setText(charSequence3);
                        }
                    }
                });
            }
        });
    }

    public final CarUiListItem a(CarUiMenuItem apuVar) {
        CarUiListItem aoeVar = apuVar.a ? new CarUiListItem(ListItemSecondaryActionType.SWITCH) : new CarUiListItem(ListItemSecondaryActionType.NONE);
        aoeVar.a = apuVar.i;
        aoeVar.g = apuVar.o;
        aoeVar.a(apuVar.m);
        aoeVar.f = apuVar.l;
        aoeVar.b(apuVar.h);
        aoeVar.i = new ToolbarClickListenerBridge(this, apuVar);
        return aoeVar;
    }

    public final void b() {
        this.f.clear();
        for (CarUiMenuItem apuVar : this.e) {
            if (apuVar.n) {
                this.f.add(a(apuVar));
            }
        }
        CarUiAlertDialogBuilder amnVar = new CarUiAlertDialogBuilder(this.b);
        CarUiListItemAdapter aopVar = this.g;
        View inflate = LayoutInflater.from(amnVar.b).inflate(R.layout.car_ui_alert_dialog_list, (ViewGroup) null);
        RecyclerView recyclerView = (RecyclerView) CarUiResourceUtils.g(inflate, R.id.list);
        recyclerView.Z(new LinearLayoutManager());
        recyclerView.Y(aopVar);
        amnVar.a.setView(inflate);
        View inflate2 = LayoutInflater.from(amnVar.b).inflate(R.layout.car_ui_alert_dialog_title_with_subtitle, (ViewGroup) null);
        TextView textView = (TextView) CarUiResourceUtils.g(inflate2, R.id.car_ui_alert_title);
        TextView textView2 = (TextView) CarUiResourceUtils.g(inflate2, R.id.car_ui_alert_subtitle);
        textView2.setMovementMethod(LinkMovementMethod.getInstance());
        ImageView imageView = (ImageView) CarUiResourceUtils.g(inflate2, R.id.car_ui_alert_icon);
        textView.setText((CharSequence) null);
        textView.setVisibility(true != TextUtils.isEmpty(null) ? 0 : 8);
        textView2.setText((CharSequence) null);
        textView2.setVisibility(true == TextUtils.isEmpty(null) ? 8 : 0);
        imageView.setImageDrawable(null);
        imageView.setVisibility(8);
        amnVar.a.setCustomTitle(inflate2);
        if (amnVar.b.getResources().getBoolean(R.bool.car_ui_alert_dialog_force_dismiss_button)) {
            amnVar.a.setNegativeButton(amnVar.b.getString(R.string.car_ui_alert_dialog_default_button), new DialogInterface.OnClickListener() { // from class: amk
                @Override // android.content.DialogInterface.OnClickListener
                public final void onClick(DialogInterface dialogInterface, int i) {
                }
            });
        }
        AlertDialog create = amnVar.a.create();
        amnVar.c = (ViewGroup) create.getWindow().getDecorView().getRootView();
        amnVar.c.addView(new FocusParkingView(amnVar.b));
        amnVar.c.setOnApplyWindowInsetsListener(amnVar.d);
        amnVar.a.setOnDismissListener(amnVar.e);
        this.i = create;
    }

    /* JADX WARN: Code restructure failed: missing block: B:121:0x0209, code lost:
    
        if (r2 > 0) goto L128;
     */
    /* JADX WARN: Removed duplicated region for block: B:107:0x01e7  */
    /* JADX WARN: Removed duplicated region for block: B:110:0x01ef  */
    /* JADX WARN: Removed duplicated region for block: B:92:0x0195  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final void c() {
        int i;
        ToolbarSearchWidget aqmVar;
        boolean z;
        ToolbarNavButtonMode aqaVar = this.F;
        if (this.E) {
            if (this.D == ToolbarStateType.HOME) {
                aqaVar = ToolbarNavButtonMode.DISABLED;
            } else if (aqaVar == ToolbarNavButtonMode.DISABLED) {
                aqaVar = ToolbarNavButtonMode.BACK;
            }
        }
        ToolbarSearchMode aqgVar = this.G;
        if (this.E) {
            aqgVar = this.D == ToolbarStateType.SEARCH ? ToolbarSearchMode.SEARCH : this.D == ToolbarStateType.EDIT ? ToolbarSearchMode.EDIT : ToolbarSearchMode.DISABLED;
        }
        if (this.E) {
            ToolbarStateType ardVar = ToolbarStateType.HOME;
        }
        boolean z2 = true;
        boolean z3 = !this.t.b.isEmpty();
        if (this.E && this.D != ToolbarStateType.HOME) {
            ToolbarStateType ardVar2 = ToolbarStateType.SUBPAGE;
            z3 = false;
        }
        ToolbarSearchMode aqgVar2 = ToolbarSearchMode.DISABLED;
        boolean z4 = aqgVar != aqgVar2;
        if (this.v == null && z4) {
            ToolbarSearchWidget aqmVar2 = new ToolbarSearchWidget(this.b);
            CharSequence charSequence = this.w;
            aqmVar2.l = charSequence;
            if (!aqmVar2.m) {
                aqmVar2.k.setHint(charSequence);
            }
            aqmVar2.j.setImageResource(R.drawable.car_ui_icon_search);
            aqmVar2.k.setText((CharSequence) null);
            EditText editText = aqmVar2.k;
            editText.setSelection(editText.getText().length());
            Set set = this.z;
            aqmVar2.r = this.x;
            aqmVar2.t = set;
            Set set2 = this.A;
            aqmVar2.s = this.y;
            aqmVar2.u = set2;
            aqmVar2.setVisibility(8);
            this.u.addView(aqmVar2, new FrameLayout.LayoutParams(-1, -1));
            aqmVar2.i.d(null);
            this.v = aqmVar2;
        }
        for (ToolbarMenuItemPresenter apxVar : this.I) {
            boolean z5 = aqgVar == ToolbarSearchMode.SEARCH;
            if (z5 != apxVar.a) {
                apxVar.a = z5;
                if (apxVar.b.c) {
                    apxVar.a();
                }
            }
        }
        View.OnClickListener onClickListener = new View.OnClickListener() { // from class: arf
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                Activity d;
                CarUiToolbarControllerImpl arnVar = CarUiToolbarControllerImpl.this;
                ArrayList arrayList = new ArrayList(arnVar.c);
                ArrayList arrayList2 = new ArrayList(arnVar.d);
                int size = arrayList.size();
                boolean z6 = false;
                for (int i2 = 0; i2 < size; i2++) {
                    z6 = z6 || ((ToolbarVisibilityProvider) arrayList.get(i2)).a();
                }
                int size2 = arrayList2.size();
                for (int i3 = 0; i3 < size2; i3++) {
                    z6 = z6 || ((Boolean) ((Supplier) arrayList2.get(i3)).get()).booleanValue();
                }
                if (z6 || (ProtoMsgIntStringInt = CarUiResourceUtils.d(arnVar.b)) == null) {
                    return;
                }
                d.onBackPressed();
            }
        };
        ToolbarNavButtonMode aqaVar2 = ToolbarNavButtonMode.BACK;
        LegacyToolbarNavButtonMode aqyVar = LegacyToolbarNavButtonMode.BACK;
        switch (aqaVar.ordinal()) {
            case 1:
                this.k.setImageResource(R.drawable.car_ui_icon_close);
                break;
            case 2:
                this.k.setImageResource(R.drawable.car_ui_icon_down);
                break;
            default:
                this.k.setImageResource(R.drawable.car_ui_icon_arrow_back);
                break;
        }
        this.k.setVisibility(aqaVar != ToolbarNavButtonMode.DISABLED ? 0 : 8);
        int i2 = 4;
        this.l.setVisibility(4);
        this.s.setVisibility(8);
        ViewGroup viewGroup = this.m;
        if (aqaVar != ToolbarNavButtonMode.DISABLED) {
            i2 = 0;
        } else if (!this.K) {
            i2 = 8;
        }
        viewGroup.setVisibility(i2);
        ViewGroup viewGroup2 = this.m;
        if (aqaVar == ToolbarNavButtonMode.DISABLED) {
            onClickListener = null;
        }
        viewGroup2.setOnClickListener(onClickListener);
        this.m.setClickable(aqaVar != ToolbarNavButtonMode.DISABLED);
        this.m.setContentDescription(aqaVar != ToolbarNavButtonMode.DISABLED ? this.b.getString(R.string.car_ui_toolbar_nav_icon_content_description) : null);
        this.n.setVisibility(((!z3 || this.C) && !z4) ? 0 : 8);
        this.q.setVisibility(true != TextUtils.isEmpty(this.r) ? 0 : 8);
        TabLayout tabLayout = this.t;
        if (z3) {
            if (this.G == ToolbarSearchMode.DISABLED) {
                i = 0;
            } else if (this.C) {
                i = 0;
            }
            tabLayout.setVisibility(NavInstructionTypeEnum);
            aqmVar = this.v;
            if (aqmVar != null) {
                if (z4) {
                    boolean z6 = aqgVar == ToolbarSearchMode.EDIT;
                    if (z6 != aqmVar.v) {
                        if (z6) {
                            aqmVar.k.setPaddingRelative(aqmVar.o, 0, aqmVar.q, 0);
                            aqmVar.k.setImeOptions(6);
                            aqmVar.j.setVisibility(8);
                        } else {
                            aqmVar.k.setPaddingRelative(aqmVar.p, 0, aqmVar.q, 0);
                            aqmVar.k.setImeOptions(3);
                            aqmVar.j.setVisibility(0);
                        }
                        aqmVar.v = z6;
                        aqmVar.h.restartInput(aqmVar.k);
                    }
                    this.v.setVisibility(0);
                } else {
                    aqmVar.setVisibility(8);
                }
            }
            z = !z4;
            this.a.setVisibility(aqgVar == aqgVar2 ? 0 : 8);
            CarUiMenuItem apuVar = this.B;
            if (IcuMessageFormat) {
                Iterator it = this.e.iterator();
                int i3 = 0;
                while (it.hasNext()) {
                    if (((CarUiMenuItem) it.next()).n) {
                        i3++;
                    }
                }
            }
            z2 = false;
            apuVar.n = z2;
            apuVar.d();
        }
        i = 8;
        tabLayout.setVisibility(NavInstructionTypeEnum);
        aqmVar = this.v;
        if (aqmVar != null) {
        }
        z = !z4;
        this.a.setVisibility(aqgVar == aqgVar2 ? 0 : 8);
        CarUiMenuItem apuVar2 = this.B;
        if (IcuMessageFormat) {
        }
        z2 = false;
        apuVar2.n = z2;
        apuVar2.d();
    }

    @Override // defpackage.CarUiToolbarController
    public final boolean isStateSet() {
        return this.E;
    }

    @Override // defpackage.CarUiToolbarController
    public final void setLogo(Drawable drawable) {
        if (this.L) {
            c();
        }
    }

    @Override // defpackage.CarUiToolbarController
    public final void setMenuItems(List list) {
        List<CarUiMenuItem> emptyList = Collections.emptyList();
        ArrayList arrayList = new ArrayList();
        ArrayList arrayList2 = new ArrayList();
        final AtomicInteger atomicInteger = new AtomicInteger(0);
        synchronized (this) {
            if (emptyList.equals(this.H)) {
                return;
            }
            for (CarUiMenuItem apuVar : emptyList) {
                if (apuVar.k == MenuItemShowAsActionMode.NEVER) {
                    arrayList2.add(apuVar);
                    apuVar.c(this.M);
                } else {
                    arrayList.add(apuVar);
                }
            }
            this.H = new ArrayList(emptyList);
            this.e = arrayList2;
            this.I.clear();
            this.a.removeAllViews();
            if (!arrayList2.isEmpty()) {
                arrayList.add(this.B);
                b();
            }
            final View[] viewArr = new View[arrayList.size()];
            this.h = viewArr;
            for (final int i = 0; NavInstructionTypeEnum < arrayList.size(); i++) {
                ToolbarMenuItemPresenter apxVar = new ToolbarMenuItemPresenter((CarUiMenuItem) arrayList.get(NavInstructionTypeEnum), this.a);
                this.I.add(apxVar);
                Consumer consumer = new Consumer() { // from class: arg
                    @Override // j$.util.function.Consumer
                    public final void accept(Object obj) {
                        CarUiToolbarControllerImpl arnVar = CarUiToolbarControllerImpl.this;
                        View[] viewArr2 = viewArr;
                        int i2 = i;
                        AtomicInteger atomicInteger2 = atomicInteger;
                        View view = (View) obj;
                        synchronized (arnVar) {
                            if (viewArr2 != arnVar.h) {
                                return;
                            }
                            viewArr2[i2] = view;
                            if (atomicInteger2.addAndGet(1) == viewArr2.length) {
                                for (View view2 : viewArr2) {
                                    arnVar.a.addView(view2);
                                }
                            }
                        }
                    }

                    @Override // j$.util.function.Consumer
                    public final /* synthetic */ Consumer andThen(Consumer consumer2) {
                        return Consumer.CC.$default$andThen(this, consumer2);
                    }
                };
                AsyncLayoutInflator uuVar = new AsyncLayoutInflator(apxVar.c.getContext());
                ViewGroup viewGroup = apxVar.c;
                ToolbarControllerHolder apwVar = new ToolbarControllerHolder(apxVar, consumer);
                AsyncLayoutInflateRequest usVar = (AsyncLayoutInflateRequest) uuVar.c.c.a();
                if (usVar == null) {
                    usVar = new AsyncLayoutInflateRequest();
                }
                usVar.a = uuVar;
                usVar.c = R.layout.car_ui_toolbar_menu_item;
                usVar.b = viewGroup;
                usVar.e = apwVar;
                try {
                    uuVar.c.b.put(usVar);
                } catch (InterruptedException e) {
                    throw new RuntimeException("Failed to enqueue async inflate request", e);
                }
            }
            c();
        }
    }

    @Override // defpackage.CarUiToolbarController
    public final void setNavButtonMode(ToolbarNavButtonMode aqaVar) {
        if (aqaVar != this.F) {
            this.F = aqaVar;
            c();
        }
    }

    @Override // defpackage.CarUiToolbarController
    public final void setState(ToolbarStateType ardVar) {
        if (this.D == ardVar && this.E) {
            return;
        }
        this.D = ardVar;
        this.E = true;
        c();
    }

    @Override // defpackage.CarUiToolbarController
    public final void setSubtitle(CharSequence charSequence) {
        this.r = "";
        d(this.q, "", arm.a);
        c();
    }

    @Override // defpackage.CarUiToolbarController
    public final void setTabs(List list) {
        this.J.clear();
        int i = -1;
        if (list != null && !list.isEmpty()) {
            if (list.size() <= 0) {
                throw new IllegalArgumentException("Tab position is invalid: 0");
            }
            i = 0;
        }
        TabLayout tabLayout = this.t;
        if (list == null) {
            tabLayout.b = Collections.emptyList();
        } else {
            tabLayout.b = Collections.unmodifiableList(new ArrayList(list));
        }
        tabLayout.c = i;
        tabLayout.removeAllViews();
        for (int i2 = 0; i2 < tabLayout.b.size(); i2++) {
            tabLayout.addView(LayoutInflater.from(tabLayout.getContext()).inflate(tabLayout.a, (ViewGroup) tabLayout, false));
            tabLayout.a(i2);
        }
        c();
    }

    @Override // defpackage.CarUiToolbarController
    public final void setTitle(CharSequence charSequence) {
        if (charSequence == null) {
            charSequence = "";
        }
        this.p = charSequence;
        d(this.o, charSequence, arm.a);
        c();
    }

    @Override // defpackage.CarUiToolbarController
    public final void setNavButtonMode(LegacyToolbarNavButtonMode aqyVar) {
        ToolbarNavButtonMode aqaVar;
        ToolbarNavButtonMode aqaVar2 = ToolbarNavButtonMode.BACK;
        LegacyToolbarNavButtonMode aqyVar2 = LegacyToolbarNavButtonMode.BACK;
        switch (aqyVar) {
            case BACK:
                aqaVar = ToolbarNavButtonMode.BACK;
                break;
            case CLOSE:
                aqaVar = ToolbarNavButtonMode.CLOSE;
                break;
            case DOWN:
                aqaVar = ToolbarNavButtonMode.DOWN;
                break;
            default:
                aqaVar = ToolbarNavButtonMode.DISABLED;
                break;
        }
        setNavButtonMode(aqaVar);
    }
}
