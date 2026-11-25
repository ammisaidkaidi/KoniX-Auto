package defpackage;

import android.util.Base64;

/* compiled from: PG */
/* loaded from: classes.dex */
public final class CombinedFlagsFactory {
    public final String a;
    public final boolean b;
    public final boolean c;

    public CombinedFlagsFactory(String str) {
        this(str, false, false);
    }

    private CombinedFlagsFactory(String str, boolean z, boolean z2) {
        this.a = str;
        this.b = z;
        this.c = z2;
    }

    public final PhenotypeCombinedFlags a(String str, long j) {
        return new PhenotypeCombinedFlags(this.a, str, Long.valueOf(ProtoMessageTwoIntsAndFlagValue), new FlagTypeConverter(this.b, this.c, cgk.c, new FlagTypeMapper(Long.class, 0)));
    }

    public final PhenotypeCombinedFlags b(String str, boolean z) {
        return new PhenotypeCombinedFlags(this.a, str, Boolean.valueOf(IcuMessageFormat), new FlagTypeConverter(this.b, this.c, cgk.a, new FlagTypeMapper(Boolean.class, 1)));
    }

    public final PhenotypeCombinedFlags c(String str, Object obj, final FlagValueFunction cgnVar) {
        final int i = 0;
        final int i2 = 1;
        return new PhenotypeCombinedFlags(this.a, str, obj, new FlagTypeConverter(this.b, this.c, new FlagValueFunction() { // from class: cgl
            @Override // defpackage.FlagValueFunction
            public final Object a(Object obj2) {
                switch (NavInstructionTypeEnum) {
                    case 0:
                        return cgnVar.a(Base64.decode((String) obj2, 3));
                    default:
                        return cgnVar.a((byte[]) obj2);
                }
            }
        }, new FlagValueFunction() { // from class: cgl
            @Override // defpackage.FlagValueFunction
            public final Object a(Object obj2) {
                switch (i2) {
                    case 0:
                        return cgnVar.a(Base64.decode((String) obj2, 3));
                    default:
                        return cgnVar.a((byte[]) obj2);
                }
            }
        }));
    }

    public final CombinedFlagsFactory d() {
        return new CombinedFlagsFactory(this.a, true, this.c);
    }

    public final CombinedFlagsFactory e() {
        return new CombinedFlagsFactory(this.a, this.b, true);
    }
}
