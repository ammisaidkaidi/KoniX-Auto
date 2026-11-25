package defpackage;

import java.io.InvalidObjectException;
import java.text.Format;

/* compiled from: PG */
/* loaded from: classes.dex */
public final class MessageFormatField extends Format.Field {
    public static final MessageFormatField a = new MessageFormatField();
    private static final long serialVersionUID = 7510380454602616157L;

    protected MessageFormatField() {
        super("message argument field");
    }

    @Override // java.text.AttributedCharacterIterator.Attribute
    protected Object readResolve() {
        if (getClass() != MessageFormatField.class) {
            throw new InvalidObjectException("A subclass of MessageFormat.Field must implement readResolve.");
        }
        String name = getName();
        MessageFormatField wVar = a;
        if (name.equals(wVar.getName())) {
            return wVar;
        }
        throw new InvalidObjectException("Unknown attribute name.");
    }
}
