package defpackage;

import java.text.AttributedCharacterIterator;

/* compiled from: PG */
/* loaded from: classes.dex */
final class MessageFormatAttributeHolder {
    public AttributedCharacterIterator.Attribute a;
    public Object b;
    public int c;
    public int d;

    public MessageFormatAttributeHolder(Object obj, int i, int i2) {
        a(w.a, obj, i, i2);
    }

    public final void a(AttributedCharacterIterator.Attribute attribute, Object obj, int i, int i2) {
        this.a = attribute;
        this.b = obj;
        this.c = i;
        this.d = i2;
    }

    public MessageFormatAttributeHolder(AttributedCharacterIterator.Attribute attribute, Object obj, int i, int i2) {
        a(attribute, obj, i, i2);
    }
}
