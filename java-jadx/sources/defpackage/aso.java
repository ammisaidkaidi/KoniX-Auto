package defpackage;

import android.content.Context;
import android.text.Layout;
import android.text.SpannableStringBuilder;
import android.text.Spanned;
import android.text.TextUtils;
import android.util.AttributeSet;
import java.util.Collections;
import java.util.List;
import java.util.Scanner;

/* compiled from: PG */
/* loaded from: classes.dex */
public final class aso extends asl {
    public List a;
    public gy b;

    public aso(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.a = Collections.emptyList();
    }

    @Override // defpackage.asl
    public final void a(amo amoVar) {
        this.a = Collections.singletonList(amoVar);
        if (this.b == null) {
            this.b = gy.a(this, new asm(this));
        }
        setText(amoVar.a());
    }

    public final CharSequence b(CharSequence charSequence) {
        Layout layout = getLayout();
        layout.getClass();
        int width = layout.getWidth();
        int length = charSequence.length();
        int i = 0;
        boolean z = false;
        int i2 = 0;
        int i3 = 0;
        while (!z) {
            int breakText = getPaint().breakText(charSequence, i2, length, true, width, null) + i2;
            int indexOf = TextUtils.indexOf(charSequence, "\n", i2, breakText);
            if (indexOf != -1) {
                breakText = Math.min(breakText, indexOf + 1);
            }
            i3++;
            if (i3 == Integer.MAX_VALUE) {
                z = true;
            } else if (breakText > length - 1) {
                z = true;
            }
            if (!z && !Character.isWhitespace(charSequence.charAt(breakText))) {
                int i4 = 0;
                while (!Character.isWhitespace(charSequence.charAt((breakText - i4) - 1))) {
                    i4++;
                    if (breakText - i4 == i2 || i4 >= breakText) {
                        i4 = 0;
                        break;
                    }
                }
                breakText -= i4;
            }
            int i5 = i2;
            i2 = breakText;
            i = i5;
        }
        SpannableStringBuilder spannableStringBuilder = new SpannableStringBuilder();
        spannableStringBuilder.append(charSequence.subSequence(0, i));
        Scanner scanner = new Scanner(charSequence.subSequence(i, length).toString());
        if (scanner.hasNextLine()) {
            spannableStringBuilder.append(TextUtils.ellipsize(scanner.nextLine(), getPaint(), width, TextUtils.TruncateAt.END));
            if (charSequence instanceof Spanned) {
                TextUtils.copySpansFrom((Spanned) charSequence, 0, spannableStringBuilder.length(), Object.class, spannableStringBuilder, 0);
            }
        }
        return spannableStringBuilder;
    }
}
