package defpackage;

import android.text.SpannableStringBuilder;
import android.text.TextUtils;
import j$.util.Collection;

/* compiled from: PG */
/* loaded from: classes.dex */
public final /* synthetic */ class asm implements Runnable {
    public final /* synthetic */ aso a;

    public /* synthetic */ asm(aso asoVar) {
        this.a = asoVar;
    }

    @Override // java.lang.Runnable
    public final void run() {
        aso asoVar = this.a;
        asoVar.a.getClass();
        if (asoVar.getLayout() == null) {
            asoVar.b = gy.a(asoVar, new asm(asoVar));
            return;
        }
        asoVar.b = null;
        if (Collection.EL.stream(asoVar.a).allMatch(asn.a)) {
            return;
        }
        SpannableStringBuilder spannableStringBuilder = new SpannableStringBuilder();
        int i = 0;
        String str = "";
        while (i < asoVar.a.size()) {
            amo amoVar = (amo) asoVar.a.get(i);
            SpannableStringBuilder append = spannableStringBuilder.append((CharSequence) str);
            if (amoVar.c.size() > 1) {
                for (CharSequence b : amoVar.c) {
                    b.length();
                    int i2 = amoVar.b;
                    int i3 = amoVar.a;
                    if (TextUtils.equals(b, asoVar.b(b))) {
                        break;
                    }
                }
            }
            CharSequence a = amoVar.a();
            int i4 = amoVar.a;
            b = asoVar.b(a);
            append.append(b);
            i++;
            str = "\n";
        }
        asoVar.setText(spannableStringBuilder);
    }
}
