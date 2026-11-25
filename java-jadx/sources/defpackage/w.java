package defpackage;

import java.io.InvalidObjectException;
import java.text.Format;

/* compiled from: PG */
/* loaded from: classes.dex */
public final class w extends Format.Field {
    public static final w a = new w();
    private static final long serialVersionUID = 7510380454602616157L;

    protected w() {
        super("message argument field");
    }

    @Override // java.text.AttributedCharacterIterator.Attribute
    protected Object readResolve() {
        if (getClass() != w.class) {
            throw new InvalidObjectException("A subclass of MessageFormat.Field must implement readResolve.");
        }
        String name = getName();
        w wVar = a;
        if (name.equals(wVar.getName())) {
            return wVar;
        }
        throw new InvalidObjectException("Unknown attribute name.");
    }
}
