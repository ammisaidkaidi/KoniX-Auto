package defpackage;

import android.accounts.Account;

/* compiled from: PG */
/* loaded from: classes.dex */
public final class SignInAccountRequestBuilder {
    public Account a;
    public DesugaredArraySet b;
    public String c;
    public String d;
    private final SignInOptionsValue e = bqo.b;

    public final SignInAccountRequest a() {
        return new SignInAccountRequest(this.a, this.b, this.c, this.d, this.e);
    }
}
