package android.support.v7.widget;

import android.R;
import android.animation.LayoutTransition;
import android.content.Context;
import android.content.res.Resources;
import android.content.res.TypedArray;
import android.graphics.Canvas;
import android.graphics.PointF;
import android.graphics.Rect;
import android.graphics.RectF;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.StateListDrawable;
import android.os.Parcelable;
import android.os.SystemClock;
import android.util.AttributeSet;
import android.util.Log;
import android.util.SparseArray;
import android.view.Display;
import android.view.FocusFinder;
import android.view.MotionEvent;
import android.view.VelocityTracker;
import android.view.View;
import android.view.ViewConfiguration;
import android.view.ViewGroup;
import android.view.ViewParent;
import android.view.accessibility.AccessibilityEvent;
import android.view.accessibility.AccessibilityManager;
import android.view.animation.Interpolator;
import android.widget.EdgeEffect;
import android.widget.OverScroller;
import androidx.preference.Preference;
import defpackage.CarUiLinearSmoothScroller;
import defpackage.PreferenceListItemDecoration;
import defpackage.NestedScrollingChildHelper;
import defpackage.OverflowCheckedLongArrayUtil;
import defpackage.ViewAutofillAndFarmHashUtil;
import defpackage.ViewCompatAccessibilityStatics;
import defpackage.IntConstantHolderKl;
import defpackage.RecyclerViewUpdateOp;
import defpackage.RecyclerViewAdapterHelper;
import defpackage.RecyclerViewChildHelper;
import defpackage.ItemTouchHelper;
import defpackage.LinearLayoutChunkResult;
import defpackage.RecyclerViewGapWorker;
import defpackage.RecyclerViewScrollRunnable;
import defpackage.RecyclerViewDecelerateInterpolator;
import defpackage.RecyclerViewAdapter;
import defpackage.ItemViewTypeHolder;
import defpackage.DefaultItemAnimator;
import defpackage.ItemAnimatorListenerAdapter;
import defpackage.ItemTouchHelperCallbackBase;
import defpackage.RecyclerViewLayoutManager;
import defpackage.RecyclerViewLayoutParams;
import defpackage.LinearLayoutManagerScrollerState;
import defpackage.ItemTouchUiUtilInterface;
import defpackage.SqliteContentValuesHelper;
import defpackage.ConstraintAnchorList;
import defpackage.ConstraintSparseArrayMap;
import defpackage.RecyclerViewRecycler;
import defpackage.RecyclerViewAdapterDataObserver;
import defpackage.SavedStateWithParcelable;
import defpackage.SmoothScrollerActionCallback;
import defpackage.RecyclerViewSmoothScroller;
import defpackage.RecyclerViewState;
import defpackage.EdgeEffectCompatWrapper;
import defpackage.RecyclerViewViewFlinger;
import defpackage.RecyclerViewViewHolder;
import defpackage.NestedScrollingChildHelperWrapper;
import defpackage.ViewHolderAttachState;
import defpackage.AccessibilityEventFlagHelper;
import defpackage.TraceCompatHelper;
import java.lang.ref.WeakReference;
import java.lang.reflect.Constructor;
import java.lang.reflect.InvocationTargetException;
import java.util.ArrayList;
import java.util.List;

/* compiled from: PG */
/* loaded from: classes.dex */
public class RecyclerView extends ViewGroup {
    public static final /* synthetic */ int O = 0;
    private static final int[] P = {R.attr.nestedScrollingEnabled};
    private static final Class[] Q = {Context.class, AttributeSet.class, Integer.TYPE, Integer.TYPE};
    public static final Interpolator a = new RecyclerViewDecelerateInterpolator();
    static final EdgeEffectCompatWrapper b = new EdgeEffectCompatWrapper();
    public EdgeEffect A;
    public DefaultItemAnimator B;
    public LinearLayoutManagerScrollerState C;
    public final int D;
    public final RecyclerViewViewFlinger E;
    public RecyclerViewGapWorker F;
    public LinearLayoutChunkResult G;
    public final RecyclerViewState H;
    public boolean I;
    public boolean J;
    public boolean K;
    public NestedScrollingChildHelperWrapper L;
    public final int[] M;
    final List N;
    private final RecyclerViewAdapterDataObserver R;
    private final Rect S;
    private int T;
    private boolean U;
    private int V;
    private final AccessibilityManager W;
    private int aa;
    private int ab;
    private int ac;
    private int ad;
    private VelocityTracker ae;
    private int af;
    private int ag;
    private int ah;
    private int ai;
    private int aj;
    private final int ak;
    private float al;
    private float am;
    private boolean an;
    private List ao;
    private final int[] ap;
    private NestedScrollingChildHelper aq;
    private final int[] ar;
    private final int[] as;
    private Runnable at;
    private boolean au;
    private int av;
    private int aw;
    private ItemAnimatorListenerAdapter ax;
    private ViewAutofillAndFarmHashUtil ay;
    private final ItemAnimatorListenerAdapter az;
    public final RecyclerViewRecycler c;
    public SavedStateWithParcelable d;
    public RecyclerViewAdapterHelper e;
    public RecyclerViewChildHelper f;
    public final AccessibilityEventFlagHelper g;
    boolean h;
    public final Rect i;
    public final RectF j;
    public RecyclerViewAdapter k;
    public RecyclerViewLayoutManager l;
    public final List m;
    public final ArrayList n;
    public final ArrayList o;
    public ItemTouchUiUtilInterface p;
    public boolean q;
    boolean r;
    boolean s;
    public boolean t;
    public boolean u;
    public boolean v;
    boolean w;
    public EdgeEffect x;
    public EdgeEffect y;
    public EdgeEffect z;

    public RecyclerView(Context context) {
        this(context, null);
    }

    public static void G(View view, Rect rect) {
        RecyclerViewLayoutParams rbVar = (RecyclerViewLayoutParams) view.getLayoutParams();
        Rect rect2 = rbVar.d;
        rect.set((view.getLeft() - rect2.left) - rbVar.leftMargin, (view.getTop() - rect2.top) - rbVar.topMargin, view.getRight() + rect2.right + rbVar.rightMargin, view.getBottom() + rect2.bottom + rbVar.bottomMargin);
    }

    private final void aA() {
        VelocityTracker velocityTracker = this.ae;
        if (velocityTracker != null) {
            velocityTracker.clear();
        }
        boolean z = false;
        ae(0);
        EdgeEffect edgeEffect = this.x;
        if (edgeEffect != null) {
            edgeEffect.onRelease();
            z = this.x.isFinished();
        }
        EdgeEffect edgeEffect2 = this.y;
        if (edgeEffect2 != null) {
            edgeEffect2.onRelease();
            z |= this.y.isFinished();
        }
        EdgeEffect edgeEffect3 = this.z;
        if (edgeEffect3 != null) {
            edgeEffect3.onRelease();
            z |= this.z.isFinished();
        }
        EdgeEffect edgeEffect4 = this.A;
        if (edgeEffect4 != null) {
            edgeEffect4.onRelease();
            z |= this.A.isFinished();
        }
        if (z) {
            ViewCompatAccessibilityStatics.q(this);
        }
    }

    private final void aB() {
        RecyclerViewSmoothScroller rnVar;
        this.E.c();
        RecyclerViewLayoutManager raVar = this.l;
        if (raVar == null || (rnVar = raVar.u) == null) {
            return;
        }
        rnVar.c();
    }

    private final boolean aC(MotionEvent motionEvent) {
        int action = motionEvent.getAction();
        int size = this.o.size();
        for (int i = 0; i < size; i++) {
            ItemTouchUiUtilInterface rdVar = (ItemTouchUiUtilInterface) this.o.get(i);
            if (rdVar.g(motionEvent) && action != 3) {
                this.p = rdVar;
                return true;
            }
        }
        return false;
    }

    private final boolean aD() {
        return this.B != null && this.l.t();
    }

    private final void aE(Context context, String str, AttributeSet attributeSet, int i) {
        Constructor constructor;
        Object[] objArr;
        if (str != null) {
            String trim = str.trim();
            if (trim.isEmpty()) {
                return;
            }
            if (trim.charAt(0) == '.') {
                trim = String.valueOf(context.getPackageName()).concat(String.valueOf(trim));
            } else if (!trim.contains(".")) {
                trim = RecyclerView.class.getPackage().getName() + '.' + trim;
            }
            try {
                Class<? extends U> asSubclass = Class.forName(trim, false, isInEditMode() ? getClass().getClassLoader() : context.getClassLoader()).asSubclass(ra.class);
                try {
                    constructor = asSubclass.getConstructor(Q);
                    objArr = new Object[]{context, attributeSet, Integer.valueOf(i), 0};
                } catch (NoSuchMethodException e) {
                    try {
                        constructor = asSubclass.getConstructor(new Class[0]);
                        objArr = null;
                    } catch (NoSuchMethodException e2) {
                        e2.initCause(e);
                        throw new IllegalStateException(attributeSet.getPositionDescription() + ": Error creating LayoutManager " + trim, e2);
                    }
                }
                constructor.setAccessible(true);
                Z((RecyclerViewLayoutManager) constructor.newInstance(objArr));
            } catch (ClassCastException e3) {
                throw new IllegalStateException(attributeSet.getPositionDescription() + ": Class is not a LayoutManager " + trim, e3);
            } catch (ClassNotFoundException e4) {
                throw new IllegalStateException(attributeSet.getPositionDescription() + ": Unable to find LayoutManager " + trim, e4);
            } catch (IllegalAccessException e5) {
                throw new IllegalStateException(attributeSet.getPositionDescription() + ": Cannot access non-public constructor " + trim, e5);
            } catch (InstantiationException e6) {
                throw new IllegalStateException(attributeSet.getPositionDescription() + ": Could not instantiate the LayoutManager: " + trim, e6);
            } catch (InvocationTargetException e7) {
                throw new IllegalStateException(attributeSet.getPositionDescription() + ": Could not instantiate the LayoutManager: " + trim, e7);
            }
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:11:0x0066  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    private final int ap(int i, float f) {
        float l;
        int round;
        float height = f / getHeight();
        float width = i / getWidth();
        EdgeEffect edgeEffect = this.x;
        float f2 = 0.0f;
        if (edgeEffect == null || OverflowCheckedLongArrayUtil.k(edgeEffect) == 0.0f) {
            EdgeEffect edgeEffect2 = this.z;
            if (edgeEffect2 != null && OverflowCheckedLongArrayUtil.k(edgeEffect2) != 0.0f) {
                l = OverflowCheckedLongArrayUtil.l(this.z, width, height);
                if (OverflowCheckedLongArrayUtil.k(this.z) == 0.0f) {
                    this.z.onRelease();
                }
            }
            round = Math.round(f2 * getWidth());
            if (round != 0) {
                invalidate();
            }
            return round;
        }
        l = -OverflowCheckedLongArrayUtil.l(this.x, -width, 1.0f - height);
        if (OverflowCheckedLongArrayUtil.k(this.x) == 0.0f) {
            this.x.onRelease();
        }
        f2 = l;
        round = Math.round(f2 * getWidth());
        if (round != 0) {
        }
        return round;
    }

    /* JADX WARN: Removed duplicated region for block: B:11:0x0066  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    private final int aq(int i, float f) {
        float l;
        int round;
        float width = f / getWidth();
        float height = i / getHeight();
        EdgeEffect edgeEffect = this.y;
        float f2 = 0.0f;
        if (edgeEffect == null || OverflowCheckedLongArrayUtil.k(edgeEffect) == 0.0f) {
            EdgeEffect edgeEffect2 = this.A;
            if (edgeEffect2 != null && OverflowCheckedLongArrayUtil.k(edgeEffect2) != 0.0f) {
                l = OverflowCheckedLongArrayUtil.l(this.A, height, 1.0f - width);
                if (OverflowCheckedLongArrayUtil.k(this.A) == 0.0f) {
                    this.A.onRelease();
                }
            }
            round = Math.round(f2 * getHeight());
            if (round != 0) {
                invalidate();
            }
            return round;
        }
        l = -OverflowCheckedLongArrayUtil.l(this.y, -height, width);
        if (OverflowCheckedLongArrayUtil.k(this.y) == 0.0f) {
            this.y.onRelease();
        }
        f2 = l;
        round = Math.round(f2 * getHeight());
        if (round != 0) {
        }
        return round;
    }

    private final NestedScrollingChildHelper ar() {
        if (this.aq == null) {
            this.aq = new NestedScrollingChildHelper(this);
        }
        return this.aq;
    }

    private final void as() {
        aA();
        aa(0);
    }

    private final void at() {
        ViewHolderAttachState szVar;
        View j;
        this.H.b(1);
        F(this.H);
        this.H.i = false;
        ac();
        this.g.f();
        M();
        ax();
        RecyclerViewViewHolder rrVar = null;
        View focusedChild = (this.an && hasFocus() && this.k != null) ? getFocusedChild() : null;
        if (focusedChild != null && (j = j(focusedChild)) != null) {
            rrVar = g(j);
        }
        if (rrVar == null) {
            az();
        } else {
            this.H.m = this.k.hasStableIds() ? rrVar.getItemId() : -1L;
            this.H.l = this.v ? -1 : rrVar.isRemoved() ? rrVar.mOldPosition : rrVar.getAbsoluteAdapterPosition();
            RecyclerViewState roVar = this.H;
            View view = rrVar.itemView;
            int id = view.getId();
            while (!view.isFocused() && (view instanceof ViewGroup) && view.hasFocus()) {
                view = ((ViewGroup) view).getFocusedChild();
                if (view.getId() != -1) {
                    id = view.getId();
                }
            }
            roVar.n = id;
        }
        RecyclerViewState roVar2 = this.H;
        roVar2.h = roVar2.j && this.J;
        this.J = false;
        this.I = false;
        roVar2.g = roVar2.k;
        roVar2.e = this.k.getItemCount();
        av(this.ap);
        if (this.H.j) {
            int a2 = this.f.a();
            for (int i = 0; i < a2; i++) {
                RecyclerViewViewHolder h = h(this.f.e(i));
                if (!h.shouldIgnore() && (!h.isInvalid() || this.k.hasStableIds())) {
                    DefaultItemAnimator.d(h);
                    h.getUnmodifiedPayloads();
                    this.g.e(h, DefaultItemAnimator.e(h));
                    if (this.H.h && h.isUpdated() && !h.isRemoved() && !h.shouldIgnore() && !h.isInvalid()) {
                        this.g.c(c(h), h);
                    }
                }
            }
        }
        if (this.H.k) {
            int c = this.f.c();
            for (int i2 = 0; i2 < c; i2++) {
                RecyclerViewViewHolder h2 = h(this.f.f(i2));
                if (!h2.shouldIgnore()) {
                    h2.saveOldPosition();
                }
            }
            RecyclerViewState roVar3 = this.H;
            boolean z = roVar3.f;
            roVar3.f = false;
            this.l.n(this.c, roVar3);
            this.H.f = z;
            for (int i3 = 0; i3 < this.f.a(); i3++) {
                RecyclerViewViewHolder h3 = h(this.f.e(i3));
                if (!h3.shouldIgnore() && ((szVar = (ViewHolderAttachState) this.g.a.get(h3)) == null || (szVar.a & 4) == 0)) {
                    DefaultItemAnimator.d(h3);
                    boolean hasAnyOfTheFlags = h3.hasAnyOfTheFlags(8192);
                    h3.getUnmodifiedPayloads();
                    ItemViewTypeHolder e = DefaultItemAnimator.e(h3);
                    if (hasAnyOfTheFlags) {
                        R(h3, e);
                    } else {
                        AccessibilityEventFlagHelper taVar = this.g;
                        ViewHolderAttachState szVar2 = (ViewHolderAttachState) taVar.a.get(h3);
                        if (szVar2 == null) {
                            szVar2 = sz.a();
                            taVar.a.put(h3, szVar2);
                        }
                        szVar2.a |= 2;
                        szVar2.b = e;
                    }
                }
            }
            t();
        } else {
            t();
        }
        N();
        ad(false);
        this.H.d = 2;
    }

    private final void au() {
        ac();
        M();
        this.H.b(6);
        this.e.e();
        this.H.e = this.k.getItemCount();
        this.H.c = 0;
        if (this.d != null && this.k.canRestoreState()) {
            Parcelable parcelable = this.d.a;
            if (parcelable != null) {
                this.l.S(parcelable);
            }
            this.d = null;
        }
        RecyclerViewState roVar = this.H;
        roVar.g = false;
        this.l.n(this.c, roVar);
        RecyclerViewState roVar2 = this.H;
        roVar2.f = false;
        roVar2.j = roVar2.j && this.B != null;
        roVar2.d = 4;
        N();
        ad(false);
    }

    private final void av(int[] iArr) {
        int a2 = this.f.a();
        if (a2 == 0) {
            iArr[0] = -1;
            iArr[1] = -1;
            return;
        }
        int i = Preference.DEFAULT_ORDER;
        int i2 = Integer.MIN_VALUE;
        for (int i3 = 0; i3 < a2; i3++) {
            RecyclerViewViewHolder h = h(this.f.e(i3));
            if (!h.shouldIgnore()) {
                int layoutPosition = h.getLayoutPosition();
                if (layoutPosition < i) {
                    i = layoutPosition;
                }
                if (layoutPosition > i2) {
                    i2 = layoutPosition;
                }
            }
        }
        iArr[0] = i;
        iArr[1] = i2;
    }

    private final void aw(MotionEvent motionEvent) {
        int actionIndex = motionEvent.getActionIndex();
        if (motionEvent.getPointerId(actionIndex) == this.ad) {
            int i = actionIndex == 0 ? 1 : 0;
            this.ad = motionEvent.getPointerId(i);
            int x = (int) (motionEvent.getX(i) + 0.5f);
            this.ah = x;
            this.af = x;
            int y = (int) (motionEvent.getY(i) + 0.5f);
            this.ai = y;
            this.ag = y;
        }
    }

    private final void ax() {
        boolean z;
        boolean z2;
        if (this.v) {
            this.e.j();
            if (this.w) {
                this.l.w();
            }
        }
        if (aD()) {
            this.e.g();
        } else {
            this.e.e();
        }
        boolean z3 = !this.I ? this.J : true;
        RecyclerViewState roVar = this.H;
        if (this.r && this.B != null && ((z2 = this.v) || z3 || this.l.v)) {
            if (!z2) {
                z = true;
            } else if (this.k.hasStableIds()) {
                z = true;
            }
            roVar.j = z;
            RecyclerViewState roVar2 = this.H;
            roVar2.k = !roVar2.j && z3 && !this.v && aD();
        }
        z = false;
        roVar.j = z;
        RecyclerViewState roVar22 = this.H;
        roVar22.k = !roVar22.j && z3 && !this.v && aD();
    }

    private final void ay(View view, View view2) {
        View view3 = view2 != null ? view2 : view;
        this.i.set(0, 0, view3.getWidth(), view3.getHeight());
        ViewGroup.LayoutParams layoutParams = view3.getLayoutParams();
        if (layoutParams instanceof RecyclerViewLayoutParams) {
            RecyclerViewLayoutParams rbVar = (RecyclerViewLayoutParams) layoutParams;
            if (!rbVar.e) {
                Rect rect = rbVar.d;
                this.i.left -= rect.left;
                this.i.right += rect.right;
                this.i.top -= rect.top;
                this.i.bottom += rect.bottom;
            }
        }
        if (view2 != null) {
            offsetDescendantRectToMyCoords(view2, this.i);
            offsetRectIntoDescendantCoords(view, this.i);
        } else {
            view2 = null;
        }
        this.l.aX(this, view, this.i, !this.r, view2 == null);
    }

    private final void az() {
        RecyclerViewState roVar = this.H;
        roVar.m = -1L;
        roVar.l = -1;
        roVar.n = -1;
    }

    public static RecyclerViewViewHolder h(View view) {
        if (view == null) {
            return null;
        }
        return ((RecyclerViewLayoutParams) view.getLayoutParams()).c;
    }

    public static RecyclerView i(View view) {
        if (!(view instanceof ViewGroup)) {
            return null;
        }
        if (view instanceof RecyclerView) {
            return (RecyclerView) view;
        }
        ViewGroup viewGroup = (ViewGroup) view;
        int childCount = viewGroup.getChildCount();
        for (int i = 0; i < childCount; i++) {
            RecyclerView i2 = i(viewGroup.getChildAt(i));
            if (i2 != null) {
                return i2;
            }
        }
        return null;
    }

    public static void s(RecyclerViewViewHolder rrVar) {
        WeakReference weakReference = rrVar.mNestedRecyclerView;
        if (weakReference != null) {
            View view = (View) weakReference.get();
            while (view != null) {
                if (view == rrVar.itemView) {
                    return;
                }
                Object parent = view.getParent();
                view = parent instanceof View ? (View) parent : null;
            }
            rrVar.mNestedRecyclerView = null;
        }
    }

    public final void A(int i, int i2) {
        this.ab++;
        int scrollX = getScrollX();
        int scrollY = getScrollY();
        onScrollChanged(scrollX, scrollY, scrollX - i, scrollY - i2);
        List list = this.ao;
        if (list != null) {
            for (int size = list.size() - 1; size >= 0; size--) {
                ((SqliteContentValuesHelper) this.ao.get(size)).a(this, i, i2);
            }
        }
        this.ab--;
    }

    public final void B() {
        if (this.A != null) {
            return;
        }
        EdgeEffect c = this.ay.c(this);
        this.A = c;
        if (this.h) {
            c.setSize((getMeasuredWidth() - getPaddingLeft()) - getPaddingRight(), (getMeasuredHeight() - getPaddingTop()) - getPaddingBottom());
        } else {
            c.setSize(getMeasuredWidth(), getMeasuredHeight());
        }
    }

    public final void C() {
        if (this.x != null) {
            return;
        }
        EdgeEffect c = this.ay.c(this);
        this.x = c;
        if (this.h) {
            c.setSize((getMeasuredHeight() - getPaddingTop()) - getPaddingBottom(), (getMeasuredWidth() - getPaddingLeft()) - getPaddingRight());
        } else {
            c.setSize(getMeasuredHeight(), getMeasuredWidth());
        }
    }

    public final void D() {
        if (this.z != null) {
            return;
        }
        EdgeEffect c = this.ay.c(this);
        this.z = c;
        if (this.h) {
            c.setSize((getMeasuredHeight() - getPaddingTop()) - getPaddingBottom(), (getMeasuredWidth() - getPaddingLeft()) - getPaddingRight());
        } else {
            c.setSize(getMeasuredHeight(), getMeasuredWidth());
        }
    }

    public final void E() {
        if (this.y != null) {
            return;
        }
        EdgeEffect c = this.ay.c(this);
        this.y = c;
        if (this.h) {
            c.setSize((getMeasuredWidth() - getPaddingLeft()) - getPaddingRight(), (getMeasuredHeight() - getPaddingTop()) - getPaddingBottom());
        } else {
            c.setSize(getMeasuredWidth(), getMeasuredHeight());
        }
    }

    final void F(RecyclerViewState roVar) {
        if (this.ac != 2) {
            roVar.o = 0;
            roVar.p = 0;
        } else {
            OverScroller overScroller = this.E.c;
            roVar.o = overScroller.getFinalX() - overScroller.getCurrX();
            roVar.p = overScroller.getFinalY() - overScroller.getCurrY();
        }
    }

    final void H() {
        this.A = null;
        this.y = null;
        this.z = null;
        this.x = null;
    }

    public void I() {
        if (this.n.size() == 0) {
            return;
        }
        RecyclerViewLayoutManager raVar = this.l;
        if (raVar != null) {
            raVar.O("Cannot invalidate item decorations during a scroll or layout");
        }
        K();
        requestLayout();
    }

    public final void J(int i) {
        if (this.l == null) {
            return;
        }
        aa(2);
        this.l.T(i);
        awakenScrollBars();
    }

    final void K() {
        int c = this.f.c();
        for (int i = 0; i < c; i++) {
            ((RecyclerViewLayoutParams) this.f.f(i).getLayoutParams()).e = true;
        }
        RecyclerViewRecycler rhVar = this.c;
        int size = rhVar.c.size();
        for (int i2 = 0; i2 < size; i2++) {
            RecyclerViewLayoutParams rbVar = (RecyclerViewLayoutParams) ((RecyclerViewViewHolder) rhVar.c.get(i2)).itemView.getLayoutParams();
            if (rbVar != null) {
                rbVar.e = true;
            }
        }
    }

    public final void L(int i, int i2, boolean z) {
        int i3 = i + i2;
        int c = this.f.c();
        for (int i4 = 0; i4 < c; i4++) {
            RecyclerViewViewHolder h = h(this.f.f(i4));
            if (h != null && !h.shouldIgnore()) {
                int i5 = h.mPosition;
                if (i5 >= i3) {
                    h.offsetPosition(-i2, z);
                    this.H.f = true;
                } else if (i5 >= i) {
                    h.flagRemovedAndOffsetPosition(i - 1, -i2, z);
                    this.H.f = true;
                }
            }
        }
        RecyclerViewRecycler rhVar = this.c;
        for (int size = rhVar.c.size() - 1; size >= 0; size--) {
            RecyclerViewViewHolder rrVar = (RecyclerViewViewHolder) rhVar.c.get(size);
            if (rrVar != null) {
                int i6 = rrVar.mPosition;
                if (i6 >= i3) {
                    rrVar.offsetPosition(-i2, z);
                } else if (i6 >= i) {
                    rrVar.addFlags(8);
                    rhVar.h(size);
                }
            }
        }
        requestLayout();
    }

    public final void M() {
        this.aa++;
    }

    final void N() {
        O(true);
    }

    public final void O(boolean z) {
        int i;
        int i2 = this.aa - 1;
        this.aa = i2;
        if (i2 <= 0) {
            this.aa = 0;
            if (z) {
                int i3 = this.V;
                this.V = 0;
                if (i3 != 0 && aj()) {
                    AccessibilityEvent obtain = AccessibilityEvent.obtain();
                    obtain.setEventType(2048);
                    obtain.setContentChangeTypes(i3);
                    sendAccessibilityEventUnchecked(obtain);
                }
                for (int size = this.N.size() - 1; size >= 0; size--) {
                    RecyclerViewViewHolder rrVar = (RecyclerViewViewHolder) this.N.get(size);
                    if (rrVar.itemView.getParent() == this && !rrVar.shouldIgnore() && (i = rrVar.mPendingAccessibilityState) != -1) {
                        ViewCompatAccessibilityStatics.z(rrVar.itemView, i);
                        rrVar.mPendingAccessibilityState = -1;
                    }
                }
                this.N.clear();
            }
        }
    }

    public final void P() {
        if (this.K || !this.q) {
            return;
        }
        ViewCompatAccessibilityStatics.r(this, this.at);
        this.K = true;
    }

    public final void Q(boolean z) {
        this.w = z | this.w;
        this.v = true;
        int c = this.f.c();
        for (int i = 0; i < c; i++) {
            RecyclerViewViewHolder h = h(this.f.f(i));
            if (h != null && !h.shouldIgnore()) {
                h.addFlags(6);
            }
        }
        K();
        RecyclerViewRecycler rhVar = this.c;
        int size = rhVar.c.size();
        for (int i2 = 0; i2 < size; i2++) {
            RecyclerViewViewHolder rrVar = (RecyclerViewViewHolder) rhVar.c.get(i2);
            if (rrVar != null) {
                rrVar.addFlags(6);
                rrVar.addChangePayload(null);
            }
        }
        RecyclerViewAdapter qqVar = rhVar.g.k;
        if (qqVar == null || !qqVar.hasStableIds()) {
            rhVar.g();
        }
    }

    public final void R(RecyclerViewViewHolder rrVar, ItemViewTypeHolder quVar) {
        rrVar.setFlags(0, 8192);
        if (this.H.h && rrVar.isUpdated() && !rrVar.isRemoved() && !rrVar.shouldIgnore()) {
            this.g.c(c(rrVar), rrVar);
        }
        this.g.e(rrVar, quVar);
    }

    public final void S() {
        DefaultItemAnimator qvVar = this.B;
        if (qvVar != null) {
            qvVar.i();
        }
        RecyclerViewLayoutManager raVar = this.l;
        if (raVar != null) {
            raVar.aJ(this.c);
            this.l.aK(this.c);
        }
        this.c.e();
    }

    public final void T(ItemTouchHelperCallbackBase qxVar) {
        RecyclerViewLayoutManager raVar = this.l;
        if (raVar != null) {
            raVar.O("Cannot remove item decoration during a scroll  or layout");
        }
        this.n.remove(qxVar);
        if (this.n.isEmpty()) {
            setWillNotDraw(getOverScrollMode() == 2);
        }
        K();
        requestLayout();
    }

    public final void U(SqliteContentValuesHelper reVar) {
        List list = this.ao;
        if (list != null) {
            list.remove(reVar);
        }
    }

    public final void V(int i, int i2, int[] iArr) {
        RecyclerViewViewHolder rrVar;
        ac();
        M();
        TraceCompatHelper.a("RV Scroll");
        F(this.H);
        int d = i != 0 ? this.l.d(i, this.c, this.H) : 0;
        int e = i2 != 0 ? this.l.e(i2, this.c, this.H) : 0;
        TraceCompatHelper.b();
        int a2 = this.f.a();
        for (int i3 = 0; i3 < a2; i3++) {
            View e2 = this.f.e(i3);
            RecyclerViewViewHolder g = g(e2);
            if (g != null && (rrVar = g.mShadowingHolder) != null) {
                View view = rrVar.itemView;
                int left = e2.getLeft();
                int top = e2.getTop();
                if (left != view.getLeft() || top != view.getTop()) {
                    view.layout(left, top, view.getWidth() + left, view.getHeight() + top);
                }
            }
        }
        N();
        ad(false);
        if (iArr != null) {
            iArr[0] = d;
            iArr[1] = e;
        }
    }

    public void W(int i) {
        if (this.t) {
            return;
        }
        af();
        RecyclerViewLayoutManager raVar = this.l;
        if (raVar == null) {
            Log.e("RecyclerView", "Cannot scroll to position a LayoutManager set. Call setLayoutManager with a non-null argument.");
        } else {
            raVar.T(i);
            awakenScrollBars();
        }
    }

    public final void X(NestedScrollingChildHelperWrapper rtVar) {
        this.L = rtVar;
        ViewCompatAccessibilityStatics.u(this, rtVar);
    }

    public void Y(RecyclerViewAdapter qqVar) {
        suppressLayout(false);
        RecyclerViewAdapter qqVar2 = this.k;
        if (qqVar2 != null) {
            qqVar2.unregisterAdapterDataObserver(this.R);
            this.k.onDetachedFromRecyclerView(this);
        }
        S();
        this.e.j();
        RecyclerViewAdapter qqVar3 = this.k;
        this.k = qqVar;
        if (qqVar != null) {
            qqVar.registerAdapterDataObserver(this.R);
            qqVar.onAttachedToRecyclerView(this);
        }
        RecyclerViewLayoutManager raVar = this.l;
        if (raVar != null) {
            raVar.bk();
        }
        RecyclerViewRecycler rhVar = this.c;
        RecyclerViewAdapter qqVar4 = this.k;
        rhVar.e();
        ConstraintSparseArrayMap b2 = rhVar.b();
        if (qqVar3 != null) {
            b2.b--;
        }
        if (b2.b == 0) {
            for (int i = 0; i < b2.a.size(); i++) {
                ((ConstraintAnchorList) b2.a.valueAt(i)).a.clear();
            }
        }
        if (qqVar4 != null) {
            b2.b++;
        }
        this.H.f = true;
        Q(false);
        requestLayout();
    }

    public final void Z(RecyclerViewLayoutManager raVar) {
        if (raVar == this.l) {
            return;
        }
        af();
        if (this.l != null) {
            DefaultItemAnimator qvVar = this.B;
            if (qvVar != null) {
                qvVar.i();
            }
            this.l.aJ(this.c);
            this.l.aK(this.c);
            this.c.e();
            if (this.q) {
                this.l.bn(this);
            }
            this.l.aT(null);
            this.l = null;
        } else {
            this.c.e();
        }
        RecyclerViewChildHelper orVar = this.f;
        orVar.a.d();
        for (int size = orVar.b.size() - 1; size >= 0; size--) {
            orVar.c.j((View) orVar.b.get(size));
            orVar.b.remove(size);
        }
        ItemAnimatorListenerAdapter qwVar = orVar.c;
        int g = qwVar.g();
        for (int i = 0; i < g; i++) {
            View i2 = qwVar.i(i);
            qwVar.a.x(i2);
            i2.clearAnimation();
        }
        qwVar.a.removeAllViews();
        this.l = raVar;
        if (raVar != null) {
            if (raVar.r != null) {
                throw new IllegalArgumentException("LayoutManager " + raVar + " is already attached to a RecyclerView:" + raVar.r.k());
            }
            this.l.aT(this);
            if (this.q) {
                this.l.aZ();
            }
        }
        this.c.m();
        requestLayout();
    }

    public final int a(RecyclerViewViewHolder rrVar) {
        if (rrVar.hasAnyOfTheFlags(524) || !rrVar.isBound()) {
            return -1;
        }
        RecyclerViewAdapterHelper nfVar = this.e;
        int i = rrVar.mPosition;
        int size = nfVar.a.size();
        for (int i2 = 0; i2 < size; i2++) {
            RecyclerViewUpdateOp neVar = (RecyclerViewUpdateOp) nfVar.a.get(i2);
            switch (neVar.a) {
                case 1:
                    if (neVar.b <= i) {
                        i += neVar.d;
                        break;
                    } else {
                        break;
                    }
                case 2:
                    int i3 = neVar.b;
                    if (i3 <= i) {
                        int i4 = neVar.d;
                        if (i3 + i4 > i) {
                            return -1;
                        }
                        i -= i4;
                        break;
                    } else {
                        continue;
                    }
                case 8:
                    int i5 = neVar.b;
                    if (i5 == i) {
                        i = neVar.d;
                        break;
                    } else {
                        if (i5 < i) {
                            i--;
                        }
                        if (neVar.d <= i) {
                            i++;
                            break;
                        } else {
                            break;
                        }
                    }
            }
        }
        return i;
    }

    public final void aa(int i) {
        if (i == this.ac) {
            return;
        }
        this.ac = i;
        if (i != 2) {
            aB();
        }
        RecyclerViewLayoutManager raVar = this.l;
        if (raVar != null) {
            raVar.aI(i);
        }
        List list = this.ao;
        if (list != null) {
            for (int size = list.size() - 1; size >= 0; size--) {
                ((SqliteContentValuesHelper) this.ao.get(size)).b(i);
            }
        }
    }

    public final void ab(int i, int i2) {
        an(i, i2, false);
    }

    public final void ac() {
        int i = this.T + 1;
        this.T = i;
        if (i != 1 || this.t) {
            return;
        }
        this.s = false;
    }

    public final void ad(boolean z) {
        int i = this.T;
        if (i <= 0) {
            this.T = 1;
            i = 1;
        }
        if (!z && !this.t) {
            this.s = false;
        }
        if (i == 1) {
            if (z && this.s && !this.t && this.l != null && this.k != null) {
                y();
            }
            if (!this.t) {
                this.s = false;
            }
        }
        this.T--;
    }

    public final void ae(int i) {
        ar().b(i);
    }

    public final void af() {
        aa(0);
        aB();
    }

    public final boolean ah(int i, int i2, int[] iArr, int[] iArr2, int i3) {
        return ar().e(i, i2, iArr, iArr2, i3);
    }

    public final boolean ai() {
        return !this.r || this.v || this.e.l();
    }

    public final boolean aj() {
        AccessibilityManager accessibilityManager = this.W;
        return accessibilityManager != null && accessibilityManager.isEnabled();
    }

    public final boolean ak() {
        return this.aa > 0;
    }

    /* JADX WARN: Code restructure failed: missing block: B:30:0x0112, code lost:
    
        if (r2 == 0.0f) goto L40;
     */
    /* JADX WARN: Removed duplicated region for block: B:42:0x012d  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    final boolean al(int i, int i2, MotionEvent motionEvent, int i3) {
        int i4;
        int i5;
        int i6;
        int i7;
        boolean z;
        v();
        if (this.k != null) {
            int[] iArr = this.M;
            iArr[0] = 0;
            iArr[1] = 0;
            V(i, i2, iArr);
            int[] iArr2 = this.M;
            int i8 = iArr2[0];
            int i9 = iArr2[1];
            i4 = i9;
            i5 = i8;
            i6 = i - i8;
            i7 = i2 - i9;
        } else {
            i4 = 0;
            i5 = 0;
            i6 = 0;
            i7 = 0;
        }
        if (!this.n.isEmpty()) {
            invalidate();
        }
        int[] iArr3 = this.M;
        iArr3[0] = 0;
        iArr3[1] = 0;
        z(i5, i4, i6, i7, this.ar, i3, iArr3);
        int[] iArr4 = this.M;
        int i10 = iArr4[0];
        int i11 = i6 - i10;
        int i12 = iArr4[1];
        int i13 = i7 - i12;
        boolean z2 = i10 == 0 ? i12 != 0 : true;
        int i14 = this.ah;
        int[] iArr5 = this.ar;
        int i15 = iArr5[0];
        this.ah = i14 - i15;
        this.ai -= iArr5[1];
        int[] iArr6 = this.as;
        iArr6[0] = iArr6[0] + i15;
        iArr6[1] = iArr6[1] + iArr5[1];
        if (getOverScrollMode() != 2) {
            if (motionEvent != null && (motionEvent.getSource() & 8194) != 8194) {
                float x = motionEvent.getX();
                float f = i11;
                float y = motionEvent.getY();
                float f2 = i13;
                if (f < 0.0f) {
                    C();
                    OverflowCheckedLongArrayUtil.l(this.x, (-f) / getWidth(), 1.0f - (y / getHeight()));
                    z = true;
                } else if (f > 0.0f) {
                    D();
                    OverflowCheckedLongArrayUtil.l(this.z, f / getWidth(), y / getHeight());
                    z = true;
                } else {
                    z = false;
                }
                if (f2 < 0.0f) {
                    E();
                    OverflowCheckedLongArrayUtil.l(this.y, (-f2) / getHeight(), x / getWidth());
                } else if (f2 > 0.0f) {
                    B();
                    OverflowCheckedLongArrayUtil.l(this.A, f2 / getHeight(), 1.0f - (x / getWidth()));
                } else if (!z) {
                    if (f == 0.0f) {
                    }
                }
                ViewCompatAccessibilityStatics.q(this);
            }
            u(i, i2);
        }
        if (i5 == 0) {
            if (i4 == 0) {
                i4 = 0;
                i5 = 0;
                if (!awakenScrollBars()) {
                    invalidate();
                }
                return !z2 ? true : true;
            }
            i5 = 0;
        }
        A(i5, i4);
        if (!awakenScrollBars()) {
        }
        return !z2 ? true : true;
    }

    public final void am(RecyclerViewViewHolder rrVar, int i) {
        if (!ak()) {
            ViewCompatAccessibilityStatics.z(rrVar.itemView, i);
        } else {
            rrVar.mPendingAccessibilityState = i;
            this.N.add(rrVar);
        }
    }

    public final void an(int i, int i2, boolean z) {
        RecyclerViewLayoutManager raVar = this.l;
        if (raVar == null) {
            Log.e("RecyclerView", "Cannot smooth scroll without a LayoutManager set. Call setLayoutManager with a non-null argument.");
            return;
        }
        if (this.t) {
            return;
        }
        if (true != raVar.W()) {
            i = 0;
        }
        if (true != this.l.X()) {
            i2 = 0;
        }
        if (i == 0) {
            if (i2 == 0) {
                return;
            } else {
                i = 0;
            }
        }
        if (z) {
            int i3 = i != 0 ? 1 : 0;
            if (i2 != 0) {
                i3 |= 2;
            }
            ao(i3, 1);
        }
        this.E.b(i, i2, Integer.MIN_VALUE, null);
    }

    public final void ao(int i, int i2) {
        ar().i(i, i2);
    }

    public final int b(View view) {
        RecyclerViewViewHolder h = h(view);
        if (h != null) {
            return h.getAbsoluteAdapterPosition();
        }
        return -1;
    }

    final long c(RecyclerViewViewHolder rrVar) {
        return this.k.hasStableIds() ? rrVar.getItemId() : rrVar.mPosition;
    }

    @Override // android.view.ViewGroup
    public final boolean checkLayoutParams(ViewGroup.LayoutParams layoutParams) {
        return (layoutParams instanceof RecyclerViewLayoutParams) && this.l.s((RecyclerViewLayoutParams) layoutParams);
    }

    @Override // android.view.View
    public final int computeHorizontalScrollExtent() {
        RecyclerViewLayoutManager raVar = this.l;
        if (raVar != null && raVar.W()) {
            return this.l.A(this.H);
        }
        return 0;
    }

    @Override // android.view.View
    public final int computeHorizontalScrollOffset() {
        RecyclerViewLayoutManager raVar = this.l;
        if (raVar != null && raVar.W()) {
            return this.l.B(this.H);
        }
        return 0;
    }

    @Override // android.view.View
    public final int computeHorizontalScrollRange() {
        RecyclerViewLayoutManager raVar = this.l;
        if (raVar != null && raVar.W()) {
            return this.l.C(this.H);
        }
        return 0;
    }

    @Override // android.view.View
    public final int computeVerticalScrollExtent() {
        RecyclerViewLayoutManager raVar = this.l;
        if (raVar != null && raVar.X()) {
            return this.l.D(this.H);
        }
        return 0;
    }

    @Override // android.view.View
    public final int computeVerticalScrollOffset() {
        RecyclerViewLayoutManager raVar = this.l;
        if (raVar != null && raVar.X()) {
            return this.l.E(this.H);
        }
        return 0;
    }

    @Override // android.view.View
    public final int computeVerticalScrollRange() {
        RecyclerViewLayoutManager raVar = this.l;
        if (raVar != null && raVar.X()) {
            return this.l.F(this.H);
        }
        return 0;
    }

    public final Rect d(View view) {
        RecyclerViewLayoutParams rbVar = (RecyclerViewLayoutParams) view.getLayoutParams();
        if (!rbVar.e) {
            return rbVar.d;
        }
        if (this.H.g && (rbVar.b() || rbVar.c.isInvalid())) {
            return rbVar.d;
        }
        Rect rect = rbVar.d;
        rect.set(0, 0, 0, 0);
        int size = this.n.size();
        for (int i = 0; i < size; i++) {
            this.i.set(0, 0, 0, 0);
            ((ItemTouchHelperCallbackBase) this.n.get(i)).j(this.i, view, this, this.H);
            rect.left += this.i.left;
            rect.top += this.i.top;
            rect.right += this.i.right;
            rect.bottom += this.i.bottom;
        }
        rbVar.e = false;
        return rect;
    }

    @Override // android.view.View
    public final boolean dispatchNestedFling(float f, float f2, boolean z) {
        return ar().c(f, f2, z);
    }

    @Override // android.view.View
    public final boolean dispatchNestedPreFling(float f, float f2) {
        return ar().d(f, f2);
    }

    @Override // android.view.View
    public final boolean dispatchNestedPreScroll(int i, int i2, int[] iArr, int[] iArr2) {
        return ar().e(i, i2, iArr, iArr2, 0);
    }

    @Override // android.view.View
    public final boolean dispatchNestedScroll(int i, int i2, int i3, int i4, int[] iArr) {
        return ar().f(i, i2, i3, i4, iArr);
    }

    @Override // android.view.View
    public final boolean dispatchPopulateAccessibilityEvent(AccessibilityEvent accessibilityEvent) {
        onPopulateAccessibilityEvent(accessibilityEvent);
        return true;
    }

    @Override // android.view.ViewGroup, android.view.View
    protected final void dispatchRestoreInstanceState(SparseArray sparseArray) {
        dispatchThawSelfOnly(sparseArray);
    }

    @Override // android.view.ViewGroup, android.view.View
    protected final void dispatchSaveInstanceState(SparseArray sparseArray) {
        dispatchFreezeSelfOnly(sparseArray);
    }

    @Override // android.view.View
    public final void draw(Canvas canvas) {
        boolean z;
        super.draw(canvas);
        int size = this.n.size();
        boolean z2 = false;
        for (int i = 0; i < size; i++) {
            ((ItemTouchHelperCallbackBase) this.n.get(i)).f(canvas, this);
        }
        EdgeEffect edgeEffect = this.x;
        if (edgeEffect == null || edgeEffect.isFinished()) {
            z = false;
        } else {
            int save = canvas.save();
            int paddingBottom = this.h ? getPaddingBottom() : 0;
            canvas.rotate(270.0f);
            canvas.translate((-getHeight()) + paddingBottom, 0.0f);
            EdgeEffect edgeEffect2 = this.x;
            z = edgeEffect2 != null && edgeEffect2.draw(canvas);
            canvas.restoreToCount(save);
        }
        EdgeEffect edgeEffect3 = this.y;
        if (edgeEffect3 != null && !edgeEffect3.isFinished()) {
            int save2 = canvas.save();
            if (this.h) {
                canvas.translate(getPaddingLeft(), getPaddingTop());
            }
            EdgeEffect edgeEffect4 = this.y;
            z |= edgeEffect4 != null && edgeEffect4.draw(canvas);
            canvas.restoreToCount(save2);
        }
        EdgeEffect edgeEffect5 = this.z;
        if (edgeEffect5 != null && !edgeEffect5.isFinished()) {
            int save3 = canvas.save();
            int width = getWidth();
            int paddingTop = this.h ? getPaddingTop() : 0;
            canvas.rotate(90.0f);
            canvas.translate(paddingTop, -width);
            EdgeEffect edgeEffect6 = this.z;
            z |= edgeEffect6 != null && edgeEffect6.draw(canvas);
            canvas.restoreToCount(save3);
        }
        EdgeEffect edgeEffect7 = this.A;
        if (edgeEffect7 != null && !edgeEffect7.isFinished()) {
            int save4 = canvas.save();
            canvas.rotate(180.0f);
            if (this.h) {
                canvas.translate((-getWidth()) + getPaddingRight(), (-getHeight()) + getPaddingBottom());
            } else {
                canvas.translate(-getWidth(), -getHeight());
            }
            EdgeEffect edgeEffect8 = this.A;
            if (edgeEffect8 != null && edgeEffect8.draw(canvas)) {
                z2 = true;
            }
            z |= z2;
            canvas.restoreToCount(save4);
        }
        if (z || (this.B != null && this.n.size() > 0 && this.B.l())) {
            ViewCompatAccessibilityStatics.q(this);
        }
    }

    @Override // android.view.ViewGroup
    public final boolean drawChild(Canvas canvas, View view, long j) {
        return super.drawChild(canvas, view, j);
    }

    public RecyclerViewAdapter e() {
        return this.k;
    }

    public final RecyclerViewViewHolder f(int i) {
        RecyclerViewViewHolder rrVar = null;
        if (this.v) {
            return null;
        }
        int c = this.f.c();
        for (int i2 = 0; i2 < c; i2++) {
            RecyclerViewViewHolder h = h(this.f.f(i2));
            if (h != null && !h.isRemoved() && a(h) == i) {
                if (!this.f.k(h.itemView)) {
                    return h;
                }
                rrVar = h;
            }
        }
        return rrVar;
    }

    /* JADX WARN: Code restructure failed: missing block: B:110:0x005f, code lost:
    
        if (r3.findNextFocus(r8, r9, true != ((r8.l.an() == 1) ^ (r10 == 2)) ? 17 : 66) == null) goto L41;
     */
    /* JADX WARN: Code restructure failed: missing block: B:21:0x0039, code lost:
    
        if (r3.findNextFocus(r8, r9, r10 == 2 ? 130 : 33) != null) goto L26;
     */
    /* JADX WARN: Code restructure failed: missing block: B:22:0x0061, code lost:
    
        v();
     */
    /* JADX WARN: Code restructure failed: missing block: B:23:0x0068, code lost:
    
        if (j(r9) != null) goto L44;
     */
    /* JADX WARN: Code restructure failed: missing block: B:24:0x006a, code lost:
    
        return null;
     */
    /* JADX WARN: Code restructure failed: missing block: B:26:0x006b, code lost:
    
        ac();
        r8.l.j(r9, r10, r8.c, r8.H);
        ad(false);
     */
    /* JADX WARN: Code restructure failed: missing block: B:69:0x01a6, code lost:
    
        if (r4 > 0) goto L131;
     */
    /* JADX WARN: Code restructure failed: missing block: B:70:0x01a9, code lost:
    
        if (r5 > 0) goto L131;
     */
    /* JADX WARN: Code restructure failed: missing block: B:71:0x01ac, code lost:
    
        if (r4 < 0) goto L131;
     */
    /* JADX WARN: Code restructure failed: missing block: B:72:0x01af, code lost:
    
        if (r5 < 0) goto L131;
     */
    /* JADX WARN: Code restructure failed: missing block: B:76:0x01b8, code lost:
    
        if ((r5 * r3) > 0) goto L129;
     */
    /* JADX WARN: Code restructure failed: missing block: B:78:0x01c5, code lost:
    
        if (r1 == false) goto L132;
     */
    /* JADX WARN: Code restructure failed: missing block: B:82:0x01c1, code lost:
    
        if ((r5 * r3) < 0) goto L129;
     */
    /* JADX WARN: Removed duplicated region for block: B:47:0x0101  */
    /* JADX WARN: Removed duplicated region for block: B:67:0x0188  */
    /* JADX WARN: Removed duplicated region for block: B:69:0x01a6  */
    /* JADX WARN: Removed duplicated region for block: B:70:0x01a9  */
    /* JADX WARN: Removed duplicated region for block: B:71:0x01ac  */
    /* JADX WARN: Removed duplicated region for block: B:72:0x01af  */
    /* JADX WARN: Removed duplicated region for block: B:73:0x01b2  */
    /* JADX WARN: Removed duplicated region for block: B:79:0x01bb  */
    /* JADX WARN: Removed duplicated region for block: B:94:0x0103  */
    @Override // android.view.ViewGroup, android.view.ViewParent
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final View focusSearch(View view, int i) {
        View view2;
        char c;
        boolean z = true;
        boolean z2 = this.k != null ? (this.l == null || ak() || this.t) ? false : true : false;
        FocusFinder focusFinder = FocusFinder.getInstance();
        if (z2) {
            if (i != 2) {
                if (i == 1) {
                    i = 1;
                }
            }
            if (this.l.X()) {
            }
            if (this.l.W()) {
            }
            view2 = focusFinder.findNextFocus(this, view, i);
            if (view2 == null && !view2.hasFocusable()) {
                if (getFocusedChild() == null) {
                    return super.focusSearch(view, i);
                }
                ay(view2, null);
                return view;
            }
            if (view2 != null && view2 != this && view2 != view && j(view2) != null) {
                if (view != null && j(view) != null) {
                    this.i.set(0, 0, view.getWidth(), view.getHeight());
                    this.S.set(0, 0, view2.getWidth(), view2.getHeight());
                    offsetDescendantRectToMyCoords(view, this.i);
                    offsetDescendantRectToMyCoords(view2, this.S);
                    c = 65535;
                    int i2 = this.l.an() != 1 ? -1 : 1;
                    int i3 = ((this.i.left >= this.S.left || this.i.right <= this.S.left) && this.i.right < this.S.right) ? 1 : ((this.i.right > this.S.right || this.i.left >= this.S.right) && this.i.left > this.S.left) ? -1 : 0;
                    if ((this.i.top >= this.S.top || this.i.bottom <= this.S.top) && this.i.bottom < this.S.bottom) {
                        c = 1;
                    } else if ((this.i.bottom <= this.S.bottom && this.i.top < this.S.bottom) || this.i.top <= this.S.top) {
                        c = 0;
                    }
                    switch (i) {
                        case 1:
                            if (c >= 0) {
                                if (c == 0) {
                                    break;
                                }
                                z = false;
                                break;
                            }
                            break;
                        case 2:
                            if (c <= 0) {
                                if (c == 0) {
                                    break;
                                }
                                z = false;
                                break;
                            }
                            break;
                        case 17:
                            break;
                        case 33:
                            break;
                        case 66:
                            break;
                        case 130:
                            break;
                        default:
                            throw new IllegalArgumentException("Invalid direction: " + i + k());
                    }
                }
                return view2;
            }
            return super.focusSearch(view, i);
        }
        View findNextFocus = focusFinder.findNextFocus(this, view, i);
        if (findNextFocus == null && z2) {
            v();
            if (j(view) == null) {
                return null;
            }
            ac();
            view2 = this.l.j(view, i, this.c, this.H);
            ad(false);
        } else {
            view2 = findNextFocus;
        }
        if (view2 == null) {
        }
        if (view2 != null) {
            if (view != null) {
                this.i.set(0, 0, view.getWidth(), view.getHeight());
                this.S.set(0, 0, view2.getWidth(), view2.getHeight());
                offsetDescendantRectToMyCoords(view, this.i);
                offsetDescendantRectToMyCoords(view2, this.S);
                c = 65535;
                if (this.l.an() != 1) {
                }
                if (this.i.left >= this.S.left) {
                }
                if (this.i.top >= this.S.top) {
                }
                c = 1;
                switch (i) {
                    case 1:
                        break;
                    case 2:
                        break;
                    case 17:
                        break;
                    case 33:
                        break;
                    case 66:
                        break;
                    case 130:
                        break;
                }
            }
            return view2;
        }
        return super.focusSearch(view, i);
    }

    public final RecyclerViewViewHolder g(View view) {
        ViewParent parent = view.getParent();
        if (parent == null || parent == this) {
            return h(view);
        }
        throw new IllegalArgumentException("View " + view + " is not a direct child of " + this);
    }

    @Override // android.view.ViewGroup
    public final ViewGroup.LayoutParams generateDefaultLayoutParams() {
        RecyclerViewLayoutManager raVar = this.l;
        if (raVar != null) {
            return raVar.f();
        }
        throw new IllegalStateException("RecyclerView has no LayoutManager".concat(k()));
    }

    @Override // android.view.ViewGroup
    public final ViewGroup.LayoutParams generateLayoutParams(AttributeSet attributeSet) {
        RecyclerViewLayoutManager raVar = this.l;
        if (raVar != null) {
            return raVar.h(getContext(), attributeSet);
        }
        throw new IllegalStateException("RecyclerView has no LayoutManager".concat(k()));
    }

    @Override // android.view.ViewGroup, android.view.View
    public final CharSequence getAccessibilityClassName() {
        return "android.support.v7.widget.RecyclerView";
    }

    @Override // android.view.View
    public final int getBaseline() {
        if (this.l != null) {
            return -1;
        }
        return super.getBaseline();
    }

    @Override // android.view.ViewGroup
    public final boolean getClipToPadding() {
        return this.h;
    }

    @Override // android.view.View
    public final boolean hasNestedScrollingParent() {
        return ar().h(0);
    }

    @Override // android.view.View
    public final boolean isAttachedToWindow() {
        return this.q;
    }

    @Override // android.view.ViewGroup
    public final boolean isLayoutSuppressed() {
        return this.t;
    }

    @Override // android.view.View
    public final boolean isNestedScrollingEnabled() {
        return ar().a;
    }

    /* JADX WARN: Code restructure failed: missing block: B:9:0x0016, code lost:
    
        return r3;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final View j(View view) {
        ViewParent parent = view.getParent();
        while (parent != null && parent != this && (parent instanceof View)) {
            view = parent;
            parent = view.getParent();
        }
        return null;
    }

    public final String k() {
        return " " + super.toString() + ", adapter:" + this.k + ", layout:" + this.l + ", context:" + getContext();
    }

    public final void o(RecyclerViewViewHolder rrVar) {
        View view = rrVar.itemView;
        ViewParent parent = view.getParent();
        this.c.l(g(view));
        if (rrVar.isTmpDetached()) {
            this.f.h(view, -1, view.getLayoutParams(), true);
            return;
        }
        if (parent != this) {
            this.f.g(view, -1, true);
            return;
        }
        RecyclerViewChildHelper orVar = this.f;
        int h = orVar.c.h(view);
        if (h >= 0) {
            orVar.a.e(h);
            orVar.j(view);
        } else {
            StringBuilder sb = new StringBuilder();
            sb.append("view is not a child, cannot hide ");
            sb.append(view);
            throw new IllegalArgumentException("view is not a child, cannot hide ".concat(String.valueOf(view)));
        }
    }

    @Override // android.view.ViewGroup, android.view.View
    protected final void onAttachedToWindow() {
        super.onAttachedToWindow();
        this.aa = 0;
        this.q = true;
        this.r = this.r && !isLayoutRequested();
        RecyclerViewLayoutManager raVar = this.l;
        if (raVar != null) {
            raVar.aZ();
        }
        this.K = false;
        RecyclerViewGapWorker ppVar = (RecyclerViewGapWorker) pp.a.get();
        this.F = ppVar;
        if (ppVar == null) {
            this.F = new RecyclerViewGapWorker();
            Display n = ViewCompatAccessibilityStatics.n(this);
            float f = 60.0f;
            if (!isInEditMode() && n != null) {
                float refreshRate = n.getRefreshRate();
                if (refreshRate >= 30.0f) {
                    f = refreshRate;
                }
            }
            this.F.e = (long) (1.0E9f / f);
            pp.a.set(this.F);
        }
        this.F.c.add(this);
    }

    @Override // android.view.ViewGroup, android.view.View
    protected final void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        DefaultItemAnimator qvVar = this.B;
        if (qvVar != null) {
            qvVar.i();
        }
        af();
        this.q = false;
        RecyclerViewLayoutManager raVar = this.l;
        if (raVar != null) {
            raVar.bn(this);
        }
        this.N.clear();
        removeCallbacks(this.at);
        while (sz.d.a() != null) {
        }
        RecyclerViewGapWorker ppVar = this.F;
        if (ppVar != null) {
            ppVar.c.remove(this);
            this.F = null;
        }
    }

    @Override // android.view.View
    public final void onDraw(Canvas canvas) {
        super.onDraw(canvas);
        int size = this.n.size();
        for (int i = 0; i < size; i++) {
            ((ItemTouchHelperCallbackBase) this.n.get(i)).k(canvas, this);
        }
    }

    @Override // android.view.View
    public final boolean onGenericMotionEvent(MotionEvent motionEvent) {
        float f;
        float f2;
        if (this.l != null && !this.t && motionEvent.getAction() == 8) {
            if ((motionEvent.getSource() & 2) != 0) {
                f = this.l.X() ? -motionEvent.getAxisValue(9) : 0.0f;
                f2 = this.l.W() ? motionEvent.getAxisValue(10) : 0.0f;
            } else {
                if ((motionEvent.getSource() & 4194304) != 0) {
                    f2 = motionEvent.getAxisValue(26);
                    if (this.l.X()) {
                        f = -f2;
                        f2 = 0.0f;
                    } else if (this.l.W()) {
                        f = 0.0f;
                    }
                }
                f = 0.0f;
                f2 = 0.0f;
            }
            if (f != 0.0f || f2 != 0.0f) {
                int i = (int) (f2 * this.al);
                int i2 = (int) (f * this.am);
                RecyclerViewLayoutManager raVar = this.l;
                if (raVar == null) {
                    Log.e("RecyclerView", "Cannot scroll without a LayoutManager set. Call setLayoutManager with a non-null argument.");
                } else if (!this.t) {
                    int[] iArr = this.M;
                    iArr[0] = 0;
                    iArr[1] = 0;
                    boolean W = raVar.W();
                    boolean X = this.l.X();
                    int i3 = W ? 1 : 0;
                    if (X) {
                        i3 |= 2;
                    }
                    float height = motionEvent == null ? getHeight() / 2.0f : motionEvent.getY();
                    float width = motionEvent == null ? getWidth() / 2.0f : motionEvent.getX();
                    int ap = i - ap(i, height);
                    int aq = i2 - aq(i2, width);
                    ao(i3, 1);
                    if (ah(true != W ? 0 : ap, true != X ? 0 : aq, this.M, this.ar, 1)) {
                        int[] iArr2 = this.M;
                        ap -= iArr2[0];
                        aq -= iArr2[1];
                    }
                    al(true != W ? 0 : ap, true != X ? 0 : aq, motionEvent, 1);
                    RecyclerViewGapWorker ppVar = this.F;
                    if (ppVar != null) {
                        if (ap == 0) {
                            if (aq != 0) {
                                ap = 0;
                            }
                        }
                        ppVar.a(this, ap, aq);
                    }
                    ae(1);
                }
            }
        }
        return false;
    }

    /* JADX WARN: Code restructure failed: missing block: B:36:0x00c1, code lost:
    
        if (r0 != false) goto L39;
     */
    /* JADX WARN: Code restructure failed: missing block: B:69:0x0170, code lost:
    
        if (r9.ac != 2) goto L69;
     */
    /* JADX WARN: Multi-variable type inference failed */
    @Override // android.view.ViewGroup
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final boolean onInterceptTouchEvent(MotionEvent motionEvent) {
        boolean z;
        boolean z2;
        if (this.t) {
            return false;
        }
        this.p = null;
        if (aC(motionEvent)) {
            as();
            return true;
        }
        RecyclerViewLayoutManager raVar = this.l;
        if (raVar == null) {
            return false;
        }
        boolean W = raVar.W();
        boolean X = this.l.X();
        if (this.ae == null) {
            this.ae = VelocityTracker.obtain();
        }
        this.ae.addMovement(motionEvent);
        int actionMasked = motionEvent.getActionMasked();
        int actionIndex = motionEvent.getActionIndex();
        switch (actionMasked) {
            case 0:
                if (this.U) {
                    this.U = false;
                }
                this.ad = motionEvent.getPointerId(0);
                int x = (int) (motionEvent.getX() + 0.5f);
                this.ah = x;
                this.af = x;
                int y = (int) (motionEvent.getY() + 0.5f);
                this.ai = y;
                this.ag = y;
                EdgeEffect edgeEffect = this.x;
                if (edgeEffect == null || OverflowCheckedLongArrayUtil.k(edgeEffect) == 0.0f) {
                    z = false;
                } else {
                    OverflowCheckedLongArrayUtil.l(this.x, 0.0f, 1.0f - (motionEvent.getY() / getHeight()));
                    z = true;
                }
                EdgeEffect edgeEffect2 = this.z;
                if (edgeEffect2 != null && OverflowCheckedLongArrayUtil.k(edgeEffect2) != 0.0f) {
                    OverflowCheckedLongArrayUtil.l(this.z, 0.0f, motionEvent.getY() / getHeight());
                    z = true;
                }
                EdgeEffect edgeEffect3 = this.y;
                if (edgeEffect3 != null && OverflowCheckedLongArrayUtil.k(edgeEffect3) != 0.0f) {
                    OverflowCheckedLongArrayUtil.l(this.y, 0.0f, motionEvent.getX() / getWidth());
                    z = true;
                }
                EdgeEffect edgeEffect4 = this.A;
                if (edgeEffect4 != null && OverflowCheckedLongArrayUtil.k(edgeEffect4) != 0.0f) {
                    OverflowCheckedLongArrayUtil.l(this.A, 0.0f, 1.0f - (motionEvent.getX() / getWidth()));
                } else if (!z) {
                    break;
                }
                getParent().requestDisallowInterceptTouchEvent(true);
                aa(1);
                ae(1);
                int[] iArr = this.as;
                iArr[1] = 0;
                iArr[0] = 0;
                int i = W;
                if (X) {
                    i = (W ? 1 : 0) | 2;
                }
                ao(i, 0);
                break;
            case 1:
                this.ae.clear();
                ae(0);
                break;
            case 2:
                int findPointerIndex = motionEvent.findPointerIndex(this.ad);
                if (findPointerIndex >= 0) {
                    int x2 = (int) (motionEvent.getX(findPointerIndex) + 0.5f);
                    int y2 = (int) (motionEvent.getY(findPointerIndex) + 0.5f);
                    if (this.ac != 1) {
                        int i2 = x2 - this.af;
                        int i3 = y2 - this.ag;
                        if (W == 0 || Math.abs(i2) <= this.aj) {
                            z2 = false;
                        } else {
                            this.ah = x2;
                            z2 = true;
                        }
                        if (X && Math.abs(i3) > this.aj) {
                            this.ai = y2;
                        }
                        aa(1);
                        break;
                    }
                } else {
                    Log.e("RecyclerView", "Error processing scroll; pointer index for id " + this.ad + " not found. Did any MotionEvents get skipped?");
                    return false;
                }
                break;
            case 3:
                as();
                break;
            case 5:
                this.ad = motionEvent.getPointerId(actionIndex);
                int x3 = (int) (motionEvent.getX(actionIndex) + 0.5f);
                this.ah = x3;
                this.af = x3;
                int y3 = (int) (motionEvent.getY(actionIndex) + 0.5f);
                this.ai = y3;
                this.ag = y3;
                break;
            case 6:
                aw(motionEvent);
                break;
        }
        return this.ac == 1;
    }

    @Override // android.view.ViewGroup, android.view.View
    protected final void onLayout(boolean z, int i, int i2, int i3, int i4) {
        TraceCompatHelper.a("RV OnLayout");
        y();
        TraceCompatHelper.b();
        this.r = true;
    }

    @Override // android.view.View
    protected final void onMeasure(int i, int i2) {
        RecyclerViewLayoutManager raVar = this.l;
        if (raVar == null) {
            w(i, i2);
            return;
        }
        boolean z = false;
        if (raVar.Y()) {
            int mode = View.MeasureSpec.getMode(i);
            int mode2 = View.MeasureSpec.getMode(i2);
            this.l.bl(i, i2);
            if (mode == 1073741824 && mode2 == 1073741824) {
                z = true;
            }
            this.au = z;
            if (z || this.k == null) {
                return;
            }
            if (this.H.d == 1) {
                at();
            }
            this.l.aQ(i, i2);
            this.H.i = true;
            au();
            this.l.aS(i, i2);
            if (this.l.ab()) {
                this.l.aQ(View.MeasureSpec.makeMeasureSpec(getMeasuredWidth(), 1073741824), View.MeasureSpec.makeMeasureSpec(getMeasuredHeight(), 1073741824));
                this.H.i = true;
                au();
                this.l.aS(i, i2);
            }
            this.av = getMeasuredWidth();
            this.aw = getMeasuredHeight();
            return;
        }
        if (this.u) {
            ac();
            M();
            ax();
            N();
            RecyclerViewState roVar = this.H;
            if (roVar.k) {
                roVar.g = true;
            } else {
                this.e.e();
                this.H.g = false;
            }
            this.u = false;
            ad(false);
        } else if (this.H.k) {
            setMeasuredDimension(getMeasuredWidth(), getMeasuredHeight());
            return;
        }
        RecyclerViewAdapter qqVar = this.k;
        if (qqVar != null) {
            this.H.e = qqVar.getItemCount();
        } else {
            this.H.e = 0;
        }
        ac();
        this.l.bl(i, i2);
        ad(false);
        this.H.g = false;
    }

    @Override // android.view.ViewGroup
    protected final boolean onRequestFocusInDescendants(int i, Rect rect) {
        if (ak()) {
            return false;
        }
        return super.onRequestFocusInDescendants(i, rect);
    }

    @Override // android.view.View
    protected final void onRestoreInstanceState(Parcelable parcelable) {
        if (!(parcelable instanceof SavedStateWithParcelable)) {
            super.onRestoreInstanceState(parcelable);
            return;
        }
        SavedStateWithParcelable rkVar = (SavedStateWithParcelable) parcelable;
        this.d = rkVar;
        super.onRestoreInstanceState(rkVar.d);
        requestLayout();
    }

    @Override // android.view.View
    protected final Parcelable onSaveInstanceState() {
        SavedStateWithParcelable rkVar = new SavedStateWithParcelable(super.onSaveInstanceState());
        SavedStateWithParcelable rkVar2 = this.d;
        if (rkVar2 != null) {
            rkVar.a = rkVar2.a;
        } else {
            RecyclerViewLayoutManager raVar = this.l;
            rkVar.a = raVar != null ? raVar.L() : null;
        }
        return rkVar;
    }

    @Override // android.view.View
    protected final void onSizeChanged(int i, int i2, int i3, int i4) {
        super.onSizeChanged(i, i2, i3, i4);
        if (i == i3 && i2 == i4) {
            return;
        }
        H();
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Code restructure failed: missing block: B:71:0x0187, code lost:
    
        if (r0 != 0) goto L85;
     */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r2v11 */
    /* JADX WARN: Type inference failed for: r2v6, types: [boolean] */
    @Override // android.view.View
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final boolean onTouchEvent(MotionEvent motionEvent) {
        RecyclerView recyclerView;
        RecyclerViewLayoutManager raVar;
        int i;
        View d;
        int bg;
        int i2;
        int i3;
        int i4;
        int i5;
        boolean z;
        int i6 = 0;
        if (this.t || this.U) {
            return false;
        }
        ItemTouchUiUtilInterface rdVar = this.p;
        if (rdVar != null) {
            rdVar.i(motionEvent);
            int action = motionEvent.getAction();
            if (action == 3 || action == 1) {
                this.p = null;
            }
        } else if (motionEvent.getAction() == 0 || !aC(motionEvent)) {
            RecyclerViewLayoutManager raVar2 = this.l;
            if (raVar2 == null) {
                return false;
            }
            boolean W = raVar2.W();
            boolean X = this.l.X();
            if (this.ae == null) {
                this.ae = VelocityTracker.obtain();
            }
            int actionMasked = motionEvent.getActionMasked();
            int actionIndex = motionEvent.getActionIndex();
            if (actionMasked == 0) {
                int[] iArr = this.as;
                iArr[1] = 0;
                iArr[0] = 0;
                actionMasked = 0;
            }
            MotionEvent obtain = MotionEvent.obtain(motionEvent);
            int[] iArr2 = this.as;
            obtain.offsetLocation(iArr2[0], iArr2[1]);
            switch (actionMasked) {
                case 0:
                    this.ad = motionEvent.getPointerId(0);
                    int x = (int) (motionEvent.getX() + 0.5f);
                    this.ah = x;
                    this.af = x;
                    int y = (int) (motionEvent.getY() + 0.5f);
                    this.ai = y;
                    this.ag = y;
                    int i7 = W;
                    if (X) {
                        i7 = (W ? 1 : 0) | 2;
                    }
                    ao(i7, 0);
                    this.ae.addMovement(obtain);
                    obtain.recycle();
                    return true;
                case 1:
                    this.ae.addMovement(obtain);
                    this.ae.computeCurrentVelocity(1000, this.ak);
                    float f = W ? -this.ae.getXVelocity(this.ad) : 0.0f;
                    float f2 = X ? -this.ae.getYVelocity(this.ad) : 0.0f;
                    if (f != 0.0f || f2 != 0.0f) {
                        int i8 = (int) f;
                        int i9 = (int) f2;
                        RecyclerViewLayoutManager raVar3 = this.l;
                        if (raVar3 == null) {
                            Log.e("RecyclerView", "Cannot fling without a LayoutManager set. Call setLayoutManager with a non-null argument.");
                        } else if (!this.t) {
                            int W2 = raVar3.W();
                            boolean X2 = this.l.X();
                            if (W2 == 0) {
                                i8 = 0;
                            } else if (Math.abs(i8) < this.D) {
                                i8 = 0;
                            }
                            if (!X2) {
                                i9 = 0;
                            } else if (Math.abs(i9) < this.D) {
                                i9 = 0;
                            }
                            if (i8 == 0) {
                                if (i9 != 0) {
                                    i8 = 0;
                                }
                            }
                            if (i8 != 0) {
                                EdgeEffect edgeEffect = this.x;
                                if (edgeEffect == null || OverflowCheckedLongArrayUtil.k(edgeEffect) == 0.0f) {
                                    EdgeEffect edgeEffect2 = this.z;
                                    if (edgeEffect2 != null && OverflowCheckedLongArrayUtil.k(edgeEffect2) != 0.0f) {
                                        this.z.onAbsorb(i8);
                                        i8 = 0;
                                    }
                                } else {
                                    this.x.onAbsorb(-i8);
                                    i8 = 0;
                                }
                            }
                            if (i9 != 0) {
                                EdgeEffect edgeEffect3 = this.y;
                                if (edgeEffect3 == null || OverflowCheckedLongArrayUtil.k(edgeEffect3) == 0.0f) {
                                    EdgeEffect edgeEffect4 = this.A;
                                    if (edgeEffect4 != null && OverflowCheckedLongArrayUtil.k(edgeEffect4) != 0.0f) {
                                        this.A.onAbsorb(i9);
                                        i9 = 0;
                                    }
                                } else {
                                    this.y.onAbsorb(-i9);
                                    i9 = 0;
                                }
                            }
                            if (i8 == 0) {
                                if (i9 != 0) {
                                    i8 = 0;
                                }
                            }
                            float f3 = i8;
                            float f4 = i9;
                            if (!dispatchNestedPreFling(f3, f4)) {
                                boolean z2 = W2 == 0 ? X2 : true;
                                dispatchNestedFling(f3, f4, z2);
                                LinearLayoutManagerScrollerState rcVar = this.C;
                                if (rcVar != null && (raVar = (recyclerView = rcVar.a).l) != 0 && recyclerView.e() != null && ((Math.abs(i9) > (i = rcVar.a.D) || Math.abs(i8) > i) && (raVar instanceof SmoothScrollerActionCallback))) {
                                    CarUiLinearSmoothScroller aoyVar = new CarUiLinearSmoothScroller(((PreferenceListItemDecoration) rcVar).d);
                                    int am = raVar.am();
                                    int i10 = -1;
                                    if (am != 0 && (d = rcVar.d(raVar)) != null && (bg = ra.bg(d)) != -1) {
                                        i10 = am - 1;
                                        PointF K = ((SmoothScrollerActionCallback) raVar).K(i10);
                                        if (K == null) {
                                            i10 = -1;
                                        } else {
                                            if (raVar.W()) {
                                                i2 = rcVar.c(raVar, rcVar.f(raVar), i8, 0);
                                                if (K.x < 0.0f) {
                                                    i2 = -i2;
                                                }
                                            } else {
                                                i2 = 0;
                                            }
                                            if (raVar.X()) {
                                                i3 = i2;
                                                int c = rcVar.c(raVar, rcVar.g(raVar), 0, i9);
                                                i4 = K.y < 0.0f ? -c : c;
                                            } else {
                                                i3 = i2;
                                                i4 = 0;
                                            }
                                            if (true != raVar.X()) {
                                                i4 = i3;
                                            }
                                            if (i4 == 0) {
                                                i10 = -1;
                                            } else {
                                                int i11 = i4 + bg;
                                                if (i11 < 0) {
                                                    i11 = 0;
                                                }
                                                if (i11 < am) {
                                                    i10 = i11;
                                                }
                                            }
                                        }
                                    }
                                    if (i10 != -1) {
                                        aoyVar.a = i10;
                                        raVar.aU(aoyVar);
                                        aA();
                                        obtain.recycle();
                                        return true;
                                    }
                                }
                                if (z2) {
                                    if (X2) {
                                        W2 = (W2 == true ? 1 : 0) | 2;
                                    }
                                    ao(W2, 1);
                                    int i12 = this.ak;
                                    int max = Math.max(-i12, Math.min(i8, i12));
                                    int i13 = this.ak;
                                    int max2 = Math.max(-i13, Math.min(i9, i13));
                                    RecyclerViewViewFlinger rqVar = this.E;
                                    rqVar.e.aa(2);
                                    rqVar.b = 0;
                                    rqVar.a = 0;
                                    Interpolator interpolator = rqVar.d;
                                    Interpolator interpolator2 = a;
                                    if (interpolator != interpolator2) {
                                        rqVar.d = interpolator2;
                                        rqVar.c = new OverScroller(rqVar.e.getContext(), interpolator2);
                                    }
                                    rqVar.c.fling(0, 0, max, max2, Integer.MIN_VALUE, Preference.DEFAULT_ORDER, Integer.MIN_VALUE, Preference.DEFAULT_ORDER);
                                    rqVar.a();
                                    aA();
                                    obtain.recycle();
                                    return true;
                                }
                            }
                        }
                    }
                    aa(0);
                    aA();
                    obtain.recycle();
                    return true;
                case 2:
                    int findPointerIndex = motionEvent.findPointerIndex(this.ad);
                    if (findPointerIndex < 0) {
                        Log.e("RecyclerView", "Error processing scroll; pointer index for id " + this.ad + " not found. Did any MotionEvents get skipped?");
                        return false;
                    }
                    int x2 = (int) (motionEvent.getX(findPointerIndex) + 0.5f);
                    int y2 = (int) (motionEvent.getY(findPointerIndex) + 0.5f);
                    int i14 = this.ah - x2;
                    int i15 = this.ai - y2;
                    if (this.ac != 1) {
                        if (W) {
                            i14 = i14 > 0 ? Math.max(0, i14 - this.aj) : Math.min(0, i14 + this.aj);
                            z = i14 != 0;
                        } else {
                            z = false;
                        }
                        if (X) {
                            i15 = i15 > 0 ? Math.max(0, i15 - this.aj) : Math.min(0, i15 + this.aj);
                            if (i15 != 0) {
                                z = true;
                            }
                        }
                        if (z) {
                            aa(1);
                        }
                    }
                    if (this.ac == 1) {
                        int[] iArr3 = this.M;
                        iArr3[0] = 0;
                        iArr3[1] = 0;
                        int ap = i14 - ap(i14, motionEvent.getY());
                        int aq = i15 - aq(i15, motionEvent.getX());
                        if (ah(true != W ? 0 : ap, true != X ? 0 : aq, this.M, this.ar, 0)) {
                            int[] iArr4 = this.M;
                            ap -= iArr4[0];
                            int i16 = aq - iArr4[1];
                            int[] iArr5 = this.as;
                            int i17 = iArr5[0];
                            int[] iArr6 = this.ar;
                            iArr5[0] = i17 + iArr6[0];
                            iArr5[1] = iArr5[1] + iArr6[1];
                            getParent().requestDisallowInterceptTouchEvent(true);
                            i5 = i16;
                        } else {
                            i5 = aq;
                        }
                        int[] iArr7 = this.ar;
                        this.ah = x2 - iArr7[0];
                        this.ai = y2 - iArr7[1];
                        if (al(true != W ? 0 : ap, true != X ? 0 : i5, motionEvent, 0)) {
                            getParent().requestDisallowInterceptTouchEvent(true);
                        }
                        RecyclerViewGapWorker ppVar = this.F;
                        if (ppVar != null) {
                            if (ap != 0) {
                                i6 = ap;
                            }
                            ppVar.a(this, i6, i5);
                        }
                    }
                    this.ae.addMovement(obtain);
                    obtain.recycle();
                    return true;
                case 3:
                    as();
                    this.ae.addMovement(obtain);
                    obtain.recycle();
                    return true;
                case 4:
                default:
                    this.ae.addMovement(obtain);
                    obtain.recycle();
                    return true;
                case 5:
                    this.ad = motionEvent.getPointerId(actionIndex);
                    int x3 = (int) (motionEvent.getX(actionIndex) + 0.5f);
                    this.ah = x3;
                    this.af = x3;
                    int y3 = (int) (motionEvent.getY(actionIndex) + 0.5f);
                    this.ai = y3;
                    this.ag = y3;
                    this.ae.addMovement(obtain);
                    obtain.recycle();
                    return true;
                case 6:
                    aw(motionEvent);
                    this.ae.addMovement(obtain);
                    obtain.recycle();
                    return true;
            }
        }
        as();
        return true;
    }

    public void p(ItemTouchHelperCallbackBase qxVar) {
        RecyclerViewLayoutManager raVar = this.l;
        if (raVar != null) {
            raVar.O("Cannot add item decoration during a scroll  or layout");
        }
        if (this.n.isEmpty()) {
            setWillNotDraw(false);
        }
        this.n.add(qxVar);
        K();
        requestLayout();
    }

    public final void q(SqliteContentValuesHelper reVar) {
        if (this.ao == null) {
            this.ao = new ArrayList();
        }
        this.ao.add(reVar);
    }

    public final void r(String str) {
        if (ak()) {
            if (str != null) {
                throw new IllegalStateException(str);
            }
            throw new IllegalStateException("Cannot call this method while RecyclerView is computing a layout or scrolling".concat(k()));
        }
        if (this.ab > 0) {
            Log.w("RecyclerView", "Cannot call this method in a scroll callback. Scroll callbacks mightbe run during a measure & layout pass where you cannot change theRecyclerView data. Any method call that might change the structureof the RecyclerView or the adapter contents should be postponed tothe next frame.", new IllegalStateException("".concat(k())));
        }
    }

    @Override // android.view.ViewGroup
    public final void removeDetachedView(View view, boolean z) {
        RecyclerViewViewHolder h = h(view);
        if (h != null) {
            if (h.isTmpDetached()) {
                h.clearTmpDetachFlag();
            } else if (!h.shouldIgnore()) {
                throw new IllegalArgumentException("Called removeDetachedView with a view which is not flagged as tmp detached." + h + k());
            }
        }
        view.clearAnimation();
        x(view);
        super.removeDetachedView(view, z);
    }

    @Override // android.view.ViewGroup, android.view.ViewParent
    public final void requestChildFocus(View view, View view2) {
        if (!this.l.aW() && !ak() && view2 != null) {
            ay(view, view2);
        }
        super.requestChildFocus(view, view2);
    }

    @Override // android.view.ViewGroup, android.view.ViewParent
    public final boolean requestChildRectangleOnScreen(View view, Rect rect, boolean z) {
        return this.l.aX(this, view, rect, z, false);
    }

    @Override // android.view.ViewGroup, android.view.ViewParent
    public final void requestDisallowInterceptTouchEvent(boolean z) {
        int size = this.o.size();
        for (int i = 0; i < size; i++) {
            ((ItemTouchUiUtilInterface) this.o.get(i)).h();
        }
        super.requestDisallowInterceptTouchEvent(z);
    }

    @Override // android.view.View, android.view.ViewParent
    public final void requestLayout() {
        if (this.T != 0 || this.t) {
            this.s = true;
        } else {
            super.requestLayout();
        }
    }

    @Override // android.view.View
    public final void scrollBy(int i, int i2) {
        RecyclerViewLayoutManager raVar = this.l;
        if (raVar == null) {
            Log.e("RecyclerView", "Cannot scroll without a LayoutManager set. Call setLayoutManager with a non-null argument.");
            return;
        }
        if (this.t) {
            return;
        }
        boolean W = raVar.W();
        boolean X = this.l.X();
        if (!W) {
            if (!X) {
                return;
            } else {
                X = true;
            }
        }
        if (true != W) {
            i = 0;
        }
        if (true != X) {
            i2 = 0;
        }
        al(i, i2, null, 0);
    }

    @Override // android.view.View
    public final void scrollTo(int i, int i2) {
        Log.w("RecyclerView", "RecyclerView does not support scrolling to an absolute position. Use scrollToPosition instead");
    }

    @Override // android.view.View, android.view.accessibility.AccessibilityEventSource
    public final void sendAccessibilityEventUnchecked(AccessibilityEvent accessibilityEvent) {
        if (!ak()) {
            super.sendAccessibilityEventUnchecked(accessibilityEvent);
        } else {
            int contentChangeTypes = accessibilityEvent != null ? accessibilityEvent.getContentChangeTypes() : 0;
            this.V |= contentChangeTypes != 0 ? contentChangeTypes : 0;
        }
    }

    @Override // android.view.ViewGroup
    public final void setClipToPadding(boolean z) {
        if (z != this.h) {
            H();
        }
        this.h = z;
        super.setClipToPadding(z);
        if (this.r) {
            requestLayout();
        }
    }

    @Override // android.view.View
    public final void setNestedScrollingEnabled(boolean z) {
        ar().a(z);
    }

    @Override // android.view.View
    public final boolean startNestedScroll(int i) {
        return ar().i(i, 0);
    }

    @Override // android.view.View
    public final void stopNestedScroll() {
        ar().b(0);
    }

    @Override // android.view.ViewGroup
    public final void suppressLayout(boolean z) {
        if (z != this.t) {
            r("Do not suppressLayout in layout or scroll");
            if (z) {
                long uptimeMillis = SystemClock.uptimeMillis();
                onTouchEvent(MotionEvent.obtain(uptimeMillis, uptimeMillis, 3, 0.0f, 0.0f, 0));
                this.t = true;
                this.U = true;
                af();
                return;
            }
            this.t = false;
            if (this.s && this.l != null && this.k != null) {
                requestLayout();
            }
            this.s = false;
        }
    }

    final void t() {
        int c = this.f.c();
        for (int i = 0; i < c; i++) {
            RecyclerViewViewHolder h = h(this.f.f(i));
            if (!h.shouldIgnore()) {
                h.clearOldPosition();
            }
        }
        RecyclerViewRecycler rhVar = this.c;
        int size = rhVar.c.size();
        for (int i2 = 0; i2 < size; i2++) {
            ((RecyclerViewViewHolder) rhVar.c.get(i2)).clearOldPosition();
        }
        int size2 = rhVar.a.size();
        for (int i3 = 0; i3 < size2; i3++) {
            ((RecyclerViewViewHolder) rhVar.a.get(i3)).clearOldPosition();
        }
        ArrayList arrayList = rhVar.b;
        if (arrayList != null) {
            int size3 = arrayList.size();
            for (int i4 = 0; i4 < size3; i4++) {
                ((RecyclerViewViewHolder) rhVar.b.get(i4)).clearOldPosition();
            }
        }
    }

    public final void u(int i, int i2) {
        EdgeEffect edgeEffect = this.x;
        boolean z = false;
        if (edgeEffect != null && !edgeEffect.isFinished() && i > 0) {
            this.x.onRelease();
            z = this.x.isFinished();
        }
        EdgeEffect edgeEffect2 = this.z;
        if (edgeEffect2 != null && !edgeEffect2.isFinished() && i < 0) {
            this.z.onRelease();
            z |= this.z.isFinished();
        }
        EdgeEffect edgeEffect3 = this.y;
        if (edgeEffect3 != null && !edgeEffect3.isFinished() && i2 > 0) {
            this.y.onRelease();
            z |= this.y.isFinished();
        }
        EdgeEffect edgeEffect4 = this.A;
        if (edgeEffect4 != null && !edgeEffect4.isFinished() && i2 < 0) {
            this.A.onRelease();
            z |= this.A.isFinished();
        }
        if (z) {
            ViewCompatAccessibilityStatics.q(this);
        }
    }

    public final void v() {
        if (!this.r || this.v) {
            TraceCompatHelper.a("RV FullInvalidate");
            y();
            TraceCompatHelper.b();
            return;
        }
        if (this.e.l()) {
            if (!this.e.k(4) || this.e.k(11)) {
                if (this.e.l()) {
                    TraceCompatHelper.a("RV FullInvalidate");
                    y();
                    TraceCompatHelper.b();
                    return;
                }
                return;
            }
            TraceCompatHelper.a("RV PartialInvalidate");
            ac();
            M();
            this.e.g();
            if (!this.s) {
                int a2 = this.f.a();
                int i = 0;
                while (true) {
                    if (i < a2) {
                        RecyclerViewViewHolder h = h(this.f.e(i));
                        if (h != null && !h.shouldIgnore() && h.isUpdated()) {
                            y();
                            break;
                        }
                        i++;
                    } else {
                        this.e.d();
                        break;
                    }
                }
            }
            ad(true);
            N();
            TraceCompatHelper.b();
        }
    }

    public final void w(int i, int i2) {
        setMeasuredDimension(ra.aj(i, getPaddingLeft() + getPaddingRight(), ViewCompatAccessibilityStatics.e(this)), ra.aj(i2, getPaddingTop() + getPaddingBottom(), ViewCompatAccessibilityStatics.d(this)));
    }

    public final void x(View view) {
        RecyclerViewViewHolder h = h(view);
        RecyclerViewAdapter qqVar = this.k;
        if (qqVar == null || h == null) {
            return;
        }
        qqVar.onViewDetachedFromWindow(h);
    }

    /* JADX WARN: Code restructure failed: missing block: B:149:0x030d, code lost:
    
        if (r17.f.k(getFocusedChild()) != false) goto L145;
     */
    /* JADX WARN: Removed duplicated region for block: B:166:0x03cd  */
    /* JADX WARN: Removed duplicated region for block: B:176:0x0387  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    final void y() {
        RecyclerViewViewHolder rrVar;
        View findViewById;
        if (this.k == null) {
            Log.w("RecyclerView", "No adapter attached; skipping layout");
            return;
        }
        if (this.l == null) {
            Log.e("RecyclerView", "No layout manager attached; skipping layout");
            return;
        }
        this.H.i = false;
        boolean z = this.au ? this.av == getWidth() ? this.aw != getHeight() : true : false;
        this.av = 0;
        this.aw = 0;
        this.au = false;
        if (this.H.d == 1) {
            at();
            this.l.aP(this);
            au();
        } else {
            RecyclerViewAdapterHelper nfVar = this.e;
            if ((nfVar.b.isEmpty() || nfVar.a.isEmpty()) && !z && this.l.D == getWidth() && this.l.E == getHeight()) {
                this.l.aP(this);
            } else {
                this.l.aP(this);
                au();
            }
        }
        int i = 4;
        this.H.b(4);
        ac();
        M();
        RecyclerViewState roVar = this.H;
        roVar.d = 1;
        View view = null;
        if (roVar.j) {
            int a2 = this.f.a() - 1;
            while (a2 >= 0) {
                RecyclerViewViewHolder h = h(this.f.e(a2));
                if (!h.shouldIgnore()) {
                    long c = c(h);
                    ItemViewTypeHolder c2 = DefaultItemAnimator.c();
                    c2.a(h);
                    RecyclerViewViewHolder rrVar2 = (RecyclerViewViewHolder) this.g.b.c(c);
                    if (rrVar2 == null || rrVar2.shouldIgnore()) {
                        this.g.d(h, c2);
                    } else {
                        boolean i2 = this.g.i(rrVar2);
                        boolean i3 = this.g.i(h);
                        if (i2 && rrVar2 == h) {
                            this.g.d(h, c2);
                        } else {
                            ItemViewTypeHolder a3 = this.g.a(rrVar2, i);
                            this.g.d(h, c2);
                            ItemViewTypeHolder a4 = this.g.a(h, 8);
                            if (a3 == null) {
                                int a5 = this.f.a();
                                for (int i4 = 0; i4 < a5; i4++) {
                                    RecyclerViewViewHolder h2 = h(this.f.e(i4));
                                    if (h2 != h && c(h2) == c) {
                                        RecyclerViewAdapter qqVar = this.k;
                                        if (qqVar == null || !qqVar.hasStableIds()) {
                                            throw new IllegalStateException("Two different ViewHolders have the same change ID. This might happen due to inconsistent Adapter update events or if the LayoutManager lays out the same View multiple times.\n ViewHolder 1:" + h2 + " \n View Holder 2:" + h + k());
                                        }
                                        throw new IllegalStateException("Two different ViewHolders have the same stable ID. Stable IDs in your adapter MUST BE unique and SHOULD NOT change.\n ViewHolder 1:" + h2 + " \n View Holder 2:" + h + k());
                                    }
                                }
                                Log.e("RecyclerView", "Problem while matching changed view holders with the newones. The pre-layout information for the change holder " + rrVar2 + " cannot be found but it is necessary for " + h + k());
                            } else {
                                rrVar2.setIsRecyclable(false);
                                if (i2) {
                                    o(rrVar2);
                                }
                                if (rrVar2 != h) {
                                    if (i3) {
                                        o(h);
                                    }
                                    rrVar2.mShadowedHolder = h;
                                    o(rrVar2);
                                    this.c.l(rrVar2);
                                    h.setIsRecyclable(false);
                                    h.mShadowingHolder = rrVar2;
                                }
                                if (this.B.f(rrVar2, h, a3, a4)) {
                                    P();
                                }
                            }
                        }
                    }
                }
                a2--;
                i = 4;
            }
            AccessibilityEventFlagHelper taVar = this.g;
            ItemAnimatorListenerAdapter qwVar = this.az;
            for (int i5 = taVar.a.j - 1; i5 >= 0; i5--) {
                RecyclerViewViewHolder rrVar3 = (RecyclerViewViewHolder) taVar.a.f(i5);
                ViewHolderAttachState szVar = (ViewHolderAttachState) taVar.a.g(i5);
                int i6 = szVar.a;
                if ((i6 & 3) == 3) {
                    qwVar.n(rrVar3);
                } else if ((i6 & 1) != 0) {
                    ItemViewTypeHolder quVar = szVar.b;
                    if (quVar == null) {
                        qwVar.n(rrVar3);
                    } else {
                        qwVar.m(rrVar3, quVar, szVar.c);
                    }
                } else if ((i6 & 14) == 14) {
                    qwVar.l(rrVar3, szVar.b, szVar.c);
                } else if ((i6 & 12) == 12) {
                    ItemViewTypeHolder quVar2 = szVar.b;
                    ItemViewTypeHolder quVar3 = szVar.c;
                    rrVar3.setIsRecyclable(false);
                    RecyclerView recyclerView = qwVar.a;
                    if (!recyclerView.v) {
                        DefaultItemAnimator qvVar = recyclerView.B;
                        int i7 = quVar2.a;
                        int i8 = quVar3.a;
                        if (i7 == i8 && quVar2.b == quVar3.b) {
                            qvVar.a(rrVar3);
                        } else if (qvVar.k(rrVar3, i7, quVar2.b, i8, quVar3.b)) {
                            qwVar.a.P();
                        }
                    } else if (recyclerView.B.f(rrVar3, rrVar3, quVar2, quVar3)) {
                        qwVar.a.P();
                    }
                } else if ((i6 & 4) != 0) {
                    qwVar.m(rrVar3, szVar.b, null);
                } else if ((i6 & 8) != 0) {
                    qwVar.l(rrVar3, szVar.b, szVar.c);
                }
                sz.b(szVar);
            }
        }
        this.l.aK(this.c);
        RecyclerViewState roVar2 = this.H;
        roVar2.b = roVar2.e;
        this.v = false;
        this.w = false;
        roVar2.j = false;
        roVar2.k = false;
        this.l.v = false;
        ArrayList arrayList = this.c.b;
        if (arrayList != null) {
            arrayList.clear();
        }
        RecyclerViewLayoutManager raVar = this.l;
        if (raVar.A) {
            raVar.z = 0;
            raVar.A = false;
            this.c.m();
        }
        this.l.o(this.H);
        N();
        ad(false);
        this.g.f();
        int[] iArr = this.ap;
        int i9 = iArr[0];
        int i10 = iArr[1];
        av(iArr);
        int[] iArr2 = this.ap;
        if (iArr2[0] != i9 || iArr2[1] != i10) {
            A(0, 0);
        }
        if (this.an && this.k != null && hasFocus() && getDescendantFocusability() != 393216 && (getDescendantFocusability() != 131072 || !isFocused())) {
            if (!isFocused()) {
            }
            if (this.H.m != -1 && this.k.hasStableIds()) {
                long j = this.H.m;
                RecyclerViewAdapter qqVar2 = this.k;
                if (qqVar2 != null) {
                    if (qqVar2.hasStableIds()) {
                        int c3 = this.f.c();
                        rrVar = null;
                        int i11 = 0;
                        while (true) {
                            if (i11 >= c3) {
                                break;
                            }
                            RecyclerViewViewHolder h3 = h(this.f.f(i11));
                            if (h3 != null && !h3.isRemoved() && h3.getItemId() == j) {
                                if (!this.f.k(h3.itemView)) {
                                    rrVar = h3;
                                    break;
                                }
                                rrVar = h3;
                            }
                            i11++;
                        }
                    } else {
                        rrVar = null;
                    }
                    if (rrVar == null && !this.f.k(rrVar.itemView) && rrVar.itemView.hasFocusable()) {
                        view = rrVar.itemView;
                    } else if (this.f.a() > 0) {
                        RecyclerViewState roVar3 = this.H;
                        int i12 = roVar3.l;
                        int i13 = i12 != -1 ? i12 : 0;
                        int a6 = roVar3.a();
                        for (int i14 = i13; i14 < a6; i14++) {
                            RecyclerViewViewHolder f = f(i14);
                            if (f == null) {
                                break;
                            }
                            if (f.itemView.hasFocusable()) {
                                view = f.itemView;
                                break;
                            }
                        }
                        int min = Math.min(a6, i13) - 1;
                        while (true) {
                            if (min < 0) {
                                break;
                            }
                            RecyclerViewViewHolder f2 = f(min);
                            if (f2 == null) {
                                break;
                            }
                            if (f2.itemView.hasFocusable()) {
                                view = f2.itemView;
                                break;
                            }
                            min--;
                        }
                    }
                    if (view != null) {
                        int i15 = this.H.n;
                        if (i15 != -1 && (findViewById = view.findViewById(i15)) != null && findViewById.isFocusable()) {
                            view = findViewById;
                        }
                        view.requestFocus();
                    }
                }
            }
            rrVar = null;
            if (rrVar == null) {
            }
            if (this.f.a() > 0) {
            }
            if (view != null) {
            }
        }
        az();
    }

    public final void z(int i, int i2, int i3, int i4, int[] iArr, int i5, int[] iArr2) {
        ar().g(i, i2, i3, i4, iArr, i5, iArr2);
    }

    public RecyclerView(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, com.google.android.embedded.projection.R.attr.recyclerViewStyle);
    }

    @Override // android.view.ViewGroup
    @Deprecated
    public final void setLayoutTransition(LayoutTransition layoutTransition) {
        if (layoutTransition != null) {
            throw new IllegalArgumentException("Providing a LayoutTransition into RecyclerView is not supported. Please use setItemAnimator() instead for animating changes to the items in this RecyclerView");
        }
        super.setLayoutTransition(null);
    }

    public RecyclerView(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        String str;
        this.R = new RecyclerViewAdapterDataObserver(this);
        this.c = new RecyclerViewRecycler(this);
        this.g = new AccessibilityEventFlagHelper();
        this.i = new Rect();
        this.S = new Rect();
        this.j = new RectF();
        this.m = new ArrayList();
        this.n = new ArrayList();
        this.o = new ArrayList();
        this.T = 0;
        this.v = false;
        this.w = false;
        this.aa = 0;
        this.ab = 0;
        this.ay = b;
        this.B = new DefaultItemAnimator(null);
        this.ac = 0;
        this.ad = -1;
        this.al = Float.MIN_VALUE;
        this.am = Float.MIN_VALUE;
        this.an = true;
        this.E = new RecyclerViewViewFlinger(this);
        this.G = new LinearLayoutChunkResult();
        this.H = new RecyclerViewState();
        this.I = false;
        this.J = false;
        this.ax = new ItemAnimatorListenerAdapter(this);
        this.K = false;
        this.ap = new int[2];
        this.ar = new int[2];
        this.as = new int[2];
        this.M = new int[2];
        this.N = new ArrayList();
        this.at = new RecyclerViewScrollRunnable(this);
        this.av = 0;
        this.aw = 0;
        this.az = new ItemAnimatorListenerAdapter(this);
        setScrollContainer(true);
        setFocusableInTouchMode(true);
        ViewConfiguration viewConfiguration = ViewConfiguration.get(context);
        this.aj = viewConfiguration.getScaledTouchSlop();
        this.al = viewConfiguration.getScaledHorizontalScrollFactor();
        this.am = viewConfiguration.getScaledVerticalScrollFactor();
        this.D = viewConfiguration.getScaledMinimumFlingVelocity();
        this.ak = viewConfiguration.getScaledMaximumFlingVelocity();
        setWillNotDraw(getOverScrollMode() == 2);
        this.B.a = this.ax;
        this.e = new RecyclerViewAdapterHelper(new ItemAnimatorListenerAdapter(this), null);
        this.f = new RecyclerViewChildHelper(new ItemAnimatorListenerAdapter(this), null);
        if (ViewCompatAccessibilityStatics.b(this) == 0) {
            ViewCompatAccessibilityStatics.M(this);
        }
        if (ViewCompatAccessibilityStatics.a(this) == 0) {
            ViewCompatAccessibilityStatics.z(this, 1);
        }
        this.W = (AccessibilityManager) getContext().getSystemService("accessibility");
        X(new NestedScrollingChildHelperWrapper(this));
        TypedArray obtainStyledAttributes = context.obtainStyledAttributes(attributeSet, kl.a, i, 0);
        ViewCompatAccessibilityStatics.L(this, context, kl.a, attributeSet, obtainStyledAttributes, i);
        String string = obtainStyledAttributes.getString(8);
        if (obtainStyledAttributes.getInt(2, -1) == -1) {
            setDescendantFocusability(262144);
        }
        this.h = obtainStyledAttributes.getBoolean(1, true);
        if (!obtainStyledAttributes.getBoolean(3, false)) {
            str = string;
        } else {
            StateListDrawable stateListDrawable = (StateListDrawable) obtainStyledAttributes.getDrawable(6);
            Drawable drawable = obtainStyledAttributes.getDrawable(7);
            StateListDrawable stateListDrawable2 = (StateListDrawable) obtainStyledAttributes.getDrawable(4);
            Drawable drawable2 = obtainStyledAttributes.getDrawable(5);
            if (stateListDrawable == null || drawable == null || stateListDrawable2 == null || drawable2 == null) {
                throw new IllegalArgumentException("Trying to set fast scroller without both required drawables.".concat(k()));
            }
            Resources resources = getContext().getResources();
            str = string;
            new ItemTouchHelper(this, stateListDrawable, drawable, stateListDrawable2, drawable2, resources.getDimensionPixelSize(com.google.android.embedded.projection.R.dimen.fastscroll_default_thickness), resources.getDimensionPixelSize(com.google.android.embedded.projection.R.dimen.fastscroll_minimum_range), resources.getDimensionPixelOffset(com.google.android.embedded.projection.R.dimen.fastscroll_margin));
        }
        obtainStyledAttributes.recycle();
        aE(context, str, attributeSet, i);
        int[] iArr = P;
        TypedArray obtainStyledAttributes2 = context.obtainStyledAttributes(attributeSet, iArr, i, 0);
        ViewCompatAccessibilityStatics.L(this, context, iArr, attributeSet, obtainStyledAttributes2, i);
        boolean z = obtainStyledAttributes2.getBoolean(0, true);
        obtainStyledAttributes2.recycle();
        setNestedScrollingEnabled(z);
    }

    @Override // android.view.ViewGroup
    public final ViewGroup.LayoutParams generateLayoutParams(ViewGroup.LayoutParams layoutParams) {
        RecyclerViewLayoutManager raVar = this.l;
        if (raVar == null) {
            throw new IllegalStateException("RecyclerView has no LayoutManager".concat(k()));
        }
        return raVar.g(layoutParams);
    }
}
