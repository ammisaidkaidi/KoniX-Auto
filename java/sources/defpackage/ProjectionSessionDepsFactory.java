package defpackage;

/* compiled from: PG */
/* loaded from: classes.dex */
public final class ProjectionSessionDepsFactory implements DaggerProvider {
    private final DaggerProviderInterface a;
    private final DaggerProviderInterface b;
    private final DaggerProviderInterface c;
    private final DaggerProviderInterface d;
    private final DaggerProviderInterface e;
    private final DaggerProviderInterface f;
    private final DaggerProviderInterface g;
    private final DaggerProviderInterface h;
    private final DaggerProviderInterface i;
    private final DaggerProviderInterface j;
    private final DaggerProviderInterface k;
    private final DaggerProviderInterface l;
    private final DaggerProviderInterface m;
    private final DaggerProviderInterface n;
    private final DaggerProviderInterface o;
    private final DaggerProviderInterface p;
    private final DaggerProviderInterface q;

    public ProjectionSessionDepsFactory(DaggerProviderInterface dnyVar, DaggerProviderInterface dnyVar2, DaggerProviderInterface dnyVar3, DaggerProviderInterface dnyVar4, DaggerProviderInterface dnyVar5, DaggerProviderInterface dnyVar6, DaggerProviderInterface dnyVar7, DaggerProviderInterface dnyVar8, DaggerProviderInterface dnyVar9, DaggerProviderInterface dnyVar10, DaggerProviderInterface dnyVar11, DaggerProviderInterface dnyVar12, DaggerProviderInterface dnyVar13, DaggerProviderInterface dnyVar14, DaggerProviderInterface dnyVar15, DaggerProviderInterface dnyVar16, DaggerProviderInterface dnyVar17) {
        this.a = dnyVar;
        this.b = dnyVar2;
        this.c = dnyVar3;
        this.d = dnyVar4;
        this.e = dnyVar5;
        this.f = dnyVar6;
        this.g = dnyVar7;
        this.h = dnyVar8;
        this.i = dnyVar9;
        this.j = dnyVar10;
        this.k = dnyVar11;
        this.l = dnyVar12;
        this.m = dnyVar13;
        this.n = dnyVar14;
        this.o = dnyVar15;
        this.p = dnyVar16;
        this.q = dnyVar17;
    }

    @Override // defpackage.DaggerProviderInterface
    /* renamed from: b, reason: merged with bridge method [inline-methods] */
    public final ProjectionSessionFactoryDeps a() {
        return new ProjectionSessionFactoryDeps(this.a, this.b, this.c, this.d, this.e, this.f, this.g, this.h, this.i, this.j, this.k, this.l, this.n, this.o, this.p, this.q);
    }
}
