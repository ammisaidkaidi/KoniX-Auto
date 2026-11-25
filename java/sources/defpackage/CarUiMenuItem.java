package defpackage;

import android.car.drivingstate.CarUxRestrictions;
import android.content.Context;
import android.graphics.drawable.Drawable;
import android.widget.Toast;
import com.google.android.embedded.projection.R;
import java.lang.ref.WeakReference;

/* compiled from: PG */
/* loaded from: classes.dex */
public final class CarUiMenuItem {
    public final boolean a;
    public final boolean b;
    public final boolean c;
    public final boolean d;
    public final boolean e;
    public final int f;
    public CarUxRestrictions g;
    public final CharSequence h;
    public final Drawable i;
    public final MenuItemActionCallback j;
    public final MenuItemShowAsActionMode k;
    public final boolean l;
    public boolean m;
    public boolean n;
    public boolean o;
    private final Context p;
    private WeakReference q = new WeakReference(null);
    private final int r;
    private final UxRestrictionsChangeListener s;

    public CarUiMenuItem(MenuItemValidator apqVar) {
        UxRestrictionsChangeListener arrVar = new UxRestrictionsChangeListener() { // from class: app
            @Override // defpackage.UxRestrictionsChangeListener
            public final void a(CarUxRestrictions carUxRestrictions) {
                CarUiMenuItem apuVar = CarUiMenuItem.this;
                boolean e = apuVar.e();
                apuVar.g = carUxRestrictions;
                if (apuVar.e() != e) {
                    apuVar.d();
                }
            }
        };
        this.s = arrVar;
        Context context = apqVar.a;
        this.p = context;
        this.f = apqVar.f;
        this.a = apqVar.m;
        this.b = apqVar.p;
        this.h = apqVar.g;
        this.i = apqVar.h;
        this.j = apqVar.i;
        this.k = apqVar.j;
        this.l = true;
        this.m = apqVar.n;
        this.n = apqVar.o;
        this.o = apqVar.q;
        this.c = apqVar.r;
        this.d = apqVar.l;
        this.e = apqVar.k;
        this.r = apqVar.t;
        CarUxRestrictionsUtil.b(context).c(arrVar);
    }

    public static MenuItemValidator a(Context context) {
        return new MenuItemValidator(context);
    }

    public final void b() {
        if (this.l && this.n) {
            if (e()) {
                Toast.makeText(this.p, R.string.car_ui_restricted_while_driving, 1).show();
                return;
            }
            if (this.b) {
                this.o = !this.o;
                d();
            }
            if (this.a) {
                this.m = !this.m;
                d();
            }
            MenuItemActionCallback aptVar = this.j;
            if (aptVar != null) {
                aptVar.a(this);
            }
        }
    }

    public final void c(MenuItemChangeListener apsVar) {
        this.q = new WeakReference(apsVar);
    }

    public final void d() {
        MenuItemChangeListener apsVar = (MenuItemChangeListener) this.q.get();
        if (apsVar != null) {
            apsVar.onMenuItemChanged(this);
        }
    }

    public final boolean e() {
        int i = this.r;
        CarUxRestrictions carUxRestrictions = this.g;
        return carUxRestrictions == null || (NavInstructionTypeEnum & carUxRestrictions.getActiveRestrictions()) != 0;
    }
}
