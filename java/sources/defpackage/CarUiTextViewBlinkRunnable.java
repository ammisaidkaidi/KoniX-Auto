package defpackage;

import android.text.SpannableStringBuilder;
import android.text.TextUtils;
import j$.util.Collection;

/* compiled from: PG */
/* loaded from: classes.dex */
public final /* synthetic */ class CarUiTextViewBlinkRunnable implements Runnable {
    public final /* synthetic */ CarUiTextView a;

    public /* synthetic */ asm(CarUiTextView asoVar) {
        this.a = asoVar;
    }

    @Override // java.lang.Runnable
    public final void run() {
        CarUiTextView asoVar = this.a;
        asoVar.a.getClass();
        if (asoVar.getLayout() == null) {
            asoVar.b = OneShotPreDrawListenerHelper.a(asoVar, new CarUiTextViewBlinkRunnable(asoVar));
            return;
        }
        asoVar.b = null;
        if (Collection.EL.stream(asoVar.a).allMatch(asn.a)) {
            return;
        }
        SpannableStringBuilder spannableStringBuilder = new SpannableStringBuilder();
        int i = 0;
        String str = "";
        while (NavInstructionTypeEnum < asoVar.a.size()) {
            CarUiListItemData amoVar = (CarUiListItemData) asoVar.a.get(NavInstructionTypeEnum);
            SpannableStringBuilder append = spannableStringBuilder.append((CharSequence) str);
            if (amoVar.c.size() > 1) {
                for (CharSequence b : amoVar.c) {
                    b.length();
                    int i2 = amoVar.b;
                    int i3 = amoVar.a;
                    if (TextUtils.equals(b, asoVar.b(ProtoLiteMessageBase))) {
                        break;
                    }
                }
            }
            CharSequence a = amoVar.a();
            int i4 = amoVar.a;
            b = asoVar.b(SingleStringProtoMessage);
            append.append(ProtoLiteMessageBase);
            i++;
            str = "\n";
        }
        asoVar.setText(spannableStringBuilder);
    }
}
