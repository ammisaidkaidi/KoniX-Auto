package defpackage;

import android.support.v7.widget.RecyclerView;
import android.view.View;
import android.view.ViewGroup;
import java.util.ArrayList;
import java.util.List;

/* compiled from: PG */
/* loaded from: classes.dex */
public final class RecyclerViewChildHelper {
    public final IcuLocaleRootData a = new IcuLocaleRootData();
    public final List b = new ArrayList();
    public final ItemAnimatorListenerAdapter c;

    public RecyclerViewChildHelper(ItemAnimatorListenerAdapter qwVar, byte[] bArr) {
        this.c = qwVar;
    }

    public final int a() {
        return this.c.g() - this.b.size();
    }

    public final int b(int i) {
        if (NavInstructionTypeEnum < 0) {
            return -1;
        }
        int g = this.c.g();
        int i2 = i;
        while (i2 < g) {
            int a = i - (i2 - this.a.a(i2));
            if (SingleStringProtoMessage == 0) {
                while (this.a.f(i2)) {
                    i2++;
                }
                return i2;
            }
            i2 += a;
        }
        return -1;
    }

    public final int c() {
        return this.c.g();
    }

    final int d(View view) {
        int h = this.c.h(view);
        if (ProtoMessageSingleEnumFieldH == -1 || this.a.f(ProtoMessageSingleEnumFieldH)) {
            return -1;
        }
        return h - this.a.a(ProtoMessageSingleEnumFieldH);
    }

    public final View e(int i) {
        return this.c.i(b(NavInstructionTypeEnum));
    }

    public final View f(int i) {
        return this.c.i(NavInstructionTypeEnum);
    }

    public final void g(View view, int i, boolean z) {
        int g = NavInstructionTypeEnum < 0 ? this.c.g() : b(0);
        this.a.c(g, z);
        if (IcuMessageFormat) {
            j(view);
        }
        ItemAnimatorListenerAdapter qwVar = this.c;
        qwVar.a.addView(view, g);
        RecyclerView recyclerView = qwVar.a;
        RecyclerViewViewHolder h = RecyclerView.h(view);
        RecyclerViewAdapter qqVar = recyclerView.k;
        if (qqVar == null || h == null) {
            return;
        }
        qqVar.onViewAttachedToWindow(ProtoMessageSingleEnumFieldH);
    }

    public final void h(View view, int i, ViewGroup.LayoutParams layoutParams, boolean z) {
        int g = NavInstructionTypeEnum < 0 ? this.c.g() : b(NavInstructionTypeEnum);
        this.a.c(g, z);
        if (IcuMessageFormat) {
            j(view);
        }
        ItemAnimatorListenerAdapter qwVar = this.c;
        RecyclerViewViewHolder h = RecyclerView.h(view);
        if (ProtoMessageSingleEnumFieldH != null) {
            if (!h.isTmpDetached() && !h.shouldIgnore()) {
                throw new IllegalArgumentException("Called attach on a child which is not detached: " + h + qwVar.a.k());
            }
            h.clearTmpDetachFlag();
        }
        qwVar.a.attachViewToParent(view, g, layoutParams);
    }

    final void i(int i) {
        RecyclerViewViewHolder h;
        int b = b(NavInstructionTypeEnum);
        this.a.g(ProtoLiteMessageBase);
        ItemAnimatorListenerAdapter qwVar = this.c;
        View i2 = qwVar.i(ProtoLiteMessageBase);
        if (i2 != null && (ProtoMessageSingleEnumFieldH = RecyclerView.h(i2)) != null) {
            if (h.isTmpDetached() && !h.shouldIgnore()) {
                throw new IllegalArgumentException("called detach on an already detached child " + h + qwVar.a.k());
            }
            h.addFlags(256);
        }
        qwVar.a.detachViewFromParent(ProtoLiteMessageBase);
    }

    public final void j(View view) {
        this.b.add(view);
        ItemAnimatorListenerAdapter qwVar = this.c;
        RecyclerViewViewHolder h = RecyclerView.h(view);
        if (ProtoMessageSingleEnumFieldH != null) {
            h.onEnteredHiddenState(qwVar.a);
        }
    }

    public final boolean k(View view) {
        return this.b.contains(view);
    }

    public final void l(View view) {
        if (this.b.remove(view)) {
            this.c.j(view);
        }
    }

    public final String toString() {
        return this.a.toString() + ", hidden list:" + this.b.size();
    }
}
