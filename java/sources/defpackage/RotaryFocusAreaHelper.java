package defpackage;

import android.view.View;
import j$.util.DesugarArrays;
import j$.util.function.Function;
import j$.util.function.IntPredicate;

/* compiled from: PG */
/* loaded from: classes.dex */
public final class RotaryFocusAreaHelper implements RotaryNudgeListener {
    public int[] a;
    private final View b;
    private int[] c;

    public RotaryFocusAreaHelper(View view) {
        this.b = view;
    }

    @Override // defpackage.RotaryNudgeListener
    public final void a(int[] iArr, int[] iArr2) {
        this.c = iArr;
        this.a = iArr2;
        this.b.refreshDrawableState();
    }

    public final int[] b(int i, Function function) {
        int[] iArr;
        int[] iArr2 = this.c;
        if (iArr2 == null) {
            iArr = (int[]) function.apply(Integer.valueOf(NavInstructionTypeEnum));
        } else {
            iArr = (int[]) function.apply(Integer.valueOf(NavInstructionTypeEnum + iArr2.length));
            int[] iArr3 = this.c;
            int length = iArr.length - 1;
            while (length >= 0 && iArr[length] == 0) {
                length--;
            }
            System.arraycopy(iArr3, 0, iArr, length + 1, iArr3.length);
        }
        return this.a != null ? DesugarArrays.stream(iArr).filter(new IntPredicate() { // from class: asi
            @Override // j$.util.function.IntPredicate
            public final /* synthetic */ IntPredicate and(IntPredicate intPredicate) {
                return IntPredicate.CC.$default$and(this, intPredicate);
            }

            @Override // j$.util.function.IntPredicate
            public final /* synthetic */ IntPredicate negate() {
                return IntPredicate.CC.$default$negate(this);
            }

            @Override // j$.util.function.IntPredicate
            public final /* synthetic */ IntPredicate or(IntPredicate intPredicate) {
                return IntPredicate.CC.$default$or(this, intPredicate);
            }

            @Override // j$.util.function.IntPredicate
            public final boolean test(final int i2) {
                return DesugarArrays.stream(RotaryFocusAreaHelper.this.a).noneMatch(new IntPredicate() { // from class: ash
                    @Override // j$.util.function.IntPredicate
                    public final /* synthetic */ IntPredicate and(IntPredicate intPredicate) {
                        return IntPredicate.CC.$default$and(this, intPredicate);
                    }

                    @Override // j$.util.function.IntPredicate
                    public final /* synthetic */ IntPredicate negate() {
                        return IntPredicate.CC.$default$negate(this);
                    }

                    @Override // j$.util.function.IntPredicate
                    public final /* synthetic */ IntPredicate or(IntPredicate intPredicate) {
                        return IntPredicate.CC.$default$or(this, intPredicate);
                    }

                    @Override // j$.util.function.IntPredicate
                    public final boolean test(int i3) {
                        return i2 == i3;
                    }
                });
            }
        }).toArray() : iArr;
    }
}
