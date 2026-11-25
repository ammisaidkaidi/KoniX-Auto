.class public final Lddb;
.super Ljava/lang/Object;
.source "PG"


# static fields
.field public static final a:Lddb;


# instance fields
.field public final b:Ldfo;

.field public c:Z

.field private d:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lddb;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lddb;-><init>([B)V

    sput-object v0, Lddb;->a:Lddb;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x10

    invoke-static {v0}, Ldfo;->b(I)Ldfo;

    move-result-object v0

    iput-object v0, p0, Lddb;->b:Ldfo;

    return-void
.end method

.method private constructor <init>([B)V
    .locals 0

    .line 2
    const/4 p1, 0x0

    invoke-static {p1}, Ldfo;->b(I)Ldfo;

    move-result-object p1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lddb;->b:Ldfo;

    .line 3
    invoke-virtual {p0}, Lddb;->e()V

    .line 4
    invoke-virtual {p0}, Lddb;->e()V

    return-void
.end method

.method static a(Ldgc;ILjava/lang/Object;)I
    .locals 2

    .line 1
    invoke-static {p1}, Ldcu;->ab(I)I

    move-result p1

    .line 2
    sget-object v0, Ldgc;->j:Ldgc;

    if-ne p0, v0, :cond_0

    .line 3
    move-object v0, p2

    check-cast v0, Lder;

    invoke-static {v0}, Ldds;->j(Lder;)V

    add-int/2addr p1, p1

    .line 4
    :cond_0
    sget-object v0, Ldgd;->a:Ldgd;

    invoke-virtual {p0}, Ldgc;->ordinal()I

    move-result p0

    const/4 v0, 0x4

    const/16 v1, 0x8

    packed-switch p0, :pswitch_data_0

    .line 30
    new-instance p0, Ljava/lang/RuntimeException;

    .line 31
    const-string p1, "There is no way to get here, but the compiler thinks otherwise."

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 8
    :pswitch_0
    check-cast p2, Ljava/lang/Long;

    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-static {v0, v1}, Ldcu;->Y(J)I

    move-result v0

    goto/16 :goto_0

    .line 9
    :pswitch_1
    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p0

    invoke-static {p0}, Ldcu;->W(I)I

    move-result v0

    goto/16 :goto_0

    .line 10
    :pswitch_2
    check-cast p2, Ljava/lang/Long;

    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    const/16 v0, 0x8

    goto/16 :goto_0

    .line 11
    :pswitch_3
    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    goto/16 :goto_0

    .line 5
    :pswitch_4
    instance-of p0, p2, Lddm;

    if-eqz p0, :cond_1

    .line 6
    check-cast p2, Lddm;

    invoke-interface {p2}, Lddm;->a()I

    move-result p0

    invoke-static {p0}, Ldcu;->N(I)I

    move-result v0

    goto/16 :goto_0

    .line 7
    :cond_1
    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p0

    invoke-static {p0}, Ldcu;->N(I)I

    move-result v0

    goto/16 :goto_0

    .line 12
    :pswitch_5
    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p0

    invoke-static {p0}, Ldcu;->ad(I)I

    move-result v0

    goto/16 :goto_0

    .line 13
    :pswitch_6
    instance-of p0, p2, Ldcl;

    if-eqz p0, :cond_2

    .line 14
    check-cast p2, Ldcl;

    invoke-static {p2}, Ldcu;->I(Ldcl;)I

    move-result v0

    goto/16 :goto_0

    .line 15
    :cond_2
    check-cast p2, [B

    invoke-static {p2}, Ldcu;->G([B)I

    move-result v0

    goto/16 :goto_0

    .line 19
    :pswitch_7
    instance-of p0, p2, Lddz;

    if-eqz p0, :cond_3

    .line 20
    check-cast p2, Lddz;

    invoke-static {p2}, Ldcu;->Q(Ldea;)I

    move-result v0

    goto :goto_0

    .line 21
    :cond_3
    check-cast p2, Lder;

    invoke-static {p2}, Ldcu;->S(Lder;)I

    move-result v0

    goto :goto_0

    .line 22
    :pswitch_8
    check-cast p2, Lder;

    invoke-static {p2}, Ldcu;->L(Lder;)I

    move-result v0

    goto :goto_0

    .line 16
    :pswitch_9
    instance-of p0, p2, Ldcl;

    if-eqz p0, :cond_4

    .line 17
    check-cast p2, Ldcl;

    invoke-static {p2}, Ldcu;->I(Ldcl;)I

    move-result v0

    goto :goto_0

    .line 18
    :cond_4
    check-cast p2, Ljava/lang/String;

    invoke-static {p2}, Ldcu;->aa(Ljava/lang/String;)I

    move-result v0

    goto :goto_0

    .line 23
    :pswitch_a
    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    const/4 v0, 0x1

    goto :goto_0

    .line 24
    :pswitch_b
    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    goto :goto_0

    .line 25
    :pswitch_c
    check-cast p2, Ljava/lang/Long;

    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    const/16 v0, 0x8

    goto :goto_0

    .line 26
    :pswitch_d
    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p0

    invoke-static {p0}, Ldcu;->N(I)I

    move-result v0

    goto :goto_0

    .line 27
    :pswitch_e
    check-cast p2, Ljava/lang/Long;

    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-static {v0, v1}, Ldcu;->af(J)I

    move-result v0

    goto :goto_0

    .line 28
    :pswitch_f
    check-cast p2, Ljava/lang/Long;

    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-static {v0, v1}, Ldcu;->af(J)I

    move-result v0

    goto :goto_0

    .line 29
    :pswitch_10
    check-cast p2, Ljava/lang/Float;

    invoke-virtual {p2}, Ljava/lang/Float;->floatValue()F

    goto :goto_0

    .line 30
    :pswitch_11
    check-cast p2, Ljava/lang/Double;

    invoke-virtual {p2}, Ljava/lang/Double;->doubleValue()D

    const/16 v0, 0x8

    .line 6
    :goto_0
    add-int/2addr p1, v0

    return p1

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method static g(Ldcu;Ldgc;ILjava/lang/Object;)V
    .locals 1

    .line 1
    sget-object v0, Ldgc;->j:Ldgc;

    if-eq p1, v0, :cond_3

    iget v0, p1, Ldgc;->t:I

    .line 2
    invoke-virtual {p0, p2, v0}, Ldcu;->A(II)V

    .line 3
    sget-object p2, Ldgd;->a:Ldgd;

    invoke-virtual {p1}, Ldgc;->ordinal()I

    move-result p1

    packed-switch p1, :pswitch_data_0

    return-void

    .line 7
    :pswitch_0
    check-cast p3, Ljava/lang/Long;

    invoke-virtual {p3}, Ljava/lang/Long;->longValue()J

    move-result-wide p1

    invoke-virtual {p0, p1, p2}, Ldcu;->au(J)V

    return-void

    .line 8
    :pswitch_1
    check-cast p3, Ljava/lang/Integer;

    invoke-virtual {p3}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-virtual {p0, p1}, Ldcu;->as(I)V

    return-void

    .line 9
    :pswitch_2
    check-cast p3, Ljava/lang/Long;

    invoke-virtual {p3}, Ljava/lang/Long;->longValue()J

    move-result-wide p1

    invoke-virtual {p0, p1, p2}, Ldcu;->r(J)V

    return-void

    .line 10
    :pswitch_3
    check-cast p3, Ljava/lang/Integer;

    invoke-virtual {p3}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-virtual {p0, p1}, Ldcu;->p(I)V

    return-void

    .line 4
    :pswitch_4
    instance-of p1, p3, Lddm;

    if-eqz p1, :cond_0

    .line 5
    check-cast p3, Lddm;

    invoke-interface {p3}, Lddm;->a()I

    move-result p1

    invoke-virtual {p0, p1}, Ldcu;->t(I)V

    return-void

    .line 6
    :cond_0
    check-cast p3, Ljava/lang/Integer;

    invoke-virtual {p3}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-virtual {p0, p1}, Ldcu;->t(I)V

    return-void

    .line 11
    :pswitch_5
    check-cast p3, Ljava/lang/Integer;

    invoke-virtual {p3}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-virtual {p0, p1}, Ldcu;->C(I)V

    return-void

    .line 12
    :pswitch_6
    instance-of p1, p3, Ldcl;

    if-eqz p1, :cond_1

    .line 13
    check-cast p3, Ldcl;

    invoke-virtual {p0, p3}, Ldcu;->n(Ldcl;)V

    return-void

    .line 14
    :cond_1
    check-cast p3, [B

    .line 15
    array-length p1, p3

    .line 14
    invoke-virtual {p0, p3, p1}, Ldcu;->F([BI)V

    return-void

    .line 19
    :pswitch_7
    check-cast p3, Lder;

    invoke-virtual {p0, p3}, Ldcu;->v(Lder;)V

    return-void

    .line 20
    :pswitch_8
    check-cast p3, Lder;

    invoke-virtual {p0, p3}, Ldcu;->aq(Lder;)V

    return-void

    .line 16
    :pswitch_9
    instance-of p1, p3, Ldcl;

    if-eqz p1, :cond_2

    .line 17
    check-cast p3, Ldcl;

    invoke-virtual {p0, p3}, Ldcu;->n(Ldcl;)V

    return-void

    .line 18
    :cond_2
    check-cast p3, Ljava/lang/String;

    invoke-virtual {p0, p3}, Ldcu;->z(Ljava/lang/String;)V

    return-void

    .line 21
    :pswitch_a
    check-cast p3, Ljava/lang/Boolean;

    invoke-virtual {p3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    invoke-virtual {p0, p1}, Ldcu;->j(B)V

    return-void

    .line 22
    :pswitch_b
    check-cast p3, Ljava/lang/Integer;

    invoke-virtual {p3}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-virtual {p0, p1}, Ldcu;->p(I)V

    return-void

    .line 23
    :pswitch_c
    check-cast p3, Ljava/lang/Long;

    invoke-virtual {p3}, Ljava/lang/Long;->longValue()J

    move-result-wide p1

    invoke-virtual {p0, p1, p2}, Ldcu;->r(J)V

    return-void

    .line 24
    :pswitch_d
    check-cast p3, Ljava/lang/Integer;

    invoke-virtual {p3}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-virtual {p0, p1}, Ldcu;->t(I)V

    return-void

    .line 25
    :pswitch_e
    check-cast p3, Ljava/lang/Long;

    invoke-virtual {p3}, Ljava/lang/Long;->longValue()J

    move-result-wide p1

    invoke-virtual {p0, p1, p2}, Ldcu;->E(J)V

    return-void

    .line 26
    :pswitch_f
    check-cast p3, Ljava/lang/Long;

    invoke-virtual {p3}, Ljava/lang/Long;->longValue()J

    move-result-wide p1

    invoke-virtual {p0, p1, p2}, Ldcu;->E(J)V

    return-void

    .line 27
    :pswitch_10
    check-cast p3, Ljava/lang/Float;

    invoke-virtual {p3}, Ljava/lang/Float;->floatValue()F

    move-result p1

    invoke-virtual {p0, p1}, Ldcu;->ap(F)V

    return-void

    .line 28
    :pswitch_11
    check-cast p3, Ljava/lang/Double;

    invoke-virtual {p3}, Ljava/lang/Double;->doubleValue()D

    move-result-wide p1

    invoke-virtual {p0, p1, p2}, Ldcu;->an(D)V

    return-void

    .line 29
    :cond_3
    check-cast p3, Lder;

    invoke-static {p3}, Ldds;->j(Lder;)V

    const/4 p1, 0x3

    .line 30
    invoke-virtual {p0, p2, p1}, Ldcu;->A(II)V

    invoke-virtual {p0, p3}, Ldcu;->aq(Lder;)V

    const/4 p1, 0x4

    invoke-virtual {p0, p2, p1}, Ldcu;->A(II)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static j(Lddj;Ljava/lang/Object;)I
    .locals 1

    .line 1
    iget-object p0, p0, Lddj;->c:Ldgc;

    const v0, 0x13f38d82

    invoke-static {p0, v0, p1}, Lddb;->a(Ldgc;ILjava/lang/Object;)I

    move-result p0

    return p0
.end method

.method private static m(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    .line 1
    instance-of v0, p0, Ldev;

    if-eqz v0, :cond_0

    .line 2
    check-cast p0, Ldev;

    invoke-interface {p0}, Ldev;->c()Ldev;

    move-result-object p0

    return-object p0

    .line 3
    :cond_0
    instance-of v0, p0, [B

    if-eqz v0, :cond_1

    .line 4
    check-cast p0, [B

    .line 5
    array-length v0, p0

    new-array v1, v0, [B

    .line 6
    const/4 v2, 0x0

    invoke-static {p0, v2, v1, v2, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v1

    :cond_1
    return-object p0
.end method

.method private static n(Ljava/util/Map$Entry;)Z
    .locals 3

    .line 1
    invoke-interface {p0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lddj;

    .line 2
    invoke-virtual {v0}, Lddj;->a()Ldgd;

    move-result-object v0

    sget-object v1, Ldgd;->i:Ldgd;

    const/4 v2, 0x1

    if-ne v0, v1, :cond_2

    .line 3
    invoke-interface {p0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p0

    .line 4
    instance-of v0, p0, Lder;

    if-eqz v0, :cond_0

    .line 5
    check-cast p0, Lder;

    invoke-interface {p0}, Lder;->l()Z

    move-result p0

    if-nez p0, :cond_2

    const/4 p0, 0x0

    return p0

    .line 6
    :cond_0
    instance-of p0, p0, Lddz;

    if-eqz p0, :cond_1

    return v2

    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    .line 7
    const-string v0, "Wrong object type used with protocol message reflection."

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2
    return v2
.end method


# virtual methods
.method public final b(Ljava/util/Map$Entry;)I
    .locals 6

    .line 1
    invoke-interface {p1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lddj;

    .line 2
    invoke-interface {p1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    .line 3
    invoke-virtual {v0}, Lddj;->a()Ldgd;

    move-result-object v2

    sget-object v3, Ldgd;->i:Ldgd;

    if-ne v2, v3, :cond_1

    .line 5
    instance-of v0, v1, Lddz;

    const/4 v2, 0x3

    const v3, 0x13f38d82

    const/4 v4, 0x2

    const/4 v5, 0x1

    if-eqz v0, :cond_0

    .line 6
    invoke-interface {p1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lddj;

    check-cast v1, Lddz;

    .line 7
    invoke-static {v5}, Ldcu;->ab(I)I

    move-result p1

    add-int/2addr p1, p1

    invoke-static {v4, v3}, Ldcu;->ac(II)I

    move-result v0

    add-int/2addr p1, v0

    .line 8
    invoke-static {v2, v1}, Ldcu;->P(ILdea;)I

    move-result v0

    add-int/2addr p1, v0

    return p1

    .line 9
    :cond_0
    invoke-interface {p1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lddj;

    check-cast v1, Lder;

    .line 10
    invoke-static {v5}, Ldcu;->ab(I)I

    move-result p1

    add-int/2addr p1, p1

    invoke-static {v4, v3}, Ldcu;->ac(II)I

    move-result v0

    add-int/2addr p1, v0

    invoke-static {v2}, Ldcu;->ab(I)I

    move-result v0

    .line 11
    invoke-static {v1}, Ldcu;->S(Lder;)I

    move-result v1

    add-int/2addr v0, v1

    add-int/2addr p1, v0

    return p1

    .line 4
    :cond_1
    invoke-static {v0, v1}, Lddb;->j(Lddj;Ljava/lang/Object;)I

    move-result p1

    return p1
.end method

.method public final c()Lddb;
    .locals 4

    .line 1
    new-instance v0, Lddb;

    invoke-direct {v0}, Lddb;-><init>()V

    const/4 v1, 0x0

    :goto_0
    iget-object v2, p0, Lddb;->b:Ldfo;

    .line 2
    invoke-virtual {v2}, Ldfo;->a()I

    move-result v2

    if-ge v1, v2, :cond_0

    iget-object v2, p0, Lddb;->b:Ldfo;

    .line 3
    invoke-virtual {v2, v1}, Ldfo;->f(I)Ljava/util/Map$Entry;

    move-result-object v2

    .line 4
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lddj;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v0, v3, v2}, Lddb;->l(Lddj;Ljava/lang/Object;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lddb;->b:Ldfo;

    .line 5
    invoke-virtual {v1}, Ldfo;->c()Ljava/lang/Iterable;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 6
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lddj;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v0, v3, v2}, Lddb;->l(Lddj;Ljava/lang/Object;)V

    goto :goto_1

    :cond_1
    iget-boolean v1, p0, Lddb;->d:Z

    iput-boolean v1, v0, Lddb;->d:Z

    return-object v0
.end method

.method public final bridge synthetic clone()Ljava/lang/Object;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lddb;->c()Lddb;

    move-result-object v0

    return-object v0
.end method

.method public final d()Ljava/util/Iterator;
    .locals 2

    .line 1
    iget-boolean v0, p0, Lddb;->d:Z

    if-eqz v0, :cond_0

    new-instance v0, Lddy;

    iget-object v1, p0, Lddb;->b:Ldfo;

    invoke-virtual {v1}, Ldfo;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    invoke-direct {v0, v1}, Lddy;-><init>(Ljava/util/Iterator;)V

    return-object v0

    :cond_0
    iget-object v0, p0, Lddb;->b:Ldfo;

    .line 2
    invoke-virtual {v0}, Ldfo;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method

.method public final e()V
    .locals 3

    .line 1
    iget-boolean v0, p0, Lddb;->c:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lddb;->b:Ldfo;

    iget-boolean v1, v0, Ldfo;->c:Z

    if-nez v1, :cond_2

    const/4 v1, 0x0

    :goto_0
    invoke-virtual {v0}, Ldfo;->a()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 2
    invoke-virtual {v0, v1}, Ldfo;->f(I)Ljava/util/Map$Entry;

    move-result-object v2

    .line 3
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lddj;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 4
    :cond_1
    invoke-virtual {v0}, Ldfo;->c()Ljava/lang/Iterable;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 5
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lddj;

    goto :goto_1

    :cond_2
    iget-boolean v1, v0, Ldfo;->c:Z

    const/4 v2, 0x1

    if-nez v1, :cond_5

    iget-object v1, v0, Ldfo;->b:Ljava/util/Map;

    .line 6
    invoke-interface {v1}, Ljava/util/Map;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 7
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v1

    goto :goto_2

    .line 11
    :cond_3
    iget-object v1, v0, Ldfo;->b:Ljava/util/Map;

    .line 8
    invoke-static {v1}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v1

    .line 7
    :goto_2
    iput-object v1, v0, Ldfo;->b:Ljava/util/Map;

    iget-object v1, v0, Ldfo;->d:Ljava/util/Map;

    .line 9
    invoke-interface {v1}, Ljava/util/Map;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 10
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v1

    goto :goto_3

    :cond_4
    iget-object v1, v0, Ldfo;->d:Ljava/util/Map;

    .line 11
    invoke-static {v1}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v1

    .line 10
    :goto_3
    iput-object v1, v0, Ldfo;->d:Ljava/util/Map;

    iput-boolean v2, v0, Ldfo;->c:Z

    :cond_5
    iput-boolean v2, p0, Lddb;->c:Z

    return-void
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 1

    .line 1
    if-ne p0, p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    instance-of v0, p1, Lddb;

    if-nez v0, :cond_1

    const/4 p1, 0x0

    return p1

    .line 2
    :cond_1
    check-cast p1, Lddb;

    iget-object v0, p0, Lddb;->b:Ldfo;

    .line 3
    iget-object p1, p1, Lddb;->b:Ldfo;

    invoke-virtual {v0, p1}, Ldfo;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public final f(Ljava/util/Map$Entry;)V
    .locals 3

    .line 1
    invoke-interface {p1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lddj;

    .line 2
    invoke-interface {p1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p1

    .line 3
    instance-of v1, p1, Lddz;

    if-nez v1, :cond_3

    .line 4
    invoke-virtual {v0}, Lddj;->a()Ldgd;

    move-result-object v1

    sget-object v2, Ldgd;->i:Ldgd;

    if-ne v1, v2, :cond_2

    .line 5
    invoke-virtual {p0, v0}, Lddb;->k(Lddj;)Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lddb;->b:Ldfo;

    .line 6
    invoke-static {p1}, Lddb;->m(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {v1, v0, p1}, Ldfo;->d(Ljava/lang/Comparable;Ljava/lang/Object;)Ljava/lang/Object;

    return-void

    .line 7
    :cond_0
    instance-of v2, v1, Ldev;

    if-nez v2, :cond_1

    .line 10
    check-cast v1, Lder;

    .line 11
    invoke-interface {v1}, Lder;->aH()Ldeq;

    move-result-object v1

    check-cast p1, Lder;

    .line 12
    check-cast p1, Lddk;

    .line 11
    move-object v2, v1

    check-cast v2, Lddf;

    .line 12
    invoke-virtual {v2, p1}, Lddf;->n(Lddk;)V

    .line 13
    invoke-interface {v1}, Ldeq;->h()Lder;

    move-result-object p1

    iget-object v1, p0, Lddb;->b:Ldfo;

    .line 14
    invoke-virtual {v1, v0, p1}, Ldfo;->d(Ljava/lang/Comparable;Ljava/lang/Object;)Ljava/lang/Object;

    return-void

    .line 8
    :cond_1
    check-cast v1, Ldev;

    check-cast p1, Ldev;

    new-instance p1, Ljava/lang/UnsupportedOperationException;

    .line 9
    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1

    .line 17
    :cond_2
    iget-object v1, p0, Lddb;->b:Ldfo;

    .line 15
    invoke-static {p1}, Lddb;->m(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {v1, v0, p1}, Ldfo;->d(Ljava/lang/Comparable;Ljava/lang/Object;)Ljava/lang/Object;

    return-void

    .line 16
    :cond_3
    check-cast p1, Lddz;

    const/4 p1, 0x0

    .line 17
    throw p1
.end method

.method final h()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lddb;->b:Ldfo;

    invoke-virtual {v0}, Ldfo;->isEmpty()Z

    move-result v0

    return v0
.end method

.method public final hashCode()I
    .locals 1

    .line 1
    iget-object v0, p0, Lddb;->b:Ldfo;

    invoke-virtual {v0}, Ldfo;->hashCode()I

    move-result v0

    return v0
.end method

.method public final i()Z
    .locals 3

    .line 1
    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_0
    iget-object v2, p0, Lddb;->b:Ldfo;

    invoke-virtual {v2}, Ldfo;->a()I

    move-result v2

    if-ge v1, v2, :cond_1

    iget-object v2, p0, Lddb;->b:Ldfo;

    .line 2
    invoke-virtual {v2, v1}, Ldfo;->f(I)Ljava/util/Map$Entry;

    move-result-object v2

    invoke-static {v2}, Lddb;->n(Ljava/util/Map$Entry;)Z

    move-result v2

    if-nez v2, :cond_0

    return v0

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lddb;->b:Ldfo;

    .line 3
    invoke-virtual {v1}, Ldfo;->c()Ljava/lang/Iterable;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 4
    invoke-static {v2}, Lddb;->n(Ljava/util/Map$Entry;)Z

    move-result v2

    if-nez v2, :cond_2

    return v0

    :cond_3
    const/4 v0, 0x1

    return v0
.end method

.method public final k(Lddj;)Ljava/lang/Object;
    .locals 1

    .line 1
    iget-object v0, p0, Lddb;->b:Ldfo;

    invoke-virtual {v0, p1}, Ldfo;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    .line 2
    instance-of v0, p1, Lddz;

    if-nez v0, :cond_0

    .line 4
    return-object p1

    .line 3
    :cond_0
    check-cast p1, Lddz;

    const/4 p1, 0x0

    .line 4
    throw p1
.end method

.method public final l(Lddj;Ljava/lang/Object;)V
    .locals 5

    .line 1
    iget-object v0, p1, Lddj;->c:Ldgc;

    invoke-static {p2}, Ldds;->h(Ljava/lang/Object;)V

    .line 2
    sget-object v1, Ldgc;->a:Ldgc;

    sget-object v1, Ldgd;->a:Ldgd;

    iget-object v0, v0, Ldgc;->s:Ldgd;

    invoke-virtual {v0}, Ldgd;->ordinal()I

    move-result v0

    const/4 v1, 0x1

    packed-switch v0, :pswitch_data_0

    goto :goto_2

    .line 3
    :pswitch_0
    instance-of v0, p2, Lder;

    if-nez v0, :cond_0

    instance-of v0, p2, Lddz;

    if-eqz v0, :cond_2

    goto :goto_1

    .line 4
    :pswitch_1
    instance-of v0, p2, Ljava/lang/Integer;

    if-nez v0, :cond_0

    instance-of v0, p2, Lddm;

    if-eqz v0, :cond_2

    goto :goto_1

    .line 5
    :pswitch_2
    instance-of v0, p2, Ldcl;

    if-nez v0, :cond_0

    instance-of v0, p2, [B

    if-eqz v0, :cond_2

    goto :goto_1

    .line 6
    :pswitch_3
    instance-of v0, p2, Ljava/lang/String;

    goto :goto_0

    .line 7
    :pswitch_4
    instance-of v0, p2, Ljava/lang/Boolean;

    goto :goto_0

    .line 8
    :pswitch_5
    instance-of v0, p2, Ljava/lang/Double;

    goto :goto_0

    .line 9
    :pswitch_6
    instance-of v0, p2, Ljava/lang/Float;

    goto :goto_0

    .line 10
    :pswitch_7
    instance-of v0, p2, Ljava/lang/Long;

    goto :goto_0

    .line 11
    :pswitch_8
    instance-of v0, p2, Ljava/lang/Integer;

    .line 6
    :goto_0
    if-eqz v0, :cond_2

    .line 12
    :cond_0
    :goto_1
    instance-of v0, p2, Lddz;

    if-eqz v0, :cond_1

    iput-boolean v1, p0, Lddb;->d:Z

    :cond_1
    iget-object v0, p0, Lddb;->b:Ldfo;

    .line 13
    invoke-virtual {v0, p1, p2}, Ldfo;->d(Ljava/lang/Comparable;Ljava/lang/Object;)Ljava/lang/Object;

    return-void

    .line 2
    :cond_2
    :goto_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    const v4, 0x13f38d82

    .line 14
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    iget-object p1, p1, Lddj;->c:Ldgc;

    iget-object p1, p1, Ldgc;->s:Ldgd;

    aput-object p1, v2, v1

    const/4 p1, 0x2

    .line 15
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p2

    aput-object p2, v2, p1

    .line 16
    const-string p1, "Wrong object type used with protocol message reflection.\nField number: %d, field java type: %s, value type: %s\n"

    invoke-static {p1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
