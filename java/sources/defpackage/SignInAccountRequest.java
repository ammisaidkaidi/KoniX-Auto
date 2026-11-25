package defpackage;

import android.accounts.Account;
import java.util.Collections;
import java.util.HashSet;
import java.util.Iterator;
import java.util.Map;
import java.util.Set;

/* compiled from: PG */
/* loaded from: classes.dex */
public final class SignInAccountRequest {
    public final Account a;
    public final Set b;
    public final Set c;
    public final String d;
    public final String e;
    public final SignInOptionsValue f;
    public Integer g;
    private final Map h;

    public SignInAccountRequest(Account account, Set set, String str, String str2, SignInOptionsValue bqoVar) {
        this.a = account;
        Set emptySet = set == null ? Collections.emptySet() : Collections.unmodifiableSet(set);
        this.b = emptySet;
        Map emptyMap = Collections.emptyMap();
        this.h = emptyMap;
        this.d = str;
        this.e = str2;
        this.f = bqoVar;
        HashSet hashSet = new HashSet(emptySet);
        Iterator it = emptyMap.values().iterator();
        while (it.hasNext()) {
            Set set2 = ((StingEmptyComponentHolder) it.next()).a;
            hashSet.addAll(null);
        }
        this.c = Collections.unmodifiableSet(hashSet);
    }
}
