package defpackage;

import java.io.IOException;

/* compiled from: PG */
/* loaded from: classes.dex */
public class ddu extends IOException {
    private static final long serialVersionUID = -1616151763072450476L;
    public boolean a;

    public ddu(IOException iOException) {
        super(iOException.getMessage(), iOException);
    }

    public static ddt a() {
        return new ddt();
    }

    public static ddu b() {
        return new ddu("Protocol message end-group tag did not match expected tag.");
    }

    public static ddu c() {
        return new ddu("Protocol message contained an invalid tag (zero).");
    }

    public static ddu d() {
        return new ddu("Protocol message had invalid UTF-8.");
    }

    static ddu e() {
        return new ddu("CodedInputStream encountered a malformed varint.");
    }

    public static ddu f() {
        return new ddu("CodedInputStream encountered an embedded string or message which claimed to have negative size.");
    }

    public static ddu g() {
        return new ddu("Failed to parse the message.");
    }

    static ddu h() {
        return new ddu("Protocol message was too large.  May be malicious.  Use CodedInputStream.setSizeLimit() to increase the size limit.");
    }

    public static ddu i() {
        return new ddu("While parsing a protocol message, the input ended unexpectedly in the middle of a field.  This could mean either that the input has been truncated or that an embedded message misreported its own length.");
    }

    final void j() {
        this.a = true;
    }

    public ddu(String str) {
        super(str);
    }
}
