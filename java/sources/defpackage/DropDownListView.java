package defpackage;

import android.content.Context;
import android.graphics.Canvas;
import android.graphics.Rect;
import android.graphics.drawable.Drawable;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewGroup;
import android.widget.AbsListView;
import android.widget.ListAdapter;
import android.widget.ListView;
import com.google.android.embedded.projection.R;
import java.lang.reflect.Field;

/* compiled from: PG */
/* loaded from: classes.dex */
class DropDownListView extends ListView {
    public boolean a;
    DropDownListViewFocusRunnable b;
    private final Rect c;
    private int d;
    private int e;
    private int f;
    private int g;
    private int h;
    private Field i;
    private DropDownListViewSelectorDrawable j;
    private final boolean k;
    private boolean l;
    private ViewDragTouchListener m;

    public DropDownListView(Context context, boolean z) {
        super(context, null, R.attr.dropDownListViewStyle);
        this.c = new Rect();
        this.d = 0;
        this.e = 0;
        this.f = 0;
        this.g = 0;
        this.k = z;
        setCacheColorHint(0);
        try {
            Field declaredField = AbsListView.class.getDeclaredField("mIsChildViewEnabled");
            this.i = declaredField;
            declaredField.setAccessible(true);
        } catch (NoSuchFieldException e) {
            e.printStackTrace();
        }
    }

    private final void c(boolean z) {
        DropDownListViewSelectorDrawable pdVar = this.j;
        if (pdVar != null) {
            pdVar.b = z;
        }
    }

    private final void d() {
        Drawable selector = getSelector();
        if (selector != null && this.l && isPressed()) {
            selector.setState(getDrawableState());
        }
    }

    /* JADX WARN: Can't wrap try/catch for region: R(20:27|(1:29)|30|(1:37)|38|(1:40)|41|(1:(12:44|(1:46)|47|48|49|(2:51|(1:53))|(3:56|(1:58)(1:60)|59)|61|(1:65)|66|(1:68)|69)(1:72))(1:74)|73|(0)|47|48|49|(0)|(0)|61|(2:63|65)|66|(0)|69) */
    /* JADX WARN: Code restructure failed: missing block: B:70:0x00ea, code lost:
    
        r0 = move-exception;
     */
    /* JADX WARN: Code restructure failed: missing block: B:71:0x00eb, code lost:
    
        r0.printStackTrace();
     */
    /* JADX WARN: Removed duplicated region for block: B:23:0x001d  */
    /* JADX WARN: Removed duplicated region for block: B:24:0x0020  */
    /* JADX WARN: Removed duplicated region for block: B:46:0x0099  */
    /* JADX WARN: Removed duplicated region for block: B:51:0x00d9 A[Catch: IllegalAccessException -> 0x00ea, TryCatch #0 {IllegalAccessException -> 0x00ea, blocks: (B:49:0x00cd, B:51:0x00d9, B:53:0x00e6), top: B:48:0x00cd }] */
    /* JADX WARN: Removed duplicated region for block: B:56:0x00f0  */
    /* JADX WARN: Removed duplicated region for block: B:68:0x0120  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final boolean a(MotionEvent motionEvent, int i) {
        boolean z;
        int findPointerIndex;
        int i2;
        boolean z2;
        Drawable selector;
        boolean z3;
        View childAt;
        int actionMasked = motionEvent.getActionMasked();
        boolean z4 = false;
        switch (actionMasked) {
            case 1:
                z = false;
                findPointerIndex = motionEvent.findPointerIndex(NavInstructionTypeEnum);
                if (findPointerIndex >= 0) {
                    z = false;
                    break;
                } else {
                    int x = (int) motionEvent.getX(findPointerIndex);
                    int y = (int) motionEvent.getY(findPointerIndex);
                    int pointToPosition = pointToPosition(x, y);
                    if (pointToPosition == -1) {
                        z4 = true;
                        break;
                    } else {
                        View childAt2 = getChildAt(pointToPosition - getFirstVisiblePosition());
                        float f = x;
                        float f2 = y;
                        this.l = true;
                        drawableHotspotChanged(f, f2);
                        if (!isPressed()) {
                            setPressed(true);
                        }
                        layoutChildren();
                        int i3 = this.h;
                        if (i3 != -1 && (childAt = getChildAt(i3 - getFirstVisiblePosition())) != null && childAt != childAt2 && childAt.isPressed()) {
                            childAt.setPressed(false);
                        }
                        this.h = pointToPosition;
                        childAt2.drawableHotspotChanged(NavManeuverTypeEnum - childAt2.getLeft(), f2 - childAt2.getTop());
                        if (!childAt2.isPressed()) {
                            childAt2.setPressed(true);
                        }
                        Drawable selector2 = getSelector();
                        if (selector2 == null) {
                            i2 = pointToPosition;
                        } else if (pointToPosition != -1) {
                            i2 = pointToPosition;
                            z2 = true;
                            if (z2) {
                                selector2.setVisible(false, false);
                            }
                            Rect rect = this.c;
                            rect.set(childAt2.getLeft(), childAt2.getTop(), childAt2.getRight(), childAt2.getBottom());
                            rect.left -= this.d;
                            rect.top -= this.e;
                            rect.right += this.f;
                            rect.bottom += this.g;
                            z3 = this.i.getBoolean(this);
                            if (childAt2.isEnabled() != z3) {
                                this.i.set(this, Boolean.valueOf(!z3));
                                if (pointToPosition != -1) {
                                    refreshDrawableState();
                                }
                            }
                            if (z2) {
                                Rect rect2 = this.c;
                                float exactCenterX = rect2.exactCenterX();
                                float exactCenterY = rect2.exactCenterY();
                                selector2.setVisible(getVisibility() == 0, false);
                                selector2.setHotspot(exactCenterX, exactCenterY);
                            }
                            selector = getSelector();
                            if (selector != null && i2 != -1) {
                                selector.setHotspot(f, f2);
                            }
                            c(false);
                            refreshDrawableState();
                            if (actionMasked == 1) {
                                performItemClick(childAt2, i2, getItemIdAtPosition(i2));
                            }
                            z = true;
                            z4 = false;
                            break;
                        } else {
                            pointToPosition = -1;
                            i2 = -1;
                        }
                        z2 = false;
                        if (z2) {
                        }
                        Rect rect3 = this.c;
                        rect3.set(childAt2.getLeft(), childAt2.getTop(), childAt2.getRight(), childAt2.getBottom());
                        rect3.left -= this.d;
                        rect3.top -= this.e;
                        rect3.right += this.f;
                        rect3.bottom += this.g;
                        z3 = this.i.getBoolean(this);
                        if (childAt2.isEnabled() != z3) {
                        }
                        if (z2) {
                        }
                        selector = getSelector();
                        if (selector != null) {
                            selector.setHotspot(f, f2);
                        }
                        c(false);
                        refreshDrawableState();
                        if (actionMasked == 1) {
                        }
                        z = true;
                        z4 = false;
                    }
                }
                break;
            case 2:
                z = true;
                findPointerIndex = motionEvent.findPointerIndex(NavInstructionTypeEnum);
                if (findPointerIndex >= 0) {
                }
                break;
            case 3:
                z = false;
                break;
            default:
                z = true;
                z4 = false;
                break;
        }
        if (!z || z4) {
            this.l = false;
            setPressed(false);
            drawableStateChanged();
            View childAt3 = getChildAt(this.h - getFirstVisiblePosition());
            if (childAt3 != null) {
                childAt3.setPressed(false);
            }
        }
        if (IcuMessageFormat) {
            if (this.m == null) {
                this.m = new ViewDragTouchListener(this);
            }
            this.m.c(true);
            this.m.onTouch(this, motionEvent);
        } else {
            ViewDragTouchListener inVar = this.m;
            if (inVar != null) {
                inVar.c(false);
            }
        }
        return z;
    }

    public final int b(int i, int i2) {
        int listPaddingTop = getListPaddingTop();
        int listPaddingBottom = getListPaddingBottom();
        int dividerHeight = getDividerHeight();
        Drawable divider = getDivider();
        ListAdapter adapter = getAdapter();
        int i3 = listPaddingTop + listPaddingBottom;
        if (adapter == null) {
            return i3;
        }
        if (dividerHeight <= 0 || divider == null) {
            dividerHeight = 0;
        }
        int count = adapter.getCount();
        View view = null;
        int i4 = 0;
        int i5 = 0;
        while (i4 < count) {
            int itemViewType = adapter.getItemViewType(i4);
            int i6 = itemViewType != i5 ? itemViewType : i5;
            if (itemViewType != i5) {
                view = null;
            }
            view = adapter.getView(i4, view, this);
            ViewGroup.LayoutParams layoutParams = view.getLayoutParams();
            if (layoutParams == null) {
                layoutParams = generateDefaultLayoutParams();
                view.setLayoutParams(layoutParams);
            }
            view.measure(i, layoutParams.height > 0 ? View.MeasureSpec.makeMeasureSpec(layoutParams.height, 1073741824) : View.MeasureSpec.makeMeasureSpec(0, 0));
            view.forceLayout();
            if (i4 > 0) {
                i3 += dividerHeight;
            }
            i3 += view.getMeasuredHeight();
            if (i3 >= i2) {
                return i2;
            }
            i4++;
            i5 = i6;
        }
        return i3;
    }

    @Override // android.widget.ListView, android.widget.AbsListView, android.view.ViewGroup, android.view.View
    protected final void dispatchDraw(Canvas canvas) {
        Drawable selector;
        if (!this.c.isEmpty() && (selector = getSelector()) != null) {
            selector.setBounds(this.c);
            selector.draw(canvas);
        }
        super.dispatchDraw(canvas);
    }

    @Override // android.widget.AbsListView, android.view.ViewGroup, android.view.View
    protected final void drawableStateChanged() {
        if (this.b != null) {
            return;
        }
        super.drawableStateChanged();
        c(true);
        d();
    }

    @Override // android.view.ViewGroup, android.view.View
    public final boolean hasFocus() {
        return this.k || super.hasFocus();
    }

    @Override // android.view.View
    public final boolean hasWindowFocus() {
        return this.k || super.hasWindowFocus();
    }

    @Override // android.view.View
    public final boolean isFocused() {
        return this.k || super.isFocused();
    }

    @Override // android.view.View
    public final boolean isInTouchMode() {
        return (this.k && this.a) || super.isInTouchMode();
    }

    @Override // android.widget.ListView, android.widget.AbsListView, android.widget.AdapterView, android.view.ViewGroup, android.view.View
    protected final void onDetachedFromWindow() {
        this.b = null;
        super.onDetachedFromWindow();
    }

    @Override // android.view.View
    public boolean onHoverEvent(MotionEvent motionEvent) {
        int actionMasked = motionEvent.getActionMasked();
        if (actionMasked == 10) {
            if (this.b == null) {
                DropDownListViewFocusRunnable peVar = new DropDownListViewFocusRunnable(this);
                this.b = peVar;
                peVar.a.post(peVar);
                actionMasked = 10;
            } else {
                actionMasked = 10;
            }
        }
        boolean onHoverEvent = super.onHoverEvent(motionEvent);
        if (actionMasked == 9 || actionMasked == 7) {
            int pointToPosition = pointToPosition((int) motionEvent.getX(), (int) motionEvent.getY());
            if (pointToPosition != -1 && pointToPosition != getSelectedItemPosition()) {
                View childAt = getChildAt(pointToPosition - getFirstVisiblePosition());
                if (childAt.isEnabled()) {
                    setSelectionFromTop(pointToPosition, childAt.getTop() - getTop());
                }
                d();
            }
        } else {
            setSelection(-1);
        }
        return onHoverEvent;
    }

    @Override // android.widget.AbsListView, android.view.View
    public final boolean onTouchEvent(MotionEvent motionEvent) {
        switch (motionEvent.getAction()) {
            case 0:
                this.h = pointToPosition((int) motionEvent.getX(), (int) motionEvent.getY());
                break;
        }
        DropDownListViewFocusRunnable peVar = this.b;
        if (peVar != null) {
            DropDownListView pfVar = peVar.a;
            pfVar.b = null;
            pfVar.removeCallbacks(peVar);
        }
        return super.onTouchEvent(motionEvent);
    }

    @Override // android.widget.AbsListView
    public final void setSelector(Drawable drawable) {
        DropDownListViewSelectorDrawable pdVar = drawable != null ? new DropDownListViewSelectorDrawable(drawable) : null;
        this.j = pdVar;
        super.setSelector(pdVar);
        Rect rect = new Rect();
        if (drawable != null) {
            drawable.getPadding(rect);
        }
        this.d = rect.left;
        this.e = rect.top;
        this.f = rect.right;
        this.g = rect.bottom;
    }
}
