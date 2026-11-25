.class public final Ldet;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Ldfg;


# static fields
.field private static final a:[I

.field private static final b:Lsun/misc/Unsafe;


# instance fields
.field private final c:[I

.field private final d:[Ljava/lang/Object;

.field private final e:I

.field private final f:I

.field private final g:Lder;

.field private final h:Z

.field private final i:Z

.field private final j:Z

.field private final k:[I

.field private final l:I

.field private final m:I

.field private final n:Ldef;

.field private final o:Lev;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    const/4 v0, 0x0

    new-array v0, v0, [I

    sput-object v0, Ldet;->a:[I

    invoke-static {}, Ldfz;->j()Lsun/misc/Unsafe;

    move-result-object v0

    sput-object v0, Ldet;->b:Lsun/misc/Unsafe;

    return-void
.end method

.method private constructor <init>([I[Ljava/lang/Object;IILder;Z[IIILdef;Lev;Lhl;[B[B[B)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ldet;->c:[I

    iput-object p2, p0, Ldet;->d:[Ljava/lang/Object;

    iput p3, p0, Ldet;->e:I

    iput p4, p0, Ldet;->f:I

    instance-of p1, p5, Lddk;

    iput-boolean p1, p0, Ldet;->i:Z

    iput-boolean p6, p0, Ldet;->j:Z

    const/4 p1, 0x0

    if-eqz p12, :cond_0

    .line 2
    instance-of p2, p5, Lddi;

    if-eqz p2, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    nop

    :goto_0
    iput-boolean p1, p0, Ldet;->h:Z

    iput-object p7, p0, Ldet;->k:[I

    iput p8, p0, Ldet;->l:I

    iput p9, p0, Ldet;->m:I

    iput-object p10, p0, Ldet;->n:Ldef;

    iput-object p11, p0, Ldet;->o:Lev;

    iput-object p5, p0, Ldet;->g:Lder;

    return-void
.end method

.method private final A(II)I
    .locals 5

    .line 1
    iget-object v0, p0, Ldet;->c:[I

    array-length v0, v0

    div-int/lit8 v0, v0, 0x3

    const/4 v1, -0x1

    add-int/2addr v0, v1

    :goto_0
    if-gt p2, v0, :cond_2

    add-int v2, v0, p2

    ushr-int/lit8 v2, v2, 0x1

    mul-int/lit8 v3, v2, 0x3

    .line 2
    invoke-direct {p0, v3}, Ldet;->s(I)I

    move-result v4

    if-ne p1, v4, :cond_0

    return v3

    :cond_0
    if-ge p1, v4, :cond_1

    add-int/lit8 v2, v2, -0x1

    move v0, v2

    goto :goto_0

    :cond_1
    add-int/lit8 v2, v2, 0x1

    move p2, v2

    goto :goto_0

    :cond_2
    return v1
.end method

.method private static B(I)I
    .locals 0

    ushr-int/lit8 p0, p0, 0x14

    and-int/lit16 p0, p0, 0xff

    return p0
.end method

.method private final C(I)I
    .locals 1

    .line 1
    iget-object v0, p0, Ldet;->c:[I

    add-int/lit8 p1, p1, 0x1

    aget p1, v0, p1

    return p1
.end method

.method private static D(I)J
    .locals 2

    const v0, 0xfffff

    and-int/2addr p0, v0

    int-to-long v0, p0

    return-wide v0
.end method

.method private static E(Ljava/lang/Object;J)J
    .locals 0

    .line 1
    invoke-static {p0, p1, p2}, Ldfz;->h(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Long;

    invoke-virtual {p0}, Ljava/lang/Long;->longValue()J

    move-result-wide p0

    return-wide p0
.end method

.method private final F(I)Lddo;
    .locals 1

    .line 1
    div-int/lit8 p1, p1, 0x3

    iget-object v0, p0, Ldet;->d:[Ljava/lang/Object;

    add-int/2addr p1, p1

    add-int/lit8 p1, p1, 0x1

    aget-object p1, v0, p1

    check-cast p1, Lddo;

    return-object p1
.end method

.method private final G(I)Ldfg;
    .locals 3

    .line 1
    div-int/lit8 p1, p1, 0x3

    add-int/2addr p1, p1

    iget-object v0, p0, Ldet;->d:[Ljava/lang/Object;

    aget-object v0, v0, p1

    check-cast v0, Ldfg;

    if-eqz v0, :cond_0

    return-object v0

    .line 2
    :cond_0
    sget-object v0, Ldez;->a:Ldez;

    iget-object v1, p0, Ldet;->d:[Ljava/lang/Object;

    add-int/lit8 v2, p1, 0x1

    aget-object v1, v1, v2

    check-cast v1, Ljava/lang/Class;

    invoke-virtual {v0, v1}, Ldez;->a(Ljava/lang/Class;)Ldfg;

    move-result-object v0

    iget-object v1, p0, Ldet;->d:[Ljava/lang/Object;

    .line 3
    aput-object v0, v1, p1

    return-object v0
.end method

.method private final H(I)Ljava/lang/Object;
    .locals 1

    .line 1
    div-int/lit8 p1, p1, 0x3

    iget-object v0, p0, Ldet;->d:[Ljava/lang/Object;

    add-int/2addr p1, p1

    aget-object p1, v0, p1

    return-object p1
.end method

.method private static I(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;
    .locals 6

    .line 1
    :try_start_0
    invoke-virtual {p0, p1}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/NoSuchFieldException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    .line 2
    :catch_0
    move-exception v0

    invoke-virtual {p0}, Ljava/lang/Class;->getDeclaredFields()[Ljava/lang/reflect/Field;

    move-result-object v0

    .line 3
    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    .line 4
    invoke-virtual {v3}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    return-object v3

    .line 6
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 4
    :cond_1
    new-instance v1, Ljava/lang/RuntimeException;

    .line 5
    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p0

    .line 6
    invoke-static {v0}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    new-instance v5, Ljava/lang/StringBuilder;

    add-int/lit8 v2, v2, 0x28

    add-int/2addr v2, v3

    add-int/2addr v2, v4

    invoke-direct {v5, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v2, "Field "

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " for "

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " not found. Known fields are "

    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v1, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    goto :goto_2

    :goto_1
    throw v1

    :goto_2
    goto :goto_1
.end method

.method private static J(Ljava/lang/Object;J)Ljava/util/List;
    .locals 0

    .line 1
    invoke-static {p0, p1, p2}, Ldfz;->h(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/List;

    return-object p0
.end method

.method private final K(Ljava/lang/Object;Ljava/lang/Object;I)V
    .locals 3

    .line 1
    invoke-direct {p0, p3}, Ldet;->C(I)I

    move-result v0

    invoke-static {v0}, Ldet;->D(I)J

    move-result-wide v0

    .line 2
    invoke-direct {p0, p2, p3}, Ldet;->R(Ljava/lang/Object;I)Z

    move-result v2

    if-nez v2, :cond_0

    return-void

    .line 3
    :cond_0
    invoke-static {p1, v0, v1}, Ldfz;->h(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v2

    .line 4
    invoke-static {p2, v0, v1}, Ldfz;->h(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object p2

    if-eqz v2, :cond_2

    if-nez p2, :cond_1

    goto :goto_0

    .line 7
    :cond_1
    invoke-static {v2, p2}, Ldds;->e(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    .line 8
    invoke-static {p1, v0, v1, p2}, Ldfz;->u(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 9
    invoke-direct {p0, p1, p3}, Ldet;->N(Ljava/lang/Object;I)V

    return-void

    .line 4
    :cond_2
    :goto_0
    if-eqz p2, :cond_3

    .line 5
    invoke-static {p1, v0, v1, p2}, Ldfz;->u(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 6
    invoke-direct {p0, p1, p3}, Ldet;->N(Ljava/lang/Object;I)V

    :cond_3
    return-void
.end method

.method private final L(Ljava/lang/Object;Ljava/lang/Object;I)V
    .locals 4

    .line 1
    invoke-direct {p0, p3}, Ldet;->C(I)I

    move-result v0

    .line 2
    invoke-direct {p0, p3}, Ldet;->s(I)I

    move-result v1

    invoke-static {v0}, Ldet;->D(I)J

    move-result-wide v2

    .line 3
    invoke-direct {p0, p2, v1, p3}, Ldet;->U(Ljava/lang/Object;II)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 4
    :cond_0
    invoke-direct {p0, p1, v1, p3}, Ldet;->U(Ljava/lang/Object;II)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 5
    invoke-static {p1, v2, v3}, Ldfz;->h(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0

    .line 11
    :cond_1
    const/4 v0, 0x0

    .line 6
    :goto_0
    invoke-static {p2, v2, v3}, Ldfz;->h(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object p2

    if-eqz v0, :cond_3

    if-nez p2, :cond_2

    goto :goto_1

    .line 9
    :cond_2
    invoke-static {v0, p2}, Ldds;->e(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    .line 10
    invoke-static {p1, v2, v3, p2}, Ldfz;->u(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 11
    invoke-direct {p0, p1, v1, p3}, Ldet;->O(Ljava/lang/Object;II)V

    return-void

    .line 6
    :cond_3
    :goto_1
    if-eqz p2, :cond_4

    .line 7
    invoke-static {p1, v2, v3, p2}, Ldfz;->u(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 8
    invoke-direct {p0, p1, v1, p3}, Ldet;->O(Ljava/lang/Object;II)V

    :cond_4
    return-void
.end method

.method private final M(Ljava/lang/Object;ILdfc;)V
    .locals 2

    .line 1
    invoke-static {p2}, Ldet;->Q(I)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p2}, Ldet;->D(I)J

    move-result-wide v0

    invoke-interface {p3}, Ldfc;->x()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, v0, v1, p2}, Ldfz;->u(Ljava/lang/Object;JLjava/lang/Object;)V

    return-void

    :cond_0
    iget-boolean v0, p0, Ldet;->i:Z

    if-eqz v0, :cond_1

    invoke-static {p2}, Ldet;->D(I)J

    move-result-wide v0

    .line 2
    invoke-interface {p3}, Ldfc;->v()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, v0, v1, p2}, Ldfz;->u(Ljava/lang/Object;JLjava/lang/Object;)V

    return-void

    :cond_1
    invoke-static {p2}, Ldet;->D(I)J

    move-result-wide v0

    .line 3
    invoke-interface {p3}, Ldfc;->q()Ldcl;

    move-result-object p2

    invoke-static {p1, v0, v1, p2}, Ldfz;->u(Ljava/lang/Object;JLjava/lang/Object;)V

    return-void
.end method

.method private final N(Ljava/lang/Object;I)V
    .locals 5

    .line 1
    invoke-direct {p0, p2}, Ldet;->z(I)I

    move-result p2

    const v0, 0xfffff

    and-int/2addr v0, p2

    int-to-long v0, v0

    const-wide/32 v2, 0xfffff

    cmp-long v4, v0, v2

    if-nez v4, :cond_0

    return-void

    .line 2
    :cond_0
    invoke-static {p1, v0, v1}, Ldfz;->d(Ljava/lang/Object;J)I

    move-result v2

    const/4 v3, 0x1

    ushr-int/lit8 p2, p2, 0x14

    shl-int p2, v3, p2

    or-int/2addr p2, v2

    .line 3
    invoke-static {p1, v0, v1, p2}, Ldfz;->s(Ljava/lang/Object;JI)V

    return-void
.end method

.method private final O(Ljava/lang/Object;II)V
    .locals 2

    .line 1
    invoke-direct {p0, p3}, Ldet;->z(I)I

    move-result p3

    const v0, 0xfffff

    and-int/2addr p3, v0

    int-to-long v0, p3

    .line 2
    invoke-static {p1, v0, v1, p2}, Ldfz;->s(Ljava/lang/Object;JI)V

    return-void
.end method

.method private final P(Ljava/lang/Object;Ljava/lang/Object;I)Z
    .locals 0

    .line 1
    invoke-direct {p0, p1, p3}, Ldet;->R(Ljava/lang/Object;I)Z

    move-result p1

    invoke-direct {p0, p2, p3}, Ldet;->R(Ljava/lang/Object;I)Z

    move-result p2

    if-ne p1, p2, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method private static Q(I)Z
    .locals 1

    const/high16 v0, 0x20000000

    and-int/2addr p0, v0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method private final R(Ljava/lang/Object;I)Z
    .locals 8

    .line 1
    invoke-direct {p0, p2}, Ldet;->z(I)I

    move-result v0

    const v1, 0xfffff

    and-int/2addr v1, v0

    int-to-long v1, v1

    const/4 v3, 0x0

    const/4 v4, 0x1

    const-wide/32 v5, 0xfffff

    cmp-long v7, v1, v5

    if-nez v7, :cond_14

    .line 2
    invoke-direct {p0, p2}, Ldet;->C(I)I

    move-result p2

    invoke-static {p2}, Ldet;->D(I)J

    move-result-wide v0

    invoke-static {p2}, Ldet;->B(I)I

    move-result p2

    const-wide/16 v5, 0x0

    packed-switch p2, :pswitch_data_0

    .line 17
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 26
    invoke-direct {p1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p1

    .line 3
    :pswitch_0
    invoke-static {p1, v0, v1}, Ldfz;->h(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_0

    return v4

    :cond_0
    return v3

    .line 4
    :pswitch_1
    invoke-static {p1, v0, v1}, Ldfz;->f(Ljava/lang/Object;J)J

    move-result-wide p1

    cmp-long v0, p1, v5

    if-eqz v0, :cond_1

    return v4

    :cond_1
    return v3

    .line 5
    :pswitch_2
    invoke-static {p1, v0, v1}, Ldfz;->d(Ljava/lang/Object;J)I

    move-result p1

    if-eqz p1, :cond_2

    return v4

    :cond_2
    return v3

    .line 6
    :pswitch_3
    invoke-static {p1, v0, v1}, Ldfz;->f(Ljava/lang/Object;J)J

    move-result-wide p1

    cmp-long v0, p1, v5

    if-eqz v0, :cond_3

    return v4

    :cond_3
    return v3

    .line 7
    :pswitch_4
    invoke-static {p1, v0, v1}, Ldfz;->d(Ljava/lang/Object;J)I

    move-result p1

    if-eqz p1, :cond_4

    return v4

    :cond_4
    return v3

    .line 8
    :pswitch_5
    invoke-static {p1, v0, v1}, Ldfz;->d(Ljava/lang/Object;J)I

    move-result p1

    if-eqz p1, :cond_5

    return v4

    :cond_5
    return v3

    .line 9
    :pswitch_6
    invoke-static {p1, v0, v1}, Ldfz;->d(Ljava/lang/Object;J)I

    move-result p1

    if-eqz p1, :cond_6

    return v4

    :cond_6
    return v3

    .line 10
    :pswitch_7
    sget-object p2, Ldcl;->b:Ldcl;

    invoke-static {p1, v0, v1}, Ldfz;->h(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p2, p1}, Ldcl;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_7

    return v4

    :cond_7
    return v3

    .line 11
    :pswitch_8
    invoke-static {p1, v0, v1}, Ldfz;->h(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_8

    return v4

    :cond_8
    return v3

    .line 12
    :pswitch_9
    invoke-static {p1, v0, v1}, Ldfz;->h(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object p1

    .line 13
    instance-of p2, p1, Ljava/lang/String;

    if-eqz p2, :cond_a

    .line 14
    check-cast p1, Ljava/lang/String;

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_9

    return v4

    :cond_9
    return v3

    .line 15
    :cond_a
    instance-of p2, p1, Ldcl;

    if-eqz p2, :cond_c

    .line 16
    sget-object p2, Ldcl;->b:Ldcl;

    invoke-virtual {p2, p1}, Ldcl;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_b

    return v4

    :cond_b
    return v3

    .line 27
    :cond_c
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 17
    invoke-direct {p1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p1

    .line 18
    :pswitch_a
    invoke-static {p1, v0, v1}, Ldfz;->w(Ljava/lang/Object;J)Z

    move-result p1

    return p1

    .line 19
    :pswitch_b
    invoke-static {p1, v0, v1}, Ldfz;->d(Ljava/lang/Object;J)I

    move-result p1

    if-eqz p1, :cond_d

    return v4

    :cond_d
    return v3

    .line 20
    :pswitch_c
    invoke-static {p1, v0, v1}, Ldfz;->f(Ljava/lang/Object;J)J

    move-result-wide p1

    cmp-long v0, p1, v5

    if-eqz v0, :cond_e

    return v4

    :cond_e
    return v3

    .line 21
    :pswitch_d
    invoke-static {p1, v0, v1}, Ldfz;->d(Ljava/lang/Object;J)I

    move-result p1

    if-eqz p1, :cond_f

    return v4

    :cond_f
    return v3

    .line 22
    :pswitch_e
    invoke-static {p1, v0, v1}, Ldfz;->f(Ljava/lang/Object;J)J

    move-result-wide p1

    cmp-long v0, p1, v5

    if-eqz v0, :cond_10

    return v4

    :cond_10
    return v3

    .line 23
    :pswitch_f
    invoke-static {p1, v0, v1}, Ldfz;->f(Ljava/lang/Object;J)J

    move-result-wide p1

    cmp-long v0, p1, v5

    if-eqz v0, :cond_11

    return v4

    :cond_11
    return v3

    .line 24
    :pswitch_10
    invoke-static {p1, v0, v1}, Ldfz;->c(Ljava/lang/Object;J)F

    move-result p1

    invoke-static {p1}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result p1

    if-eqz p1, :cond_12

    return v4

    :cond_12
    return v3

    .line 25
    :pswitch_11
    invoke-static {p1, v0, v1}, Ldfz;->b(Ljava/lang/Object;J)D

    move-result-wide p1

    invoke-static {p1, p2}, Ljava/lang/Double;->doubleToRawLongBits(D)J

    move-result-wide p1

    cmp-long v0, p1, v5

    if-eqz v0, :cond_13

    return v4

    :cond_13
    return v3

    .line 27
    :cond_14
    invoke-static {p1, v1, v2}, Ldfz;->d(Ljava/lang/Object;J)I

    move-result p1

    ushr-int/lit8 p2, v0, 0x14

    shl-int p2, v4, p2

    and-int/2addr p1, p2

    if-eqz p1, :cond_15

    return v4

    .line 26
    :cond_15
    return v3

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

.method private final S(Ljava/lang/Object;IIII)Z
    .locals 1

    .line 1
    const v0, 0xfffff

    if-ne p3, v0, :cond_0

    invoke-direct {p0, p1, p2}, Ldet;->R(Ljava/lang/Object;I)Z

    move-result p1

    return p1

    :cond_0
    and-int p1, p4, p5

    if-eqz p1, :cond_1

    const/4 p1, 0x1

    return p1

    :cond_1
    const/4 p1, 0x0

    return p1
.end method

.method private static T(Ljava/lang/Object;ILdfg;)Z
    .locals 2

    .line 1
    invoke-static {p1}, Ldet;->D(I)J

    move-result-wide v0

    invoke-static {p0, v0, v1}, Ldfz;->h(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object p0

    .line 2
    invoke-interface {p2, p0}, Ldfg;->k(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method private final U(Ljava/lang/Object;II)Z
    .locals 2

    .line 1
    invoke-direct {p0, p3}, Ldet;->z(I)I

    move-result p3

    const v0, 0xfffff

    and-int/2addr p3, v0

    int-to-long v0, p3

    .line 2
    invoke-static {p1, v0, v1}, Ldfz;->d(Ljava/lang/Object;J)I

    move-result p1

    if-ne p1, p2, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method private static V(Ljava/lang/Object;J)Z
    .locals 0

    .line 1
    invoke-static {p0, p1, p2}, Ldfz;->h(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    return p0
.end method

.method private static final W([BIILdgc;Ljava/lang/Class;Ldca;)I
    .locals 1

    .line 1
    sget-object v0, Ldgc;->a:Ldgc;

    invoke-virtual {p3}, Ldgc;->ordinal()I

    move-result p3

    packed-switch p3, :pswitch_data_0

    .line 19
    :pswitch_0
    new-instance p0, Ljava/lang/RuntimeException;

    .line 20
    const-string p1, "unsupported field type."

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 3
    :pswitch_1
    invoke-static {p0, p1, p5}, Lhl;->I([BILdca;)I

    move-result p0

    iget-wide p1, p5, Ldca;->b:J

    .line 4
    invoke-static {p1, p2}, Ldcp;->G(J)J

    move-result-wide p1

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    iput-object p1, p5, Ldca;->c:Ljava/lang/Object;

    goto/16 :goto_1

    .line 5
    :pswitch_2
    invoke-static {p0, p1, p5}, Lhl;->F([BILdca;)I

    move-result p0

    iget p1, p5, Ldca;->a:I

    .line 6
    invoke-static {p1}, Ldcp;->F(I)I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    iput-object p1, p5, Ldca;->c:Ljava/lang/Object;

    goto/16 :goto_1

    .line 17
    :pswitch_3
    invoke-static {p0, p1, p5}, Lhl;->w([BILdca;)I

    move-result p0

    goto/16 :goto_1

    .line 7
    :pswitch_4
    sget-object p3, Ldez;->a:Ldez;

    invoke-virtual {p3, p4}, Ldez;->a(Ljava/lang/Class;)Ldfg;

    move-result-object p3

    .line 8
    invoke-static {p3, p0, p1, p2, p5}, Lhl;->z(Ldfg;[BIILdca;)I

    move-result p0

    goto :goto_1

    .line 2
    :pswitch_5
    invoke-static {p0, p1, p5}, Lhl;->D([BILdca;)I

    move-result p0

    goto :goto_1

    .line 18
    :pswitch_6
    invoke-static {p0, p1, p5}, Lhl;->I([BILdca;)I

    move-result p0

    iget-wide p1, p5, Ldca;->b:J

    const-wide/16 p3, 0x0

    cmp-long v0, p1, p3

    if-eqz v0, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    .line 20
    :cond_0
    const/4 p1, 0x0

    .line 19
    :goto_0
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    iput-object p1, p5, Ldca;->c:Ljava/lang/Object;

    goto :goto_1

    .line 15
    :pswitch_7
    invoke-static {p0, p1}, Lhl;->x([BI)I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    iput-object p0, p5, Ldca;->c:Ljava/lang/Object;

    add-int/lit8 p0, p1, 0x4

    goto :goto_1

    .line 14
    :pswitch_8
    invoke-static {p0, p1}, Lhl;->K([BI)J

    move-result-wide p2

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    iput-object p0, p5, Ldca;->c:Ljava/lang/Object;

    add-int/lit8 p0, p1, 0x8

    goto :goto_1

    .line 11
    :pswitch_9
    invoke-static {p0, p1, p5}, Lhl;->F([BILdca;)I

    move-result p0

    iget p1, p5, Ldca;->a:I

    .line 12
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    iput-object p1, p5, Ldca;->c:Ljava/lang/Object;

    goto :goto_1

    .line 9
    :pswitch_a
    invoke-static {p0, p1, p5}, Lhl;->I([BILdca;)I

    move-result p0

    iget-wide p1, p5, Ldca;->b:J

    .line 10
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    iput-object p1, p5, Ldca;->c:Ljava/lang/Object;

    goto :goto_1

    .line 13
    :pswitch_b
    invoke-static {p0, p1}, Lhl;->v([BI)F

    move-result p0

    invoke-static {p0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p0

    iput-object p0, p5, Ldca;->c:Ljava/lang/Object;

    add-int/lit8 p0, p1, 0x4

    goto :goto_1

    .line 16
    :pswitch_c
    invoke-static {p0, p1}, Lhl;->u([BI)D

    move-result-wide p2

    invoke-static {p2, p3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p0

    iput-object p0, p5, Ldca;->c:Ljava/lang/Object;

    add-int/lit8 p0, p1, 0x8

    .line 2
    :goto_1
    return p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_0
        :pswitch_4
        :pswitch_3
        :pswitch_9
        :pswitch_9
        :pswitch_7
        :pswitch_8
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method private final X(Ljava/lang/Object;[BIILdca;)V
    .locals 30

    .line 1
    move-object/from16 v15, p0

    move-object/from16 v14, p1

    move-object/from16 v12, p2

    move/from16 v13, p4

    move-object/from16 v11, p5

    sget-object v9, Ldet;->b:Lsun/misc/Unsafe;

    const/4 v10, -0x1

    const/16 v16, 0x0

    move/from16 v0, p3

    const/4 v1, -0x1

    const/4 v2, 0x0

    const/4 v6, 0x0

    const v7, 0xfffff

    :goto_0
    if-ge v0, v13, :cond_21

    add-int/lit8 v3, v0, 0x1

    aget-byte v0, v12, v0

    if-gez v0, :cond_0

    .line 2
    invoke-static {v0, v12, v3, v11}, Lhl;->G(I[BILdca;)I

    move-result v0

    iget v3, v11, Ldca;->a:I

    move v4, v0

    move/from16 v17, v3

    goto :goto_1

    .line 4
    :cond_0
    move/from16 v17, v0

    move v4, v3

    .line 2
    :goto_1
    ushr-int/lit8 v5, v17, 0x3

    and-int/lit8 v3, v17, 0x7

    if-le v5, v1, :cond_1

    div-int/lit8 v2, v2, 0x3

    .line 3
    invoke-direct {v15, v5, v2}, Ldet;->y(II)I

    move-result v0

    move v2, v0

    goto :goto_2

    .line 4
    :cond_1
    invoke-direct {v15, v5}, Ldet;->x(I)I

    move-result v0

    move v2, v0

    .line 3
    :goto_2
    if-ne v2, v10, :cond_2

    move v2, v4

    move/from16 v19, v5

    move-object/from16 v28, v9

    const/16 v18, -0x1

    const/16 v20, 0x0

    goto/16 :goto_d

    .line 49
    :cond_2
    iget-object v0, v15, Ldet;->c:[I

    add-int/lit8 v1, v2, 0x1

    .line 5
    aget v1, v0, v1

    invoke-static {v1}, Ldet;->B(I)I

    move-result v0

    move-object/from16 v18, v9

    invoke-static {v1}, Ldet;->D(I)J

    move-result-wide v8

    const/16 v10, 0x11

    move/from16 p3, v5

    if-gt v0, v10, :cond_16

    iget-object v10, v15, Ldet;->c:[I

    add-int/lit8 v21, v2, 0x2

    .line 6
    aget v10, v10, v21

    ushr-int/lit8 v21, v10, 0x14

    const/4 v5, 0x1

    shl-int v21, v5, v21

    const v13, 0xfffff

    and-int/2addr v10, v13

    if-eq v10, v7, :cond_5

    if-eq v7, v13, :cond_3

    move/from16 v23, v1

    move/from16 v19, v2

    int-to-long v1, v7

    .line 7
    move-object/from16 v7, v18

    invoke-virtual {v7, v14, v1, v2, v6}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    goto :goto_3

    .line 6
    :cond_3
    move/from16 v23, v1

    move/from16 v19, v2

    move-object/from16 v7, v18

    .line 7
    :goto_3
    if-eq v10, v13, :cond_4

    int-to-long v1, v10

    .line 8
    invoke-virtual {v7, v14, v1, v2}, Lsun/misc/Unsafe;->getInt(Ljava/lang/Object;J)I

    move-result v6

    goto :goto_4

    .line 36
    :cond_4
    nop

    .line 8
    :goto_4
    move/from16 v29, v10

    move-object v10, v7

    move/from16 v7, v29

    goto :goto_5

    .line 36
    :cond_5
    move/from16 v23, v1

    move/from16 v19, v2

    move-object/from16 v10, v18

    .line 8
    :goto_5
    const/4 v1, 0x5

    packed-switch v0, :pswitch_data_0

    move/from16 v13, v19

    const v18, 0xfffff

    move/from16 v19, p3

    goto/16 :goto_9

    .line 37
    :pswitch_0
    if-nez v3, :cond_6

    .line 9
    invoke-static {v12, v4, v11}, Lhl;->I([BILdca;)I

    move-result v17

    iget-wide v0, v11, Ldca;->b:J

    .line 10
    invoke-static {v0, v1}, Ldcp;->G(J)J

    move-result-wide v4

    .line 11
    move-object v0, v10

    move-object/from16 v1, p1

    move/from16 v13, v19

    move-wide v2, v8

    move/from16 v19, p3

    invoke-virtual/range {v0 .. v5}, Lsun/misc/Unsafe;->putLong(Ljava/lang/Object;JJ)V

    or-int v6, v6, v21

    move-object v9, v10

    move v2, v13

    move/from16 v0, v17

    move/from16 v1, v19

    const/4 v10, -0x1

    move/from16 v13, p4

    goto/16 :goto_0

    :cond_6
    move/from16 v13, v19

    move/from16 v19, p3

    const v18, 0xfffff

    goto/16 :goto_9

    :pswitch_1
    move/from16 v13, v19

    move/from16 v19, p3

    if-nez v3, :cond_7

    .line 12
    invoke-static {v12, v4, v11}, Lhl;->F([BILdca;)I

    move-result v0

    iget v1, v11, Ldca;->a:I

    .line 13
    invoke-static {v1}, Ldcp;->F(I)I

    move-result v1

    .line 14
    invoke-virtual {v10, v14, v8, v9, v1}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    or-int v6, v6, v21

    move-object v9, v10

    move v2, v13

    move/from16 v1, v19

    const/4 v10, -0x1

    move/from16 v13, p4

    goto/16 :goto_0

    :cond_7
    const v18, 0xfffff

    goto/16 :goto_9

    :pswitch_2
    move/from16 v13, v19

    move/from16 v19, p3

    if-nez v3, :cond_8

    .line 15
    invoke-static {v12, v4, v11}, Lhl;->F([BILdca;)I

    move-result v0

    iget v1, v11, Ldca;->a:I

    .line 16
    invoke-virtual {v10, v14, v8, v9, v1}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    or-int v6, v6, v21

    move-object v9, v10

    move v2, v13

    move/from16 v1, v19

    const/4 v10, -0x1

    move/from16 v13, p4

    goto/16 :goto_0

    :cond_8
    const v18, 0xfffff

    goto/16 :goto_9

    :pswitch_3
    move/from16 v13, v19

    move/from16 v19, p3

    const/4 v0, 0x2

    if-ne v3, v0, :cond_9

    .line 17
    invoke-static {v12, v4, v11}, Lhl;->w([BILdca;)I

    move-result v0

    iget-object v1, v11, Ldca;->c:Ljava/lang/Object;

    .line 18
    invoke-virtual {v10, v14, v8, v9, v1}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    or-int v6, v6, v21

    move-object v9, v10

    move v2, v13

    move/from16 v1, v19

    const/4 v10, -0x1

    move/from16 v13, p4

    goto/16 :goto_0

    :cond_9
    const v18, 0xfffff

    goto/16 :goto_9

    :pswitch_4
    move/from16 v13, v19

    const/4 v0, 0x2

    move/from16 v19, p3

    if-ne v3, v0, :cond_b

    .line 19
    invoke-direct {v15, v13}, Ldet;->G(I)Ldfg;

    move-result-object v0

    .line 20
    move/from16 v2, p4

    const v18, 0xfffff

    invoke-static {v0, v12, v4, v2, v11}, Lhl;->z(Ldfg;[BIILdca;)I

    move-result v0

    .line 21
    invoke-virtual {v10, v14, v8, v9}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_a

    iget-object v1, v11, Ldca;->c:Ljava/lang/Object;

    .line 22
    invoke-virtual {v10, v14, v8, v9, v1}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    goto :goto_6

    :cond_a
    iget-object v3, v11, Ldca;->c:Ljava/lang/Object;

    .line 23
    invoke-static {v1, v3}, Ldds;->e(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 24
    invoke-virtual {v10, v14, v8, v9, v1}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 22
    :goto_6
    or-int v6, v6, v21

    move-object v9, v10

    move/from16 v1, v19

    const/4 v10, -0x1

    move/from16 v29, v13

    move v13, v2

    move/from16 v2, v29

    goto/16 :goto_0

    .line 24
    :cond_b
    move/from16 v2, p4

    const v18, 0xfffff

    goto/16 :goto_9

    :pswitch_5
    move/from16 v2, p4

    move/from16 v13, v19

    const v18, 0xfffff

    move/from16 v19, p3

    const/4 v0, 0x2

    if-ne v3, v0, :cond_d

    const/high16 v0, 0x20000000

    and-int v0, v23, v0

    if-nez v0, :cond_c

    .line 25
    invoke-static {v12, v4, v11}, Lhl;->C([BILdca;)I

    move-result v0

    goto :goto_7

    .line 26
    :cond_c
    invoke-static {v12, v4, v11}, Lhl;->D([BILdca;)I

    move-result v0

    .line 25
    :goto_7
    iget-object v1, v11, Ldca;->c:Ljava/lang/Object;

    .line 27
    invoke-virtual {v10, v14, v8, v9, v1}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    or-int v6, v6, v21

    move-object v9, v10

    move/from16 v1, v19

    const/4 v10, -0x1

    move/from16 v29, v13

    move v13, v2

    move/from16 v2, v29

    goto/16 :goto_0

    .line 26
    :cond_d
    goto/16 :goto_9

    :pswitch_6
    move/from16 v2, p4

    move/from16 v13, v19

    const v18, 0xfffff

    move/from16 v19, p3

    if-nez v3, :cond_f

    .line 28
    invoke-static {v12, v4, v11}, Lhl;->I([BILdca;)I

    move-result v0

    iget-wide v3, v11, Ldca;->b:J

    const-wide/16 v22, 0x0

    cmp-long v1, v3, v22

    if-eqz v1, :cond_e

    goto :goto_8

    .line 29
    :cond_e
    const/4 v5, 0x0

    :goto_8
    invoke-static {v14, v8, v9, v5}, Ldfz;->m(Ljava/lang/Object;JZ)V

    or-int v6, v6, v21

    move-object v9, v10

    move/from16 v1, v19

    const/4 v10, -0x1

    move/from16 v29, v13

    move v13, v2

    move/from16 v2, v29

    goto/16 :goto_0

    :cond_f
    goto/16 :goto_9

    :pswitch_7
    move/from16 v2, p4

    move/from16 v13, v19

    const v18, 0xfffff

    move/from16 v19, p3

    if-ne v3, v1, :cond_10

    .line 30
    invoke-static {v12, v4}, Lhl;->x([BI)I

    move-result v0

    invoke-virtual {v10, v14, v8, v9, v0}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    add-int/lit8 v0, v4, 0x4

    or-int v6, v6, v21

    move-object v9, v10

    move/from16 v1, v19

    const/4 v10, -0x1

    move/from16 v29, v13

    move v13, v2

    move/from16 v2, v29

    goto/16 :goto_0

    :cond_10
    goto/16 :goto_9

    :pswitch_8
    move/from16 v2, p4

    move/from16 v13, v19

    const v18, 0xfffff

    move/from16 v19, p3

    if-ne v3, v5, :cond_11

    .line 31
    invoke-static {v12, v4}, Lhl;->K([BI)J

    move-result-wide v22

    move-object v0, v10

    move-object/from16 v1, p1

    move-wide v2, v8

    move v8, v4

    move-wide/from16 v4, v22

    invoke-virtual/range {v0 .. v5}, Lsun/misc/Unsafe;->putLong(Ljava/lang/Object;JJ)V

    add-int/lit8 v0, v8, 0x8

    or-int v6, v6, v21

    move-object v9, v10

    move v2, v13

    move/from16 v1, v19

    const/4 v10, -0x1

    move/from16 v13, p4

    goto/16 :goto_0

    :cond_11
    move v8, v4

    goto/16 :goto_9

    :pswitch_9
    move/from16 v13, v19

    const v18, 0xfffff

    move/from16 v19, p3

    if-nez v3, :cond_12

    .line 32
    invoke-static {v12, v4, v11}, Lhl;->F([BILdca;)I

    move-result v0

    iget v1, v11, Ldca;->a:I

    .line 33
    invoke-virtual {v10, v14, v8, v9, v1}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    or-int v6, v6, v21

    move-object v9, v10

    move v2, v13

    move/from16 v1, v19

    const/4 v10, -0x1

    move/from16 v13, p4

    goto/16 :goto_0

    :cond_12
    goto/16 :goto_9

    :pswitch_a
    move/from16 v13, v19

    const v18, 0xfffff

    move/from16 v19, p3

    if-nez v3, :cond_13

    .line 34
    invoke-static {v12, v4, v11}, Lhl;->I([BILdca;)I

    move-result v17

    iget-wide v4, v11, Ldca;->b:J

    .line 35
    move-object v0, v10

    move-object/from16 v1, p1

    move-wide v2, v8

    invoke-virtual/range {v0 .. v5}, Lsun/misc/Unsafe;->putLong(Ljava/lang/Object;JJ)V

    or-int v6, v6, v21

    move-object v9, v10

    move v2, v13

    move/from16 v0, v17

    move/from16 v1, v19

    const/4 v10, -0x1

    move/from16 v13, p4

    goto/16 :goto_0

    :cond_13
    goto :goto_9

    :pswitch_b
    move/from16 v13, v19

    const v18, 0xfffff

    move/from16 v19, p3

    if-ne v3, v1, :cond_14

    .line 36
    invoke-static {v12, v4}, Lhl;->v([BI)F

    move-result v0

    invoke-static {v14, v8, v9, v0}, Ldfz;->r(Ljava/lang/Object;JF)V

    add-int/lit8 v0, v4, 0x4

    or-int v6, v6, v21

    move-object v9, v10

    move v2, v13

    move/from16 v1, v19

    const/4 v10, -0x1

    move/from16 v13, p4

    goto/16 :goto_0

    :cond_14
    goto :goto_9

    .line 8
    :pswitch_c
    move/from16 v13, v19

    const v18, 0xfffff

    move/from16 v19, p3

    if-ne v3, v5, :cond_15

    .line 37
    invoke-static {v12, v4}, Lhl;->u([BI)D

    move-result-wide v0

    invoke-static {v14, v8, v9, v0, v1}, Ldfz;->q(Ljava/lang/Object;JD)V

    add-int/lit8 v0, v4, 0x8

    or-int v6, v6, v21

    move-object v9, v10

    move v2, v13

    move/from16 v1, v19

    const/4 v10, -0x1

    move/from16 v13, p4

    goto/16 :goto_0

    :cond_15
    nop

    .line 48
    :goto_9
    move v2, v4

    move-object/from16 v28, v10

    move/from16 v20, v13

    const/16 v18, -0x1

    goto/16 :goto_d

    .line 36
    :cond_16
    move/from16 v19, p3

    move/from16 v23, v1

    move v13, v2

    move-object/from16 v10, v18

    const v18, 0xfffff

    const/16 v1, 0x1b

    if-ne v0, v1, :cond_1a

    const/4 v0, 0x2

    if-ne v3, v0, :cond_19

    .line 38
    invoke-virtual {v10, v14, v8, v9}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lddr;

    .line 39
    invoke-interface {v0}, Lddr;->c()Z

    move-result v1

    if-nez v1, :cond_18

    .line 40
    invoke-interface {v0}, Lddr;->size()I

    move-result v1

    if-nez v1, :cond_17

    const/16 v1, 0xa

    goto :goto_a

    .line 44
    :cond_17
    add-int/2addr v1, v1

    .line 41
    :goto_a
    invoke-interface {v0, v1}, Lddr;->d(I)Lddr;

    move-result-object v0

    .line 42
    invoke-virtual {v10, v14, v8, v9, v0}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    move-object v5, v0

    goto :goto_b

    .line 44
    :cond_18
    move-object v5, v0

    .line 43
    :goto_b
    invoke-direct {v15, v13}, Ldet;->G(I)Ldfg;

    move-result-object v0

    .line 44
    move/from16 v1, v17

    move-object/from16 v2, p2

    move v3, v4

    move/from16 v4, p4

    move v8, v6

    move-object/from16 v6, p5

    invoke-static/range {v0 .. v6}, Lhl;->A(Ldfg;I[BIILddr;Ldca;)I

    move-result v0

    move v6, v8

    move-object v9, v10

    move v2, v13

    move/from16 v1, v19

    const/4 v10, -0x1

    move/from16 v13, p4

    goto/16 :goto_0

    :cond_19
    move v8, v6

    move v15, v4

    move/from16 v25, v7

    move/from16 v24, v8

    move-object/from16 v28, v10

    move/from16 v20, v13

    const/16 v18, -0x1

    goto/16 :goto_c

    :cond_1a
    const/16 v1, 0x31

    if-gt v0, v1, :cond_1c

    move/from16 v1, v23

    int-to-long v1, v1

    .line 45
    move v5, v0

    move-object/from16 v0, p0

    move-wide/from16 v21, v1

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move/from16 p3, v3

    move v3, v4

    move v15, v4

    move/from16 v4, p4

    move/from16 v23, v5

    move/from16 v5, v17

    move/from16 v24, v6

    move/from16 v6, v19

    move/from16 v25, v7

    move/from16 v7, p3

    move-wide/from16 v26, v8

    const v9, 0xfffff

    move v8, v13

    move-object/from16 v28, v10

    const/16 v18, -0x1

    move-wide/from16 v9, v21

    move/from16 v11, v23

    move/from16 v20, v13

    move-wide/from16 v12, v26

    move-object/from16 v14, p5

    invoke-direct/range {v0 .. v14}, Ldet;->w(Ljava/lang/Object;[BIIIIIIJIJLdca;)I

    move-result v0

    if-eq v0, v15, :cond_1b

    move-object/from16 v15, p0

    move-object/from16 v14, p1

    move-object/from16 v12, p2

    move/from16 v13, p4

    move-object/from16 v11, p5

    move/from16 v1, v19

    move/from16 v2, v20

    move/from16 v6, v24

    move/from16 v7, v25

    move-object/from16 v9, v28

    const/4 v10, -0x1

    goto/16 :goto_0

    :cond_1b
    move v2, v0

    move/from16 v6, v24

    move/from16 v7, v25

    goto/16 :goto_d

    :cond_1c
    move/from16 p3, v3

    move v15, v4

    move/from16 v24, v6

    move/from16 v25, v7

    move-wide/from16 v26, v8

    move-object/from16 v28, v10

    move/from16 v20, v13

    move/from16 v1, v23

    const/16 v18, -0x1

    move/from16 v23, v0

    const/16 v0, 0x32

    move/from16 v9, v23

    if-ne v9, v0, :cond_1f

    move/from16 v7, p3

    const/4 v0, 0x2

    if-ne v7, v0, :cond_1e

    .line 46
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move v3, v15

    move/from16 v4, p4

    move/from16 v5, v20

    move-wide/from16 v6, v26

    move-object/from16 v8, p5

    invoke-direct/range {v0 .. v8}, Ldet;->u(Ljava/lang/Object;[BIIIJLdca;)I

    move-result v0

    if-eq v0, v15, :cond_1d

    move-object/from16 v15, p0

    move-object/from16 v14, p1

    move-object/from16 v12, p2

    move/from16 v13, p4

    move-object/from16 v11, p5

    move/from16 v1, v19

    move/from16 v2, v20

    move/from16 v6, v24

    move/from16 v7, v25

    move-object/from16 v9, v28

    const/4 v10, -0x1

    goto/16 :goto_0

    :cond_1d
    move v2, v0

    move/from16 v6, v24

    move/from16 v7, v25

    goto :goto_d

    :cond_1e
    nop

    .line 48
    :goto_c
    move v2, v15

    move/from16 v6, v24

    move/from16 v7, v25

    goto :goto_d

    .line 47
    :cond_1f
    move/from16 v7, p3

    move-object/from16 v0, p0

    move v8, v1

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move v3, v15

    move/from16 v4, p4

    move/from16 v5, v17

    move/from16 v6, v19

    move-wide/from16 v10, v26

    move/from16 v12, v20

    move-object/from16 v13, p5

    invoke-direct/range {v0 .. v13}, Ldet;->v(Ljava/lang/Object;[BIIIIIIIJILdca;)I

    move-result v0

    if-eq v0, v15, :cond_20

    move-object/from16 v15, p0

    move-object/from16 v14, p1

    move-object/from16 v12, p2

    move/from16 v13, p4

    move-object/from16 v11, p5

    move/from16 v1, v19

    move/from16 v2, v20

    move/from16 v6, v24

    move/from16 v7, v25

    move-object/from16 v9, v28

    const/4 v10, -0x1

    goto/16 :goto_0

    :cond_20
    move v2, v0

    move/from16 v6, v24

    move/from16 v7, v25

    .line 48
    :goto_d
    invoke-static/range {p1 .. p1}, Ldet;->d(Ljava/lang/Object;)Ldfr;

    move-result-object v4

    .line 49
    move/from16 v0, v17

    move-object/from16 v1, p2

    move/from16 v3, p4

    move-object/from16 v5, p5

    invoke-static/range {v0 .. v5}, Lhl;->E(I[BIILdfr;Ldca;)I

    move-result v0

    move-object/from16 v15, p0

    move-object/from16 v14, p1

    move-object/from16 v12, p2

    move/from16 v13, p4

    move-object/from16 v11, p5

    move/from16 v1, v19

    move/from16 v2, v20

    move-object/from16 v9, v28

    const/4 v10, -0x1

    goto/16 :goto_0

    .line 4
    :cond_21
    move/from16 v24, v6

    move/from16 v25, v7

    move-object/from16 v28, v9

    const v1, 0xfffff

    if-eq v7, v1, :cond_22

    int-to-long v1, v7

    .line 50
    move-object/from16 v3, p1

    move/from16 v6, v24

    move-object/from16 v4, v28

    invoke-virtual {v4, v3, v1, v2, v6}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    :cond_22
    move/from16 v1, p4

    if-ne v0, v1, :cond_23

    .line 51
    return-void

    :cond_23
    invoke-static {}, Lddu;->g()Lddu;

    move-result-object v0

    goto :goto_f

    :goto_e
    throw v0

    :goto_f
    goto :goto_e

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_9
        :pswitch_2
        :pswitch_7
        :pswitch_8
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private final Y(Ljava/lang/Object;Ldcv;)V
    .locals 17

    .line 1
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    iget-boolean v3, v0, Ldet;->h:Z

    if-eqz v3, :cond_0

    invoke-static/range {p1 .. p1}, Lhl;->o(Ljava/lang/Object;)Lddb;

    move-result-object v3

    .line 2
    invoke-virtual {v3}, Lddb;->h()Z

    move-result v5

    if-nez v5, :cond_0

    .line 3
    invoke-virtual {v3}, Lddb;->d()Ljava/util/Iterator;

    move-result-object v3

    .line 4
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/Map$Entry;

    goto :goto_0

    .line 145
    :cond_0
    const/4 v3, 0x0

    const/4 v5, 0x0

    .line 4
    :goto_0
    iget-object v6, v0, Ldet;->c:[I

    .line 5
    array-length v6, v6

    sget-object v7, Ldet;->b:Lsun/misc/Unsafe;

    const v8, 0xfffff

    const/4 v10, 0x0

    const v11, 0xfffff

    const/4 v12, 0x0

    :goto_1
    if-ge v10, v6, :cond_18

    .line 6
    invoke-direct {v0, v10}, Ldet;->C(I)I

    move-result v13

    .line 7
    invoke-direct {v0, v10}, Ldet;->s(I)I

    move-result v14

    invoke-static {v13}, Ldet;->B(I)I

    move-result v15

    const/16 v4, 0x11

    if-gt v15, v4, :cond_2

    iget-object v4, v0, Ldet;->c:[I

    add-int/lit8 v16, v10, 0x2

    .line 8
    aget v4, v4, v16

    and-int v9, v4, v8

    if-eq v9, v11, :cond_1

    int-to-long v11, v9

    .line 9
    invoke-virtual {v7, v1, v11, v12}, Lsun/misc/Unsafe;->getInt(Ljava/lang/Object;J)I

    move-result v12

    move v11, v9

    goto :goto_2

    .line 142
    :cond_1
    nop

    .line 9
    :goto_2
    ushr-int/lit8 v4, v4, 0x14

    const/4 v9, 0x1

    shl-int v4, v9, v4

    goto :goto_3

    .line 142
    :cond_2
    const/4 v4, 0x0

    .line 9
    :goto_3
    if-eqz v5, :cond_4

    .line 10
    invoke-static {v5}, Lhl;->n(Ljava/util/Map$Entry;)V

    const v9, 0x13f38d82

    if-lt v14, v9, :cond_4

    .line 11
    invoke-static {v2, v5}, Lhl;->r(Ldcv;Ljava/util/Map$Entry;)V

    .line 12
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/Map$Entry;

    goto :goto_3

    :cond_3
    const/4 v5, 0x0

    goto :goto_3

    :cond_4
    invoke-static {v13}, Ldet;->D(I)J

    move-result-wide v8

    packed-switch v15, :pswitch_data_0

    const/4 v13, 0x0

    goto/16 :goto_4

    .line 13
    :pswitch_0
    invoke-direct {v0, v1, v14, v10}, Ldet;->U(Ljava/lang/Object;II)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 14
    invoke-virtual {v7, v1, v8, v9}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    invoke-direct {v0, v10}, Ldet;->G(I)Ldfg;

    move-result-object v8

    .line 15
    invoke-virtual {v2, v14, v4, v8}, Ldcv;->h(ILjava/lang/Object;Ldfg;)V

    const/4 v13, 0x0

    goto/16 :goto_4

    .line 13
    :cond_5
    const/4 v13, 0x0

    goto/16 :goto_4

    .line 16
    :pswitch_1
    invoke-direct {v0, v1, v14, v10}, Ldet;->U(Ljava/lang/Object;II)Z

    move-result v4

    if-eqz v4, :cond_6

    .line 17
    invoke-static {v1, v8, v9}, Ldet;->E(Ljava/lang/Object;J)J

    move-result-wide v8

    invoke-virtual {v2, v14, v8, v9}, Ldcv;->p(IJ)V

    const/4 v13, 0x0

    goto/16 :goto_4

    .line 16
    :cond_6
    const/4 v13, 0x0

    goto/16 :goto_4

    .line 18
    :pswitch_2
    invoke-direct {v0, v1, v14, v10}, Ldet;->U(Ljava/lang/Object;II)Z

    move-result v4

    if-eqz v4, :cond_7

    .line 19
    invoke-static {v1, v8, v9}, Ldet;->t(Ljava/lang/Object;J)I

    move-result v4

    invoke-virtual {v2, v14, v4}, Ldcv;->o(II)V

    const/4 v13, 0x0

    goto/16 :goto_4

    .line 18
    :cond_7
    const/4 v13, 0x0

    goto/16 :goto_4

    .line 20
    :pswitch_3
    invoke-direct {v0, v1, v14, v10}, Ldet;->U(Ljava/lang/Object;II)Z

    move-result v4

    if-eqz v4, :cond_8

    .line 21
    invoke-static {v1, v8, v9}, Ldet;->E(Ljava/lang/Object;J)J

    move-result-wide v8

    invoke-virtual {v2, v14, v8, v9}, Ldcv;->n(IJ)V

    const/4 v13, 0x0

    goto/16 :goto_4

    .line 20
    :cond_8
    const/4 v13, 0x0

    goto/16 :goto_4

    .line 22
    :pswitch_4
    invoke-direct {v0, v1, v14, v10}, Ldet;->U(Ljava/lang/Object;II)Z

    move-result v4

    if-eqz v4, :cond_9

    .line 23
    invoke-static {v1, v8, v9}, Ldet;->t(Ljava/lang/Object;J)I

    move-result v4

    invoke-virtual {v2, v14, v4}, Ldcv;->m(II)V

    const/4 v13, 0x0

    goto/16 :goto_4

    .line 22
    :cond_9
    const/4 v13, 0x0

    goto/16 :goto_4

    .line 24
    :pswitch_5
    invoke-direct {v0, v1, v14, v10}, Ldet;->U(Ljava/lang/Object;II)Z

    move-result v4

    if-eqz v4, :cond_a

    .line 25
    invoke-static {v1, v8, v9}, Ldet;->t(Ljava/lang/Object;J)I

    move-result v4

    invoke-virtual {v2, v14, v4}, Ldcv;->d(II)V

    const/4 v13, 0x0

    goto/16 :goto_4

    .line 24
    :cond_a
    const/4 v13, 0x0

    goto/16 :goto_4

    .line 26
    :pswitch_6
    invoke-direct {v0, v1, v14, v10}, Ldet;->U(Ljava/lang/Object;II)Z

    move-result v4

    if-eqz v4, :cond_b

    .line 27
    invoke-static {v1, v8, v9}, Ldet;->t(Ljava/lang/Object;J)I

    move-result v4

    invoke-virtual {v2, v14, v4}, Ldcv;->r(II)V

    const/4 v13, 0x0

    goto/16 :goto_4

    .line 26
    :cond_b
    const/4 v13, 0x0

    goto/16 :goto_4

    .line 28
    :pswitch_7
    invoke-direct {v0, v1, v14, v10}, Ldet;->U(Ljava/lang/Object;II)Z

    move-result v4

    if-eqz v4, :cond_c

    .line 29
    invoke-virtual {v7, v1, v8, v9}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ldcl;

    invoke-virtual {v2, v14, v4}, Ldcv;->b(ILdcl;)V

    const/4 v13, 0x0

    goto/16 :goto_4

    .line 28
    :cond_c
    const/4 v13, 0x0

    goto/16 :goto_4

    .line 30
    :pswitch_8
    invoke-direct {v0, v1, v14, v10}, Ldet;->U(Ljava/lang/Object;II)Z

    move-result v4

    if-eqz v4, :cond_d

    .line 31
    invoke-virtual {v7, v1, v8, v9}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    .line 32
    invoke-direct {v0, v10}, Ldet;->G(I)Ldfg;

    move-result-object v8

    invoke-virtual {v2, v14, v4, v8}, Ldcv;->k(ILjava/lang/Object;Ldfg;)V

    const/4 v13, 0x0

    goto/16 :goto_4

    .line 30
    :cond_d
    const/4 v13, 0x0

    goto/16 :goto_4

    .line 33
    :pswitch_9
    invoke-direct {v0, v1, v14, v10}, Ldet;->U(Ljava/lang/Object;II)Z

    move-result v4

    if-eqz v4, :cond_e

    .line 34
    invoke-virtual {v7, v1, v8, v9}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    invoke-static {v14, v4, v2}, Ldet;->aa(ILjava/lang/Object;Ldcv;)V

    const/4 v13, 0x0

    goto/16 :goto_4

    .line 33
    :cond_e
    const/4 v13, 0x0

    goto/16 :goto_4

    .line 35
    :pswitch_a
    invoke-direct {v0, v1, v14, v10}, Ldet;->U(Ljava/lang/Object;II)Z

    move-result v4

    if-eqz v4, :cond_f

    .line 36
    invoke-static {v1, v8, v9}, Ldet;->V(Ljava/lang/Object;J)Z

    move-result v4

    invoke-virtual {v2, v14, v4}, Ldcv;->a(IZ)V

    const/4 v13, 0x0

    goto/16 :goto_4

    .line 35
    :cond_f
    const/4 v13, 0x0

    goto/16 :goto_4

    .line 37
    :pswitch_b
    invoke-direct {v0, v1, v14, v10}, Ldet;->U(Ljava/lang/Object;II)Z

    move-result v4

    if-eqz v4, :cond_10

    .line 38
    invoke-static {v1, v8, v9}, Ldet;->t(Ljava/lang/Object;J)I

    move-result v4

    invoke-virtual {v2, v14, v4}, Ldcv;->e(II)V

    const/4 v13, 0x0

    goto/16 :goto_4

    .line 37
    :cond_10
    const/4 v13, 0x0

    goto/16 :goto_4

    .line 39
    :pswitch_c
    invoke-direct {v0, v1, v14, v10}, Ldet;->U(Ljava/lang/Object;II)Z

    move-result v4

    if-eqz v4, :cond_11

    .line 40
    invoke-static {v1, v8, v9}, Ldet;->E(Ljava/lang/Object;J)J

    move-result-wide v8

    invoke-virtual {v2, v14, v8, v9}, Ldcv;->f(IJ)V

    const/4 v13, 0x0

    goto/16 :goto_4

    .line 39
    :cond_11
    const/4 v13, 0x0

    goto/16 :goto_4

    .line 41
    :pswitch_d
    invoke-direct {v0, v1, v14, v10}, Ldet;->U(Ljava/lang/Object;II)Z

    move-result v4

    if-eqz v4, :cond_12

    .line 42
    invoke-static {v1, v8, v9}, Ldet;->t(Ljava/lang/Object;J)I

    move-result v4

    invoke-virtual {v2, v14, v4}, Ldcv;->i(II)V

    const/4 v13, 0x0

    goto/16 :goto_4

    .line 41
    :cond_12
    const/4 v13, 0x0

    goto/16 :goto_4

    .line 43
    :pswitch_e
    invoke-direct {v0, v1, v14, v10}, Ldet;->U(Ljava/lang/Object;II)Z

    move-result v4

    if-eqz v4, :cond_13

    .line 44
    invoke-static {v1, v8, v9}, Ldet;->E(Ljava/lang/Object;J)J

    move-result-wide v8

    invoke-virtual {v2, v14, v8, v9}, Ldcv;->s(IJ)V

    const/4 v13, 0x0

    goto/16 :goto_4

    .line 43
    :cond_13
    const/4 v13, 0x0

    goto/16 :goto_4

    .line 45
    :pswitch_f
    invoke-direct {v0, v1, v14, v10}, Ldet;->U(Ljava/lang/Object;II)Z

    move-result v4

    if-eqz v4, :cond_14

    .line 46
    invoke-static {v1, v8, v9}, Ldet;->E(Ljava/lang/Object;J)J

    move-result-wide v8

    invoke-virtual {v2, v14, v8, v9}, Ldcv;->j(IJ)V

    const/4 v13, 0x0

    goto/16 :goto_4

    .line 45
    :cond_14
    const/4 v13, 0x0

    goto/16 :goto_4

    .line 47
    :pswitch_10
    invoke-direct {v0, v1, v14, v10}, Ldet;->U(Ljava/lang/Object;II)Z

    move-result v4

    if-eqz v4, :cond_15

    .line 48
    invoke-static {v1, v8, v9}, Ldet;->p(Ljava/lang/Object;J)F

    move-result v4

    invoke-virtual {v2, v14, v4}, Ldcv;->g(IF)V

    const/4 v13, 0x0

    goto/16 :goto_4

    .line 47
    :cond_15
    const/4 v13, 0x0

    goto/16 :goto_4

    .line 49
    :pswitch_11
    invoke-direct {v0, v1, v14, v10}, Ldet;->U(Ljava/lang/Object;II)Z

    move-result v4

    if-eqz v4, :cond_16

    .line 50
    invoke-static {v1, v8, v9}, Ldet;->o(Ljava/lang/Object;J)D

    move-result-wide v8

    invoke-virtual {v2, v14, v8, v9}, Ldcv;->c(ID)V

    const/4 v13, 0x0

    goto/16 :goto_4

    .line 49
    :cond_16
    const/4 v13, 0x0

    goto/16 :goto_4

    .line 51
    :pswitch_12
    invoke-virtual {v7, v1, v8, v9}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    invoke-direct {v0, v2, v14, v4, v10}, Ldet;->Z(Ldcv;ILjava/lang/Object;I)V

    const/4 v13, 0x0

    goto/16 :goto_4

    .line 52
    :pswitch_13
    invoke-direct {v0, v10}, Ldet;->s(I)I

    move-result v4

    .line 53
    invoke-virtual {v7, v1, v8, v9}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/List;

    .line 54
    invoke-direct {v0, v10}, Ldet;->G(I)Ldfg;

    move-result-object v9

    .line 55
    invoke-static {v4, v8, v2, v9}, Ldfh;->I(ILjava/util/List;Ldcv;Ldfg;)V

    const/4 v13, 0x0

    goto/16 :goto_4

    .line 56
    :pswitch_14
    invoke-direct {v0, v10}, Ldet;->s(I)I

    move-result v4

    invoke-virtual {v7, v1, v8, v9}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/List;

    .line 57
    const/4 v13, 0x1

    invoke-static {v4, v8, v2, v13}, Ldfh;->P(ILjava/util/List;Ldcv;Z)V

    const/4 v13, 0x0

    goto/16 :goto_4

    .line 58
    :pswitch_15
    const/4 v13, 0x1

    invoke-direct {v0, v10}, Ldet;->s(I)I

    move-result v4

    invoke-virtual {v7, v1, v8, v9}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/List;

    .line 59
    invoke-static {v4, v8, v2, v13}, Ldfh;->O(ILjava/util/List;Ldcv;Z)V

    const/4 v13, 0x0

    goto/16 :goto_4

    .line 60
    :pswitch_16
    const/4 v13, 0x1

    invoke-direct {v0, v10}, Ldet;->s(I)I

    move-result v4

    invoke-virtual {v7, v1, v8, v9}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/List;

    .line 61
    invoke-static {v4, v8, v2, v13}, Ldfh;->N(ILjava/util/List;Ldcv;Z)V

    const/4 v13, 0x0

    goto/16 :goto_4

    .line 62
    :pswitch_17
    const/4 v13, 0x1

    invoke-direct {v0, v10}, Ldet;->s(I)I

    move-result v4

    invoke-virtual {v7, v1, v8, v9}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/List;

    .line 63
    invoke-static {v4, v8, v2, v13}, Ldfh;->M(ILjava/util/List;Ldcv;Z)V

    const/4 v13, 0x0

    goto/16 :goto_4

    .line 64
    :pswitch_18
    const/4 v13, 0x1

    invoke-direct {v0, v10}, Ldet;->s(I)I

    move-result v4

    invoke-virtual {v7, v1, v8, v9}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/List;

    .line 65
    invoke-static {v4, v8, v2, v13}, Ldfh;->E(ILjava/util/List;Ldcv;Z)V

    const/4 v13, 0x0

    goto/16 :goto_4

    .line 66
    :pswitch_19
    const/4 v13, 0x1

    invoke-direct {v0, v10}, Ldet;->s(I)I

    move-result v4

    invoke-virtual {v7, v1, v8, v9}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/List;

    .line 67
    invoke-static {v4, v8, v2, v13}, Ldfh;->R(ILjava/util/List;Ldcv;Z)V

    const/4 v13, 0x0

    goto/16 :goto_4

    .line 68
    :pswitch_1a
    const/4 v13, 0x1

    invoke-direct {v0, v10}, Ldet;->s(I)I

    move-result v4

    invoke-virtual {v7, v1, v8, v9}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/List;

    .line 69
    invoke-static {v4, v8, v2, v13}, Ldfh;->B(ILjava/util/List;Ldcv;Z)V

    const/4 v13, 0x0

    goto/16 :goto_4

    .line 70
    :pswitch_1b
    const/4 v13, 0x1

    invoke-direct {v0, v10}, Ldet;->s(I)I

    move-result v4

    invoke-virtual {v7, v1, v8, v9}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/List;

    .line 71
    invoke-static {v4, v8, v2, v13}, Ldfh;->F(ILjava/util/List;Ldcv;Z)V

    const/4 v13, 0x0

    goto/16 :goto_4

    .line 72
    :pswitch_1c
    const/4 v13, 0x1

    invoke-direct {v0, v10}, Ldet;->s(I)I

    move-result v4

    invoke-virtual {v7, v1, v8, v9}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/List;

    .line 73
    invoke-static {v4, v8, v2, v13}, Ldfh;->G(ILjava/util/List;Ldcv;Z)V

    const/4 v13, 0x0

    goto/16 :goto_4

    .line 74
    :pswitch_1d
    const/4 v13, 0x1

    invoke-direct {v0, v10}, Ldet;->s(I)I

    move-result v4

    invoke-virtual {v7, v1, v8, v9}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/List;

    .line 75
    invoke-static {v4, v8, v2, v13}, Ldfh;->J(ILjava/util/List;Ldcv;Z)V

    const/4 v13, 0x0

    goto/16 :goto_4

    .line 76
    :pswitch_1e
    const/4 v13, 0x1

    invoke-direct {v0, v10}, Ldet;->s(I)I

    move-result v4

    invoke-virtual {v7, v1, v8, v9}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/List;

    .line 77
    invoke-static {v4, v8, v2, v13}, Ldfh;->S(ILjava/util/List;Ldcv;Z)V

    const/4 v13, 0x0

    goto/16 :goto_4

    .line 78
    :pswitch_1f
    const/4 v13, 0x1

    invoke-direct {v0, v10}, Ldet;->s(I)I

    move-result v4

    invoke-virtual {v7, v1, v8, v9}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/List;

    .line 79
    invoke-static {v4, v8, v2, v13}, Ldfh;->K(ILjava/util/List;Ldcv;Z)V

    const/4 v13, 0x0

    goto/16 :goto_4

    .line 80
    :pswitch_20
    const/4 v13, 0x1

    invoke-direct {v0, v10}, Ldet;->s(I)I

    move-result v4

    invoke-virtual {v7, v1, v8, v9}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/List;

    .line 81
    invoke-static {v4, v8, v2, v13}, Ldfh;->H(ILjava/util/List;Ldcv;Z)V

    const/4 v13, 0x0

    goto/16 :goto_4

    .line 82
    :pswitch_21
    const/4 v13, 0x1

    invoke-direct {v0, v10}, Ldet;->s(I)I

    move-result v4

    invoke-virtual {v7, v1, v8, v9}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/List;

    .line 83
    invoke-static {v4, v8, v2, v13}, Ldfh;->D(ILjava/util/List;Ldcv;Z)V

    const/4 v13, 0x0

    goto/16 :goto_4

    .line 84
    :pswitch_22
    invoke-direct {v0, v10}, Ldet;->s(I)I

    move-result v4

    invoke-virtual {v7, v1, v8, v9}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/List;

    .line 85
    const/4 v13, 0x0

    invoke-static {v4, v8, v2, v13}, Ldfh;->P(ILjava/util/List;Ldcv;Z)V

    goto/16 :goto_4

    .line 86
    :pswitch_23
    const/4 v13, 0x0

    invoke-direct {v0, v10}, Ldet;->s(I)I

    move-result v4

    invoke-virtual {v7, v1, v8, v9}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/List;

    .line 87
    invoke-static {v4, v8, v2, v13}, Ldfh;->O(ILjava/util/List;Ldcv;Z)V

    goto/16 :goto_4

    .line 88
    :pswitch_24
    const/4 v13, 0x0

    invoke-direct {v0, v10}, Ldet;->s(I)I

    move-result v4

    invoke-virtual {v7, v1, v8, v9}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/List;

    .line 89
    invoke-static {v4, v8, v2, v13}, Ldfh;->N(ILjava/util/List;Ldcv;Z)V

    goto/16 :goto_4

    .line 90
    :pswitch_25
    const/4 v13, 0x0

    invoke-direct {v0, v10}, Ldet;->s(I)I

    move-result v4

    invoke-virtual {v7, v1, v8, v9}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/List;

    .line 91
    invoke-static {v4, v8, v2, v13}, Ldfh;->M(ILjava/util/List;Ldcv;Z)V

    goto/16 :goto_4

    .line 92
    :pswitch_26
    const/4 v13, 0x0

    invoke-direct {v0, v10}, Ldet;->s(I)I

    move-result v4

    invoke-virtual {v7, v1, v8, v9}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/List;

    .line 93
    invoke-static {v4, v8, v2, v13}, Ldfh;->E(ILjava/util/List;Ldcv;Z)V

    goto/16 :goto_4

    .line 94
    :pswitch_27
    const/4 v13, 0x0

    invoke-direct {v0, v10}, Ldet;->s(I)I

    move-result v4

    invoke-virtual {v7, v1, v8, v9}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/List;

    .line 95
    invoke-static {v4, v8, v2, v13}, Ldfh;->R(ILjava/util/List;Ldcv;Z)V

    goto/16 :goto_4

    .line 96
    :pswitch_28
    invoke-direct {v0, v10}, Ldet;->s(I)I

    move-result v4

    invoke-virtual {v7, v1, v8, v9}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/List;

    .line 97
    invoke-static {v4, v8, v2}, Ldfh;->C(ILjava/util/List;Ldcv;)V

    const/4 v13, 0x0

    goto/16 :goto_4

    .line 98
    :pswitch_29
    invoke-direct {v0, v10}, Ldet;->s(I)I

    move-result v4

    .line 99
    invoke-virtual {v7, v1, v8, v9}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/List;

    .line 100
    invoke-direct {v0, v10}, Ldet;->G(I)Ldfg;

    move-result-object v9

    .line 101
    invoke-static {v4, v8, v2, v9}, Ldfh;->L(ILjava/util/List;Ldcv;Ldfg;)V

    const/4 v13, 0x0

    goto/16 :goto_4

    .line 102
    :pswitch_2a
    invoke-direct {v0, v10}, Ldet;->s(I)I

    move-result v4

    invoke-virtual {v7, v1, v8, v9}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/List;

    .line 103
    invoke-static {v4, v8, v2}, Ldfh;->Q(ILjava/util/List;Ldcv;)V

    const/4 v13, 0x0

    goto/16 :goto_4

    .line 104
    :pswitch_2b
    invoke-direct {v0, v10}, Ldet;->s(I)I

    move-result v4

    invoke-virtual {v7, v1, v8, v9}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/List;

    .line 105
    const/4 v13, 0x0

    invoke-static {v4, v8, v2, v13}, Ldfh;->B(ILjava/util/List;Ldcv;Z)V

    goto/16 :goto_4

    .line 106
    :pswitch_2c
    const/4 v13, 0x0

    invoke-direct {v0, v10}, Ldet;->s(I)I

    move-result v4

    invoke-virtual {v7, v1, v8, v9}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/List;

    .line 107
    invoke-static {v4, v8, v2, v13}, Ldfh;->F(ILjava/util/List;Ldcv;Z)V

    goto/16 :goto_4

    .line 108
    :pswitch_2d
    const/4 v13, 0x0

    invoke-direct {v0, v10}, Ldet;->s(I)I

    move-result v4

    invoke-virtual {v7, v1, v8, v9}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/List;

    .line 109
    invoke-static {v4, v8, v2, v13}, Ldfh;->G(ILjava/util/List;Ldcv;Z)V

    goto/16 :goto_4

    .line 110
    :pswitch_2e
    const/4 v13, 0x0

    invoke-direct {v0, v10}, Ldet;->s(I)I

    move-result v4

    invoke-virtual {v7, v1, v8, v9}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/List;

    .line 111
    invoke-static {v4, v8, v2, v13}, Ldfh;->J(ILjava/util/List;Ldcv;Z)V

    goto/16 :goto_4

    .line 112
    :pswitch_2f
    const/4 v13, 0x0

    invoke-direct {v0, v10}, Ldet;->s(I)I

    move-result v4

    invoke-virtual {v7, v1, v8, v9}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/List;

    .line 113
    invoke-static {v4, v8, v2, v13}, Ldfh;->S(ILjava/util/List;Ldcv;Z)V

    goto/16 :goto_4

    .line 114
    :pswitch_30
    const/4 v13, 0x0

    invoke-direct {v0, v10}, Ldet;->s(I)I

    move-result v4

    invoke-virtual {v7, v1, v8, v9}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/List;

    .line 115
    invoke-static {v4, v8, v2, v13}, Ldfh;->K(ILjava/util/List;Ldcv;Z)V

    goto/16 :goto_4

    .line 116
    :pswitch_31
    const/4 v13, 0x0

    invoke-direct {v0, v10}, Ldet;->s(I)I

    move-result v4

    invoke-virtual {v7, v1, v8, v9}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/List;

    .line 117
    invoke-static {v4, v8, v2, v13}, Ldfh;->H(ILjava/util/List;Ldcv;Z)V

    goto/16 :goto_4

    .line 118
    :pswitch_32
    const/4 v13, 0x0

    invoke-direct {v0, v10}, Ldet;->s(I)I

    move-result v4

    invoke-virtual {v7, v1, v8, v9}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/List;

    .line 119
    invoke-static {v4, v8, v2, v13}, Ldfh;->D(ILjava/util/List;Ldcv;Z)V

    goto/16 :goto_4

    :pswitch_33
    const/4 v13, 0x0

    and-int/2addr v4, v12

    if-eqz v4, :cond_17

    .line 120
    invoke-virtual {v7, v1, v8, v9}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    invoke-direct {v0, v10}, Ldet;->G(I)Ldfg;

    move-result-object v8

    .line 121
    invoke-virtual {v2, v14, v4, v8}, Ldcv;->h(ILjava/lang/Object;Ldfg;)V

    goto/16 :goto_4

    :pswitch_34
    const/4 v13, 0x0

    and-int/2addr v4, v12

    if-eqz v4, :cond_17

    .line 122
    invoke-virtual {v7, v1, v8, v9}, Lsun/misc/Unsafe;->getLong(Ljava/lang/Object;J)J

    move-result-wide v8

    invoke-virtual {v2, v14, v8, v9}, Ldcv;->p(IJ)V

    goto/16 :goto_4

    :pswitch_35
    const/4 v13, 0x0

    and-int/2addr v4, v12

    if-eqz v4, :cond_17

    .line 123
    invoke-virtual {v7, v1, v8, v9}, Lsun/misc/Unsafe;->getInt(Ljava/lang/Object;J)I

    move-result v4

    invoke-virtual {v2, v14, v4}, Ldcv;->o(II)V

    goto/16 :goto_4

    :pswitch_36
    const/4 v13, 0x0

    and-int/2addr v4, v12

    if-eqz v4, :cond_17

    .line 124
    invoke-virtual {v7, v1, v8, v9}, Lsun/misc/Unsafe;->getLong(Ljava/lang/Object;J)J

    move-result-wide v8

    invoke-virtual {v2, v14, v8, v9}, Ldcv;->n(IJ)V

    goto/16 :goto_4

    :pswitch_37
    const/4 v13, 0x0

    and-int/2addr v4, v12

    if-eqz v4, :cond_17

    .line 125
    invoke-virtual {v7, v1, v8, v9}, Lsun/misc/Unsafe;->getInt(Ljava/lang/Object;J)I

    move-result v4

    invoke-virtual {v2, v14, v4}, Ldcv;->m(II)V

    goto/16 :goto_4

    :pswitch_38
    const/4 v13, 0x0

    and-int/2addr v4, v12

    if-eqz v4, :cond_17

    .line 126
    invoke-virtual {v7, v1, v8, v9}, Lsun/misc/Unsafe;->getInt(Ljava/lang/Object;J)I

    move-result v4

    invoke-virtual {v2, v14, v4}, Ldcv;->d(II)V

    goto/16 :goto_4

    :pswitch_39
    const/4 v13, 0x0

    and-int/2addr v4, v12

    if-eqz v4, :cond_17

    .line 127
    invoke-virtual {v7, v1, v8, v9}, Lsun/misc/Unsafe;->getInt(Ljava/lang/Object;J)I

    move-result v4

    invoke-virtual {v2, v14, v4}, Ldcv;->r(II)V

    goto/16 :goto_4

    :pswitch_3a
    const/4 v13, 0x0

    and-int/2addr v4, v12

    if-eqz v4, :cond_17

    .line 128
    invoke-virtual {v7, v1, v8, v9}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ldcl;

    invoke-virtual {v2, v14, v4}, Ldcv;->b(ILdcl;)V

    goto/16 :goto_4

    :pswitch_3b
    const/4 v13, 0x0

    and-int/2addr v4, v12

    if-eqz v4, :cond_17

    .line 129
    invoke-virtual {v7, v1, v8, v9}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    .line 130
    invoke-direct {v0, v10}, Ldet;->G(I)Ldfg;

    move-result-object v8

    invoke-virtual {v2, v14, v4, v8}, Ldcv;->k(ILjava/lang/Object;Ldfg;)V

    goto/16 :goto_4

    :pswitch_3c
    const/4 v13, 0x0

    and-int/2addr v4, v12

    if-eqz v4, :cond_17

    .line 131
    invoke-virtual {v7, v1, v8, v9}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    invoke-static {v14, v4, v2}, Ldet;->aa(ILjava/lang/Object;Ldcv;)V

    goto :goto_4

    :pswitch_3d
    const/4 v13, 0x0

    and-int/2addr v4, v12

    if-eqz v4, :cond_17

    .line 132
    invoke-static {v1, v8, v9}, Ldfz;->w(Ljava/lang/Object;J)Z

    move-result v4

    .line 133
    invoke-virtual {v2, v14, v4}, Ldcv;->a(IZ)V

    goto :goto_4

    :pswitch_3e
    const/4 v13, 0x0

    and-int/2addr v4, v12

    if-eqz v4, :cond_17

    .line 134
    invoke-virtual {v7, v1, v8, v9}, Lsun/misc/Unsafe;->getInt(Ljava/lang/Object;J)I

    move-result v4

    invoke-virtual {v2, v14, v4}, Ldcv;->e(II)V

    goto :goto_4

    :pswitch_3f
    const/4 v13, 0x0

    and-int/2addr v4, v12

    if-eqz v4, :cond_17

    .line 135
    invoke-virtual {v7, v1, v8, v9}, Lsun/misc/Unsafe;->getLong(Ljava/lang/Object;J)J

    move-result-wide v8

    invoke-virtual {v2, v14, v8, v9}, Ldcv;->f(IJ)V

    goto :goto_4

    :pswitch_40
    const/4 v13, 0x0

    and-int/2addr v4, v12

    if-eqz v4, :cond_17

    .line 136
    invoke-virtual {v7, v1, v8, v9}, Lsun/misc/Unsafe;->getInt(Ljava/lang/Object;J)I

    move-result v4

    invoke-virtual {v2, v14, v4}, Ldcv;->i(II)V

    goto :goto_4

    :pswitch_41
    const/4 v13, 0x0

    and-int/2addr v4, v12

    if-eqz v4, :cond_17

    .line 137
    invoke-virtual {v7, v1, v8, v9}, Lsun/misc/Unsafe;->getLong(Ljava/lang/Object;J)J

    move-result-wide v8

    invoke-virtual {v2, v14, v8, v9}, Ldcv;->s(IJ)V

    goto :goto_4

    :pswitch_42
    const/4 v13, 0x0

    and-int/2addr v4, v12

    if-eqz v4, :cond_17

    .line 138
    invoke-virtual {v7, v1, v8, v9}, Lsun/misc/Unsafe;->getLong(Ljava/lang/Object;J)J

    move-result-wide v8

    invoke-virtual {v2, v14, v8, v9}, Ldcv;->j(IJ)V

    goto :goto_4

    :pswitch_43
    const/4 v13, 0x0

    and-int/2addr v4, v12

    if-eqz v4, :cond_17

    .line 139
    invoke-static {v1, v8, v9}, Ldfz;->c(Ljava/lang/Object;J)F

    move-result v4

    .line 140
    invoke-virtual {v2, v14, v4}, Ldcv;->g(IF)V

    goto :goto_4

    :pswitch_44
    const/4 v13, 0x0

    and-int/2addr v4, v12

    if-eqz v4, :cond_17

    .line 141
    invoke-static {v1, v8, v9}, Ldfz;->b(Ljava/lang/Object;J)D

    move-result-wide v8

    .line 142
    invoke-virtual {v2, v14, v8, v9}, Ldcv;->c(ID)V

    .line 12
    :cond_17
    :goto_4
    add-int/lit8 v10, v10, 0x3

    const v8, 0xfffff

    goto/16 :goto_1

    .line 142
    :cond_18
    nop

    :goto_5
    if-eqz v5, :cond_1a

    .line 143
    invoke-static {v2, v5}, Lhl;->r(Ldcv;Ljava/util/Map$Entry;)V

    .line 144
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_19

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    move-object v5, v4

    check-cast v5, Ljava/util/Map$Entry;

    goto :goto_5

    :cond_19
    const/4 v5, 0x0

    goto :goto_5

    .line 145
    :cond_1a
    invoke-static/range {p1 .. p2}, Ldet;->ad(Ljava/lang/Object;Ldcv;)V

    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_44
        :pswitch_43
        :pswitch_42
        :pswitch_41
        :pswitch_40
        :pswitch_3f
        :pswitch_3e
        :pswitch_3d
        :pswitch_3c
        :pswitch_3b
        :pswitch_3a
        :pswitch_39
        :pswitch_38
        :pswitch_37
        :pswitch_36
        :pswitch_35
        :pswitch_34
        :pswitch_33
        :pswitch_32
        :pswitch_31
        :pswitch_30
        :pswitch_2f
        :pswitch_2e
        :pswitch_2d
        :pswitch_2c
        :pswitch_2b
        :pswitch_2a
        :pswitch_29
        :pswitch_28
        :pswitch_27
        :pswitch_26
        :pswitch_25
        :pswitch_24
        :pswitch_23
        :pswitch_22
        :pswitch_21
        :pswitch_20
        :pswitch_1f
        :pswitch_1e
        :pswitch_1d
        :pswitch_1c
        :pswitch_1b
        :pswitch_1a
        :pswitch_19
        :pswitch_18
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
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

.method private final Z(Ldcv;ILjava/lang/Object;I)V
    .locals 4

    .line 1
    if-eqz p3, :cond_0

    invoke-direct {p0, p4}, Ldet;->H(I)Ljava/lang/Object;

    move-result-object p4

    invoke-static {p4}, Lev;->U(Ljava/lang/Object;)Ldek;

    move-result-object p4

    .line 2
    check-cast p3, Ldem;

    iget-object v0, p1, Ldcv;->a:Ldcu;

    .line 3
    invoke-interface {p3}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p3

    invoke-interface {p3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p3

    :goto_0
    invoke-interface {p3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    iget-object v1, p1, Ldcv;->a:Ldcu;

    const/4 v2, 0x2

    .line 4
    invoke-virtual {v1, p2, v2}, Ldcu;->A(II)V

    iget-object v1, p1, Ldcv;->a:Ldcu;

    .line 5
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    invoke-static {p4, v2, v3}, Ldel;->a(Ldek;Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v2

    .line 6
    invoke-virtual {v1, v2}, Ldcu;->C(I)V

    iget-object v1, p1, Ldcv;->a:Ldcu;

    .line 7
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    invoke-static {v1, p4, v2, v0}, Ldel;->c(Ldcu;Ldek;Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method private static final aa(ILjava/lang/Object;Ldcv;)V
    .locals 1

    .line 1
    instance-of v0, p1, Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 2
    check-cast p1, Ljava/lang/String;

    invoke-virtual {p2, p0, p1}, Ldcv;->q(ILjava/lang/String;)V

    return-void

    .line 3
    :cond_0
    check-cast p1, Ldcl;

    invoke-virtual {p2, p0, p1}, Ldcv;->b(ILdcl;)V

    return-void
.end method

.method private final ab(Ljava/lang/Object;ILjava/lang/Object;)Ljava/lang/Object;
    .locals 6

    .line 1
    invoke-direct {p0, p2}, Ldet;->s(I)I

    move-result v0

    .line 2
    invoke-direct {p0, p2}, Ldet;->C(I)I

    move-result v1

    invoke-static {v1}, Ldet;->D(I)J

    move-result-wide v1

    .line 3
    invoke-static {p1, v1, v2}, Ldfz;->h(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object p1

    if-nez p1, :cond_0

    return-object p3

    .line 4
    :cond_0
    invoke-direct {p0, p2}, Ldet;->F(I)Lddo;

    move-result-object v1

    if-nez v1, :cond_1

    return-object p3

    .line 5
    :cond_1
    check-cast p1, Ldem;

    .line 6
    invoke-direct {p0, p2}, Ldet;->H(I)Ljava/lang/Object;

    move-result-object p2

    invoke-static {p2}, Lev;->U(Ljava/lang/Object;)Ldek;

    move-result-object p2

    .line 7
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_2
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 8
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 9
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-interface {v1, v3}, Lddo;->a(I)Z

    move-result v3

    if-nez v3, :cond_2

    if-nez p3, :cond_3

    invoke-static {}, Ldfr;->b()Ldfr;

    move-result-object p3

    .line 10
    :cond_3
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    invoke-static {p2, v3, v4}, Ldel;->a(Ldek;Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v3

    .line 11
    sget-object v4, Ldcl;->b:Ldcl;

    .line 12
    new-array v3, v3, [B

    .line 13
    invoke-static {v3}, Ldcu;->ai([B)Ldcu;

    move-result-object v4

    .line 14
    :try_start_0
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    invoke-static {v4, p2, v5, v2}, Ldel;->c(Ldcu;Ldek;Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 15
    invoke-static {v4, v3}, Lhl;->t(Ldcu;[B)Ldcl;

    move-result-object v2

    invoke-static {p3, v0, v2}, Lev;->K(Ljava/lang/Object;ILdcl;)V

    .line 16
    invoke-interface {p1}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    :catch_0
    move-exception p1

    new-instance p2, Ljava/lang/RuntimeException;

    .line 17
    invoke-direct {p2, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw p2

    :cond_4
    return-object p3
.end method

.method private static final ac(Ljava/lang/Object;)I
    .locals 0

    .line 1
    invoke-static {p0}, Lev;->M(Ljava/lang/Object;)Ldfr;

    move-result-object p0

    .line 2
    invoke-virtual {p0}, Ldfr;->a()I

    move-result p0

    return p0
.end method

.method private static final ad(Ljava/lang/Object;Ldcv;)V
    .locals 0

    .line 1
    invoke-static {p0}, Lev;->M(Ljava/lang/Object;)Ldfr;

    move-result-object p0

    .line 2
    invoke-virtual {p0, p1}, Ldfr;->e(Ldcv;)V

    return-void
.end method

.method static d(Ljava/lang/Object;)Ldfr;
    .locals 2

    .line 1
    check-cast p0, Lddk;

    iget-object v0, p0, Lddk;->s:Ldfr;

    sget-object v1, Ldfr;->a:Ldfr;

    if-ne v0, v1, :cond_0

    invoke-static {}, Ldfr;->b()Ldfr;

    move-result-object v0

    .line 2
    iput-object v0, p0, Lddk;->s:Ldfr;

    :cond_0
    return-object v0
.end method

.method static m(Ldeo;Lev;Ldef;Lev;Lhl;Lev;)Ldet;
    .locals 0

    .line 1
    instance-of p1, p0, Ldfb;

    if-eqz p1, :cond_0

    .line 2
    check-cast p0, Ldfb;

    invoke-static {p0, p2, p3, p4, p5}, Ldet;->n(Ldfb;Ldef;Lev;Lhl;Lev;)Ldet;

    move-result-object p0

    return-object p0

    .line 3
    :cond_0
    check-cast p0, Ldfp;

    const/4 p0, 0x0

    .line 4
    throw p0
.end method

.method static n(Ldfb;Ldef;Lev;Lhl;Lev;)Ldet;
    .locals 35

    .line 1
    move-object/from16 v0, p0

    invoke-virtual/range {p0 .. p0}, Ldfb;->c()I

    move-result v1

    const/4 v2, 0x0

    const/4 v4, 0x2

    if-ne v1, v4, :cond_0

    const/4 v11, 0x1

    goto :goto_0

    .line 22
    :cond_0
    const/4 v11, 0x0

    .line 1
    :goto_0
    iget-object v1, v0, Ldfb;->b:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v4

    .line 2
    invoke-virtual {v1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v5

    const v6, 0xd800

    if-lt v5, v6, :cond_1

    const/4 v5, 0x1

    :goto_1
    add-int/lit8 v7, v5, 0x1

    .line 3
    invoke-virtual {v1, v5}, Ljava/lang/String;->charAt(I)C

    move-result v5

    if-lt v5, v6, :cond_2

    move v5, v7

    goto :goto_1

    .line 22
    :cond_1
    const/4 v7, 0x1

    .line 3
    :cond_2
    add-int/lit8 v5, v7, 0x1

    .line 4
    invoke-virtual {v1, v7}, Ljava/lang/String;->charAt(I)C

    move-result v7

    if-lt v7, v6, :cond_4

    and-int/lit16 v7, v7, 0x1fff

    const/16 v9, 0xd

    :goto_2
    add-int/lit8 v10, v5, 0x1

    .line 5
    invoke-virtual {v1, v5}, Ljava/lang/String;->charAt(I)C

    move-result v5

    if-lt v5, v6, :cond_3

    and-int/lit16 v5, v5, 0x1fff

    shl-int/2addr v5, v9

    or-int/2addr v7, v5

    add-int/lit8 v9, v9, 0xd

    move v5, v10

    goto :goto_2

    :cond_3
    shl-int/2addr v5, v9

    or-int/2addr v7, v5

    move v5, v10

    goto :goto_3

    .line 22
    :cond_4
    nop

    .line 5
    :goto_3
    if-nez v7, :cond_5

    sget-object v7, Ldet;->a:[I

    move-object v13, v7

    const/4 v7, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v12, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    goto/16 :goto_14

    .line 67
    :cond_5
    add-int/lit8 v7, v5, 0x1

    .line 6
    invoke-virtual {v1, v5}, Ljava/lang/String;->charAt(I)C

    move-result v5

    if-lt v5, v6, :cond_7

    and-int/lit16 v5, v5, 0x1fff

    const/16 v9, 0xd

    :goto_4
    add-int/lit8 v10, v7, 0x1

    .line 7
    invoke-virtual {v1, v7}, Ljava/lang/String;->charAt(I)C

    move-result v7

    if-lt v7, v6, :cond_6

    and-int/lit16 v7, v7, 0x1fff

    shl-int/2addr v7, v9

    or-int/2addr v5, v7

    add-int/lit8 v9, v9, 0xd

    move v7, v10

    goto :goto_4

    :cond_6
    shl-int/2addr v7, v9

    or-int/2addr v5, v7

    move v7, v10

    goto :goto_5

    .line 22
    :cond_7
    nop

    .line 7
    :goto_5
    add-int/lit8 v9, v7, 0x1

    .line 8
    invoke-virtual {v1, v7}, Ljava/lang/String;->charAt(I)C

    move-result v7

    if-lt v7, v6, :cond_9

    and-int/lit16 v7, v7, 0x1fff

    const/16 v10, 0xd

    :goto_6
    add-int/lit8 v12, v9, 0x1

    .line 9
    invoke-virtual {v1, v9}, Ljava/lang/String;->charAt(I)C

    move-result v9

    if-lt v9, v6, :cond_8

    and-int/lit16 v9, v9, 0x1fff

    shl-int/2addr v9, v10

    or-int/2addr v7, v9

    add-int/lit8 v10, v10, 0xd

    move v9, v12

    goto :goto_6

    :cond_8
    shl-int/2addr v9, v10

    or-int/2addr v7, v9

    move v9, v12

    goto :goto_7

    .line 22
    :cond_9
    nop

    .line 9
    :goto_7
    add-int/lit8 v10, v9, 0x1

    .line 10
    invoke-virtual {v1, v9}, Ljava/lang/String;->charAt(I)C

    move-result v9

    if-lt v9, v6, :cond_b

    and-int/lit16 v9, v9, 0x1fff

    const/16 v12, 0xd

    :goto_8
    add-int/lit8 v13, v10, 0x1

    .line 11
    invoke-virtual {v1, v10}, Ljava/lang/String;->charAt(I)C

    move-result v10

    if-lt v10, v6, :cond_a

    and-int/lit16 v10, v10, 0x1fff

    shl-int/2addr v10, v12

    or-int/2addr v9, v10

    add-int/lit8 v12, v12, 0xd

    move v10, v13

    goto :goto_8

    :cond_a
    shl-int/2addr v10, v12

    or-int/2addr v9, v10

    move v10, v13

    goto :goto_9

    .line 22
    :cond_b
    nop

    .line 11
    :goto_9
    add-int/lit8 v12, v10, 0x1

    .line 12
    invoke-virtual {v1, v10}, Ljava/lang/String;->charAt(I)C

    move-result v10

    if-lt v10, v6, :cond_d

    and-int/lit16 v10, v10, 0x1fff

    const/16 v13, 0xd

    :goto_a
    add-int/lit8 v14, v12, 0x1

    .line 13
    invoke-virtual {v1, v12}, Ljava/lang/String;->charAt(I)C

    move-result v12

    if-lt v12, v6, :cond_c

    and-int/lit16 v12, v12, 0x1fff

    shl-int/2addr v12, v13

    or-int/2addr v10, v12

    add-int/lit8 v13, v13, 0xd

    move v12, v14

    goto :goto_a

    :cond_c
    shl-int/2addr v12, v13

    or-int/2addr v10, v12

    move v12, v14

    goto :goto_b

    .line 22
    :cond_d
    nop

    .line 13
    :goto_b
    add-int/lit8 v13, v12, 0x1

    .line 14
    invoke-virtual {v1, v12}, Ljava/lang/String;->charAt(I)C

    move-result v12

    if-lt v12, v6, :cond_f

    and-int/lit16 v12, v12, 0x1fff

    const/16 v14, 0xd

    :goto_c
    add-int/lit8 v15, v13, 0x1

    .line 15
    invoke-virtual {v1, v13}, Ljava/lang/String;->charAt(I)C

    move-result v13

    if-lt v13, v6, :cond_e

    and-int/lit16 v13, v13, 0x1fff

    shl-int/2addr v13, v14

    or-int/2addr v12, v13

    add-int/lit8 v14, v14, 0xd

    move v13, v15

    goto :goto_c

    :cond_e
    shl-int/2addr v13, v14

    or-int/2addr v12, v13

    move v13, v15

    goto :goto_d

    .line 22
    :cond_f
    nop

    .line 15
    :goto_d
    add-int/lit8 v14, v13, 0x1

    .line 16
    invoke-virtual {v1, v13}, Ljava/lang/String;->charAt(I)C

    move-result v13

    if-lt v13, v6, :cond_11

    and-int/lit16 v13, v13, 0x1fff

    const/16 v15, 0xd

    :goto_e
    add-int/lit8 v16, v14, 0x1

    .line 17
    invoke-virtual {v1, v14}, Ljava/lang/String;->charAt(I)C

    move-result v14

    if-lt v14, v6, :cond_10

    and-int/lit16 v14, v14, 0x1fff

    shl-int/2addr v14, v15

    or-int/2addr v13, v14

    add-int/lit8 v15, v15, 0xd

    move/from16 v14, v16

    goto :goto_e

    :cond_10
    shl-int/2addr v14, v15

    or-int/2addr v13, v14

    move/from16 v14, v16

    goto :goto_f

    .line 22
    :cond_11
    nop

    .line 17
    :goto_f
    add-int/lit8 v15, v14, 0x1

    .line 18
    invoke-virtual {v1, v14}, Ljava/lang/String;->charAt(I)C

    move-result v14

    if-lt v14, v6, :cond_13

    and-int/lit16 v14, v14, 0x1fff

    const/16 v16, 0xd

    :goto_10
    add-int/lit8 v17, v15, 0x1

    .line 19
    invoke-virtual {v1, v15}, Ljava/lang/String;->charAt(I)C

    move-result v15

    if-lt v15, v6, :cond_12

    and-int/lit16 v15, v15, 0x1fff

    shl-int v15, v15, v16

    or-int/2addr v14, v15

    add-int/lit8 v16, v16, 0xd

    move/from16 v15, v17

    goto :goto_10

    :cond_12
    shl-int v15, v15, v16

    or-int/2addr v14, v15

    move/from16 v15, v17

    goto :goto_11

    .line 22
    :cond_13
    nop

    .line 19
    :goto_11
    add-int/lit8 v16, v15, 0x1

    .line 20
    invoke-virtual {v1, v15}, Ljava/lang/String;->charAt(I)C

    move-result v15

    if-lt v15, v6, :cond_15

    and-int/lit16 v15, v15, 0x1fff

    move/from16 v2, v16

    const/16 v16, 0xd

    :goto_12
    add-int/lit8 v17, v2, 0x1

    .line 21
    invoke-virtual {v1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v2

    if-lt v2, v6, :cond_14

    and-int/lit16 v2, v2, 0x1fff

    shl-int v2, v2, v16

    or-int/2addr v15, v2

    add-int/lit8 v16, v16, 0xd

    move/from16 v2, v17

    goto :goto_12

    :cond_14
    shl-int v2, v2, v16

    or-int/2addr v15, v2

    move/from16 v16, v17

    goto :goto_13

    .line 22
    :cond_15
    nop

    .line 21
    :goto_13
    add-int v2, v15, v13

    add-int/2addr v2, v14

    .line 22
    new-array v2, v2, [I

    add-int v14, v5, v5

    add-int/2addr v14, v7

    move v7, v13

    move-object v13, v2

    move v2, v5

    move/from16 v5, v16

    .line 5
    :goto_14
    sget-object v8, Ldet;->b:Lsun/misc/Unsafe;

    iget-object v3, v0, Ldfb;->c:[Ljava/lang/Object;

    iget-object v6, v0, Ldfb;->a:Lder;

    .line 23
    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v6

    move/from16 v19, v5

    mul-int/lit8 v5, v12, 0x3

    .line 24
    new-array v5, v5, [I

    add-int/2addr v12, v12

    .line 25
    new-array v12, v12, [Ljava/lang/Object;

    add-int v20, v15, v7

    move/from16 v22, v15

    move/from16 v7, v19

    move/from16 v23, v20

    const/16 v19, 0x0

    const/16 v21, 0x0

    :goto_15
    if-ge v7, v4, :cond_33

    add-int/lit8 v24, v7, 0x1

    .line 26
    invoke-virtual {v1, v7}, Ljava/lang/String;->charAt(I)C

    move-result v7

    move/from16 v25, v4

    const v4, 0xd800

    if-lt v7, v4, :cond_17

    and-int/lit16 v7, v7, 0x1fff

    move/from16 v4, v24

    const/16 v24, 0xd

    :goto_16
    add-int/lit8 v26, v4, 0x1

    .line 27
    invoke-virtual {v1, v4}, Ljava/lang/String;->charAt(I)C

    move-result v4

    move/from16 v27, v15

    const v15, 0xd800

    if-lt v4, v15, :cond_16

    and-int/lit16 v4, v4, 0x1fff

    shl-int v4, v4, v24

    or-int/2addr v7, v4

    add-int/lit8 v24, v24, 0xd

    move/from16 v4, v26

    move/from16 v15, v27

    goto :goto_16

    :cond_16
    shl-int v4, v4, v24

    or-int/2addr v7, v4

    move/from16 v4, v26

    goto :goto_17

    .line 53
    :cond_17
    move/from16 v27, v15

    move/from16 v4, v24

    .line 27
    :goto_17
    add-int/lit8 v15, v4, 0x1

    .line 28
    invoke-virtual {v1, v4}, Ljava/lang/String;->charAt(I)C

    move-result v4

    move/from16 v24, v15

    const v15, 0xd800

    if-lt v4, v15, :cond_19

    and-int/lit16 v4, v4, 0x1fff

    move/from16 v15, v24

    const/16 v24, 0xd

    :goto_18
    add-int/lit8 v26, v15, 0x1

    .line 29
    invoke-virtual {v1, v15}, Ljava/lang/String;->charAt(I)C

    move-result v15

    move/from16 v28, v10

    const v10, 0xd800

    if-lt v15, v10, :cond_18

    and-int/lit16 v10, v15, 0x1fff

    shl-int v10, v10, v24

    or-int/2addr v4, v10

    add-int/lit8 v24, v24, 0xd

    move/from16 v15, v26

    move/from16 v10, v28

    goto :goto_18

    :cond_18
    shl-int v10, v15, v24

    or-int/2addr v4, v10

    move/from16 v15, v26

    goto :goto_19

    .line 53
    :cond_19
    move/from16 v28, v10

    move/from16 v15, v24

    .line 29
    :goto_19
    and-int/lit16 v10, v4, 0xff

    move/from16 v24, v9

    and-int/lit16 v9, v4, 0x400

    if-eqz v9, :cond_1a

    add-int/lit8 v9, v21, 0x1

    .line 30
    aput v19, v13, v21

    move/from16 v21, v9

    :cond_1a
    const/16 v9, 0x33

    if-lt v10, v9, :cond_22

    add-int/lit8 v9, v15, 0x1

    .line 31
    invoke-virtual {v1, v15}, Ljava/lang/String;->charAt(I)C

    move-result v15

    move/from16 v26, v9

    const v9, 0xd800

    if-lt v15, v9, :cond_1c

    and-int/lit16 v15, v15, 0x1fff

    const/16 v32, 0xd

    move/from16 v34, v26

    move/from16 v26, v15

    move/from16 v15, v34

    :goto_1a
    add-int/lit8 v33, v15, 0x1

    .line 32
    invoke-virtual {v1, v15}, Ljava/lang/String;->charAt(I)C

    move-result v15

    if-lt v15, v9, :cond_1b

    and-int/lit16 v9, v15, 0x1fff

    shl-int v9, v9, v32

    or-int v26, v26, v9

    add-int/lit8 v32, v32, 0xd

    move/from16 v15, v33

    const v9, 0xd800

    goto :goto_1a

    :cond_1b
    shl-int v9, v15, v32

    or-int v15, v26, v9

    move/from16 v9, v33

    goto :goto_1b

    .line 34
    :cond_1c
    move/from16 v9, v26

    .line 32
    :goto_1b
    move/from16 v26, v9

    add-int/lit8 v9, v10, -0x33

    const/16 v0, 0x9

    if-eq v9, v0, :cond_1e

    const/16 v0, 0x11

    if-ne v9, v0, :cond_1d

    goto :goto_1c

    .line 39
    :cond_1d
    const/16 v0, 0xc

    if-ne v9, v0, :cond_1f

    if-nez v11, :cond_1f

    div-int/lit8 v0, v19, 0x3

    add-int/lit8 v9, v14, 0x1

    add-int/2addr v0, v0

    const/16 v17, 0x1

    add-int/lit8 v0, v0, 0x1

    .line 34
    aget-object v14, v3, v14

    aput-object v14, v12, v0

    move v14, v9

    goto :goto_1d

    .line 32
    :cond_1e
    :goto_1c
    div-int/lit8 v0, v19, 0x3

    add-int/lit8 v9, v14, 0x1

    add-int/2addr v0, v0

    const/16 v17, 0x1

    add-int/lit8 v0, v0, 0x1

    .line 33
    aget-object v14, v3, v14

    aput-object v14, v12, v0

    move v14, v9

    :cond_1f
    :goto_1d
    add-int/2addr v15, v15

    .line 35
    aget-object v0, v3, v15

    .line 36
    instance-of v9, v0, Ljava/lang/reflect/Field;

    if-eqz v9, :cond_20

    .line 37
    check-cast v0, Ljava/lang/reflect/Field;

    goto :goto_1e

    .line 38
    :cond_20
    check-cast v0, Ljava/lang/String;

    invoke-static {v6, v0}, Ldet;->I(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    .line 39
    aput-object v0, v3, v15

    .line 40
    :goto_1e
    move-object v9, v1

    invoke-virtual {v8, v0}, Lsun/misc/Unsafe;->objectFieldOffset(Ljava/lang/reflect/Field;)J

    move-result-wide v0

    long-to-int v1, v0

    add-int/lit8 v15, v15, 0x1

    .line 41
    aget-object v0, v3, v15

    .line 42
    move/from16 v29, v1

    instance-of v1, v0, Ljava/lang/reflect/Field;

    if-eqz v1, :cond_21

    .line 43
    check-cast v0, Ljava/lang/reflect/Field;

    goto :goto_1f

    .line 44
    :cond_21
    check-cast v0, Ljava/lang/String;

    invoke-static {v6, v0}, Ldet;->I(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    .line 45
    aput-object v0, v3, v15

    .line 46
    :goto_1f
    invoke-virtual {v8, v0}, Lsun/misc/Unsafe;->objectFieldOffset(Ljava/lang/reflect/Field;)J

    move-result-wide v0

    long-to-int v1, v0

    move/from16 v31, v2

    move-object v0, v3

    move/from16 v30, v14

    move/from16 v15, v26

    const v2, 0xd800

    const/4 v14, 0x0

    const/16 v17, 0x1

    move/from16 v34, v29

    move/from16 v29, v1

    move/from16 v1, v34

    goto/16 :goto_2a

    .line 34
    :cond_22
    move-object v9, v1

    add-int/lit8 v0, v14, 0x1

    .line 47
    aget-object v1, v3, v14

    check-cast v1, Ljava/lang/String;

    invoke-static {v6, v1}, Ldet;->I(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v1

    const/16 v14, 0x9

    if-eq v10, v14, :cond_2b

    const/16 v14, 0x11

    if-ne v10, v14, :cond_23

    const/16 v17, 0x1

    goto/16 :goto_24

    .line 61
    :cond_23
    const/16 v14, 0x1b

    if-eq v10, v14, :cond_2a

    const/16 v14, 0x31

    if-ne v10, v14, :cond_24

    goto :goto_23

    .line 49
    :cond_24
    const/16 v14, 0xc

    if-eq v10, v14, :cond_28

    const/16 v14, 0x1e

    if-eq v10, v14, :cond_28

    const/16 v14, 0x2c

    if-ne v10, v14, :cond_25

    goto :goto_21

    .line 50
    :cond_25
    const/16 v14, 0x32

    if-ne v10, v14, :cond_27

    add-int/lit8 v14, v22, 0x1

    .line 51
    aput v19, v13, v22

    div-int/lit8 v22, v19, 0x3

    add-int v22, v22, v22

    add-int/lit8 v29, v0, 0x1

    .line 52
    aget-object v0, v3, v0

    aput-object v0, v12, v22

    and-int/lit16 v0, v4, 0x800

    if-eqz v0, :cond_26

    add-int/lit8 v0, v29, 0x1

    add-int/lit8 v22, v22, 0x1

    .line 53
    aget-object v29, v3, v29

    aput-object v29, v12, v22

    move/from16 v22, v14

    goto :goto_20

    :cond_26
    move/from16 v22, v14

    move/from16 v0, v29

    :goto_20
    const/16 v17, 0x1

    goto :goto_25

    :cond_27
    goto :goto_20

    .line 49
    :cond_28
    :goto_21
    if-nez v11, :cond_29

    div-int/lit8 v14, v19, 0x3

    add-int/lit8 v29, v0, 0x1

    add-int/2addr v14, v14

    const/16 v17, 0x1

    add-int/lit8 v14, v14, 0x1

    .line 50
    aget-object v0, v3, v0

    aput-object v0, v12, v14

    move/from16 v0, v29

    :goto_22
    const/16 v17, 0x1

    goto :goto_25

    :cond_29
    goto :goto_22

    .line 61
    :cond_2a
    :goto_23
    div-int/lit8 v14, v19, 0x3

    add-int/lit8 v29, v0, 0x1

    add-int/2addr v14, v14

    const/16 v17, 0x1

    add-int/lit8 v14, v14, 0x1

    .line 49
    aget-object v0, v3, v0

    aput-object v0, v12, v14

    move/from16 v0, v29

    goto :goto_25

    .line 47
    :cond_2b
    const/16 v17, 0x1

    :goto_24
    div-int/lit8 v14, v19, 0x3

    add-int/2addr v14, v14

    add-int/lit8 v14, v14, 0x1

    .line 48
    invoke-virtual {v1}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v29

    aput-object v29, v12, v14

    .line 54
    :goto_25
    move v14, v0

    invoke-virtual {v8, v1}, Lsun/misc/Unsafe;->objectFieldOffset(Ljava/lang/reflect/Field;)J

    move-result-wide v0

    long-to-int v1, v0

    and-int/lit16 v0, v4, 0x1000

    const v29, 0xfffff

    move/from16 v30, v14

    const/16 v14, 0x1000

    if-ne v0, v14, :cond_2f

    const/16 v0, 0x11

    if-gt v10, v0, :cond_2f

    add-int/lit8 v0, v15, 0x1

    .line 55
    invoke-virtual {v9, v15}, Ljava/lang/String;->charAt(I)C

    move-result v14

    const v15, 0xd800

    if-lt v14, v15, :cond_2d

    and-int/lit16 v14, v14, 0x1fff

    const/16 v18, 0xd

    :goto_26
    add-int/lit8 v29, v0, 0x1

    .line 56
    invoke-virtual {v9, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-lt v0, v15, :cond_2c

    and-int/lit16 v0, v0, 0x1fff

    shl-int v0, v0, v18

    or-int/2addr v14, v0

    add-int/lit8 v18, v18, 0xd

    move/from16 v0, v29

    goto :goto_26

    :cond_2c
    shl-int v0, v0, v18

    or-int/2addr v14, v0

    goto :goto_27

    .line 61
    :cond_2d
    move/from16 v29, v0

    .line 56
    :goto_27
    add-int v0, v2, v2

    div-int/lit8 v18, v14, 0x20

    add-int v0, v0, v18

    .line 57
    aget-object v15, v3, v0

    .line 58
    move/from16 v31, v2

    instance-of v2, v15, Ljava/lang/reflect/Field;

    if-eqz v2, :cond_2e

    .line 59
    check-cast v15, Ljava/lang/reflect/Field;

    goto :goto_28

    .line 60
    :cond_2e
    check-cast v15, Ljava/lang/String;

    invoke-static {v6, v15}, Ldet;->I(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v15

    .line 61
    aput-object v15, v3, v0

    .line 62
    :goto_28
    move-object v0, v3

    invoke-virtual {v8, v15}, Lsun/misc/Unsafe;->objectFieldOffset(Ljava/lang/reflect/Field;)J

    move-result-wide v2

    long-to-int v3, v2

    rem-int/lit8 v14, v14, 0x20

    move/from16 v15, v29

    const v2, 0xd800

    move/from16 v29, v3

    goto :goto_29

    .line 61
    :cond_2f
    move/from16 v31, v2

    move-object v0, v3

    const v2, 0xd800

    const/4 v14, 0x0

    .line 62
    :goto_29
    const/16 v3, 0x12

    if-lt v10, v3, :cond_30

    const/16 v3, 0x31

    if-gt v10, v3, :cond_30

    add-int/lit8 v3, v23, 0x1

    .line 63
    aput v1, v13, v23

    move/from16 v23, v3

    goto :goto_2a

    :cond_30
    nop

    .line 46
    :goto_2a
    add-int/lit8 v3, v19, 0x1

    .line 64
    aput v7, v5, v19

    add-int/lit8 v7, v3, 0x1

    and-int/lit16 v2, v4, 0x200

    if-eqz v2, :cond_31

    const/high16 v2, 0x20000000

    goto :goto_2b

    .line 66
    :cond_31
    const/4 v2, 0x0

    .line 64
    :goto_2b
    and-int/lit16 v4, v4, 0x100

    if-eqz v4, :cond_32

    const/high16 v4, 0x10000000

    goto :goto_2c

    .line 66
    :cond_32
    const/4 v4, 0x0

    .line 64
    :goto_2c
    or-int/2addr v2, v4

    shl-int/lit8 v4, v10, 0x14

    or-int/2addr v2, v4

    or-int/2addr v1, v2

    .line 65
    aput v1, v5, v3

    add-int/lit8 v19, v7, 0x1

    shl-int/lit8 v1, v14, 0x14

    or-int v1, v1, v29

    .line 66
    aput v1, v5, v7

    move-object v3, v0

    move-object v1, v9

    move v7, v15

    move/from16 v9, v24

    move/from16 v4, v25

    move/from16 v15, v27

    move/from16 v10, v28

    move/from16 v14, v30

    move/from16 v2, v31

    move-object/from16 v0, p0

    goto/16 :goto_15

    .line 53
    :cond_33
    move/from16 v24, v9

    move/from16 v28, v10

    move/from16 v27, v15

    new-instance v0, Ldet;

    move-object/from16 v1, p0

    iget-object v10, v1, Ldfb;->a:Lder;

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/4 v1, 0x0

    .line 67
    move-object v2, v5

    move-object v5, v0

    move-object v6, v2

    move-object v7, v12

    move/from16 v8, v24

    move/from16 v9, v28

    move-object v12, v13

    move/from16 v13, v27

    move/from16 v14, v20

    move-object/from16 v15, p1

    move-object/from16 v16, p2

    move-object/from16 v17, p3

    move-object/from16 v20, v1

    invoke-direct/range {v5 .. v20}, Ldet;-><init>([I[Ljava/lang/Object;IILder;Z[IIILdef;Lev;Lhl;[B[B[B)V

    return-object v0
.end method

.method private static o(Ljava/lang/Object;J)D
    .locals 0

    .line 1
    invoke-static {p0, p1, p2}, Ldfz;->h(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Double;

    invoke-virtual {p0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide p0

    return-wide p0
.end method

.method private static p(Ljava/lang/Object;J)F
    .locals 0

    .line 1
    invoke-static {p0, p1, p2}, Ldfz;->h(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Float;

    invoke-virtual {p0}, Ljava/lang/Float;->floatValue()F

    move-result p0

    return p0
.end method

.method private final q(Ljava/lang/Object;)I
    .locals 13

    .line 1
    sget-object v0, Ldet;->b:Lsun/misc/Unsafe;

    const v1, 0xfffff

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const v6, 0xfffff

    :goto_0
    iget-object v7, p0, Ldet;->c:[I

    array-length v7, v7

    if-ge v3, v7, :cond_5

    .line 2
    invoke-direct {p0, v3}, Ldet;->C(I)I

    move-result v7

    .line 3
    invoke-direct {p0, v3}, Ldet;->s(I)I

    move-result v8

    invoke-static {v7}, Ldet;->B(I)I

    move-result v9

    const/16 v10, 0x11

    if-gt v9, v10, :cond_1

    iget-object v10, p0, Ldet;->c:[I

    add-int/lit8 v11, v3, 0x2

    .line 4
    aget v10, v10, v11

    and-int v11, v10, v1

    ushr-int/lit8 v10, v10, 0x14

    const/4 v12, 0x1

    shl-int v10, v12, v10

    if-eq v11, v6, :cond_0

    int-to-long v5, v11

    .line 5
    invoke-virtual {v0, p1, v5, v6}, Lsun/misc/Unsafe;->getInt(Ljava/lang/Object;J)I

    move-result v5

    move v6, v11

    goto :goto_1

    .line 152
    :cond_0
    nop

    .line 5
    :goto_1
    goto :goto_2

    .line 152
    :cond_1
    const/4 v10, 0x0

    .line 5
    :goto_2
    invoke-static {v7}, Ldet;->D(I)J

    move-result-wide v11

    packed-switch v9, :pswitch_data_0

    goto/16 :goto_3

    .line 6
    :pswitch_0
    invoke-direct {p0, p1, v8, v3}, Ldet;->U(Ljava/lang/Object;II)Z

    move-result v7

    if-eqz v7, :cond_4

    .line 7
    invoke-virtual {v0, p1, v11, v12}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lder;

    .line 8
    invoke-direct {p0, v3}, Ldet;->G(I)Ldfg;

    move-result-object v9

    .line 9
    invoke-static {v8, v7, v9}, Ldcu;->K(ILder;Ldfg;)I

    move-result v7

    add-int/2addr v4, v7

    goto/16 :goto_3

    .line 10
    :pswitch_1
    invoke-direct {p0, p1, v8, v3}, Ldet;->U(Ljava/lang/Object;II)Z

    move-result v7

    if-eqz v7, :cond_4

    .line 11
    invoke-static {p1, v11, v12}, Ldet;->E(Ljava/lang/Object;J)J

    move-result-wide v9

    invoke-static {v8, v9, v10}, Ldcu;->X(IJ)I

    move-result v7

    add-int/2addr v4, v7

    goto/16 :goto_3

    .line 12
    :pswitch_2
    invoke-direct {p0, p1, v8, v3}, Ldet;->U(Ljava/lang/Object;II)Z

    move-result v7

    if-eqz v7, :cond_4

    .line 13
    invoke-static {p1, v11, v12}, Ldet;->t(Ljava/lang/Object;J)I

    move-result v7

    invoke-static {v8, v7}, Ldcu;->V(II)I

    move-result v7

    add-int/2addr v4, v7

    goto/16 :goto_3

    .line 14
    :pswitch_3
    invoke-direct {p0, p1, v8, v3}, Ldet;->U(Ljava/lang/Object;II)Z

    move-result v7

    if-eqz v7, :cond_4

    .line 15
    invoke-static {v8}, Ldcu;->aB(I)I

    move-result v7

    add-int/2addr v4, v7

    goto/16 :goto_3

    .line 16
    :pswitch_4
    invoke-direct {p0, p1, v8, v3}, Ldet;->U(Ljava/lang/Object;II)Z

    move-result v7

    if-eqz v7, :cond_4

    .line 17
    invoke-static {v8}, Ldcu;->aA(I)I

    move-result v7

    add-int/2addr v4, v7

    goto/16 :goto_3

    .line 18
    :pswitch_5
    invoke-direct {p0, p1, v8, v3}, Ldet;->U(Ljava/lang/Object;II)Z

    move-result v7

    if-eqz v7, :cond_4

    .line 19
    invoke-static {p1, v11, v12}, Ldet;->t(Ljava/lang/Object;J)I

    move-result v7

    invoke-static {v8, v7}, Ldcu;->J(II)I

    move-result v7

    add-int/2addr v4, v7

    goto/16 :goto_3

    .line 20
    :pswitch_6
    invoke-direct {p0, p1, v8, v3}, Ldet;->U(Ljava/lang/Object;II)Z

    move-result v7

    if-eqz v7, :cond_4

    .line 21
    invoke-static {p1, v11, v12}, Ldet;->t(Ljava/lang/Object;J)I

    move-result v7

    invoke-static {v8, v7}, Ldcu;->ac(II)I

    move-result v7

    add-int/2addr v4, v7

    goto/16 :goto_3

    .line 22
    :pswitch_7
    invoke-direct {p0, p1, v8, v3}, Ldet;->U(Ljava/lang/Object;II)Z

    move-result v7

    if-eqz v7, :cond_4

    .line 23
    invoke-virtual {v0, p1, v11, v12}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ldcl;

    .line 24
    invoke-static {v8, v7}, Ldcu;->H(ILdcl;)I

    move-result v7

    add-int/2addr v4, v7

    goto/16 :goto_3

    .line 25
    :pswitch_8
    invoke-direct {p0, p1, v8, v3}, Ldet;->U(Ljava/lang/Object;II)Z

    move-result v7

    if-eqz v7, :cond_4

    .line 26
    invoke-virtual {v0, p1, v11, v12}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v7

    .line 27
    invoke-direct {p0, v3}, Ldet;->G(I)Ldfg;

    move-result-object v9

    invoke-static {v8, v7, v9}, Ldfh;->i(ILjava/lang/Object;Ldfg;)I

    move-result v7

    add-int/2addr v4, v7

    goto/16 :goto_3

    .line 28
    :pswitch_9
    invoke-direct {p0, p1, v8, v3}, Ldet;->U(Ljava/lang/Object;II)Z

    move-result v7

    if-eqz v7, :cond_4

    .line 29
    invoke-virtual {v0, p1, v11, v12}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v7

    .line 30
    instance-of v9, v7, Ldcl;

    if-eqz v9, :cond_2

    .line 31
    check-cast v7, Ldcl;

    invoke-static {v8, v7}, Ldcu;->H(ILdcl;)I

    move-result v7

    add-int/2addr v4, v7

    goto/16 :goto_3

    .line 32
    :cond_2
    check-cast v7, Ljava/lang/String;

    invoke-static {v8, v7}, Ldcu;->Z(ILjava/lang/String;)I

    move-result v7

    add-int/2addr v4, v7

    goto/16 :goto_3

    .line 33
    :pswitch_a
    invoke-direct {p0, p1, v8, v3}, Ldet;->U(Ljava/lang/Object;II)Z

    move-result v7

    if-eqz v7, :cond_4

    .line 34
    invoke-static {v8}, Ldcu;->av(I)I

    move-result v7

    add-int/2addr v4, v7

    goto/16 :goto_3

    .line 35
    :pswitch_b
    invoke-direct {p0, p1, v8, v3}, Ldet;->U(Ljava/lang/Object;II)Z

    move-result v7

    if-eqz v7, :cond_4

    .line 36
    invoke-static {v8}, Ldcu;->ax(I)I

    move-result v7

    add-int/2addr v4, v7

    goto/16 :goto_3

    .line 37
    :pswitch_c
    invoke-direct {p0, p1, v8, v3}, Ldet;->U(Ljava/lang/Object;II)Z

    move-result v7

    if-eqz v7, :cond_4

    .line 38
    invoke-static {v8}, Ldcu;->ay(I)I

    move-result v7

    add-int/2addr v4, v7

    goto/16 :goto_3

    .line 39
    :pswitch_d
    invoke-direct {p0, p1, v8, v3}, Ldet;->U(Ljava/lang/Object;II)Z

    move-result v7

    if-eqz v7, :cond_4

    .line 40
    invoke-static {p1, v11, v12}, Ldet;->t(Ljava/lang/Object;J)I

    move-result v7

    invoke-static {v8, v7}, Ldcu;->M(II)I

    move-result v7

    add-int/2addr v4, v7

    goto/16 :goto_3

    .line 41
    :pswitch_e
    invoke-direct {p0, p1, v8, v3}, Ldet;->U(Ljava/lang/Object;II)Z

    move-result v7

    if-eqz v7, :cond_4

    .line 42
    invoke-static {p1, v11, v12}, Ldet;->E(Ljava/lang/Object;J)J

    move-result-wide v9

    invoke-static {v8, v9, v10}, Ldcu;->ae(IJ)I

    move-result v7

    add-int/2addr v4, v7

    goto/16 :goto_3

    .line 43
    :pswitch_f
    invoke-direct {p0, p1, v8, v3}, Ldet;->U(Ljava/lang/Object;II)Z

    move-result v7

    if-eqz v7, :cond_4

    .line 44
    invoke-static {p1, v11, v12}, Ldet;->E(Ljava/lang/Object;J)J

    move-result-wide v9

    invoke-static {v8, v9, v10}, Ldcu;->O(IJ)I

    move-result v7

    add-int/2addr v4, v7

    goto/16 :goto_3

    .line 45
    :pswitch_10
    invoke-direct {p0, p1, v8, v3}, Ldet;->U(Ljava/lang/Object;II)Z

    move-result v7

    if-eqz v7, :cond_4

    .line 46
    invoke-static {v8}, Ldcu;->az(I)I

    move-result v7

    add-int/2addr v4, v7

    goto/16 :goto_3

    .line 47
    :pswitch_11
    invoke-direct {p0, p1, v8, v3}, Ldet;->U(Ljava/lang/Object;II)Z

    move-result v7

    if-eqz v7, :cond_4

    .line 48
    invoke-static {v8}, Ldcu;->aw(I)I

    move-result v7

    add-int/2addr v4, v7

    goto/16 :goto_3

    .line 49
    :pswitch_12
    invoke-virtual {v0, p1, v11, v12}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v7

    invoke-direct {p0, v3}, Ldet;->H(I)Ljava/lang/Object;

    move-result-object v9

    .line 50
    invoke-static {v8, v7, v9}, Lev;->V(ILjava/lang/Object;Ljava/lang/Object;)I

    move-result v7

    add-int/2addr v4, v7

    goto/16 :goto_3

    .line 51
    :pswitch_13
    invoke-virtual {v0, p1, v11, v12}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/List;

    .line 52
    invoke-direct {p0, v3}, Ldet;->G(I)Ldfg;

    move-result-object v9

    .line 53
    invoke-static {v8, v7, v9}, Ldfh;->f(ILjava/util/List;Ldfg;)I

    move-result v7

    add-int/2addr v4, v7

    goto/16 :goto_3

    .line 54
    :pswitch_14
    invoke-virtual {v0, p1, v11, v12}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/List;

    .line 55
    invoke-static {v7}, Ldfh;->l(Ljava/util/List;)I

    move-result v7

    if-lez v7, :cond_4

    .line 56
    invoke-static {v8}, Ldcu;->ab(I)I

    move-result v8

    invoke-static {v7}, Ldcu;->ad(I)I

    move-result v9

    add-int/2addr v8, v9

    add-int/2addr v8, v7

    add-int/2addr v4, v8

    goto/16 :goto_3

    .line 57
    :pswitch_15
    invoke-virtual {v0, p1, v11, v12}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/List;

    .line 58
    invoke-static {v7}, Ldfh;->k(Ljava/util/List;)I

    move-result v7

    if-lez v7, :cond_4

    .line 59
    invoke-static {v8}, Ldcu;->ab(I)I

    move-result v8

    invoke-static {v7}, Ldcu;->ad(I)I

    move-result v9

    add-int/2addr v8, v9

    add-int/2addr v8, v7

    add-int/2addr v4, v8

    goto/16 :goto_3

    .line 60
    :pswitch_16
    invoke-virtual {v0, p1, v11, v12}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/List;

    .line 61
    invoke-static {v7}, Ldfh;->e(Ljava/util/List;)I

    move-result v7

    if-lez v7, :cond_4

    .line 62
    invoke-static {v8}, Ldcu;->ab(I)I

    move-result v8

    invoke-static {v7}, Ldcu;->ad(I)I

    move-result v9

    add-int/2addr v8, v9

    add-int/2addr v8, v7

    add-int/2addr v4, v8

    goto/16 :goto_3

    .line 63
    :pswitch_17
    invoke-virtual {v0, p1, v11, v12}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/List;

    .line 64
    invoke-static {v7}, Ldfh;->d(Ljava/util/List;)I

    move-result v7

    if-lez v7, :cond_4

    .line 65
    invoke-static {v8}, Ldcu;->ab(I)I

    move-result v8

    invoke-static {v7}, Ldcu;->ad(I)I

    move-result v9

    add-int/2addr v8, v9

    add-int/2addr v8, v7

    add-int/2addr v4, v8

    goto/16 :goto_3

    .line 66
    :pswitch_18
    invoke-virtual {v0, p1, v11, v12}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/List;

    .line 67
    invoke-static {v7}, Ldfh;->c(Ljava/util/List;)I

    move-result v7

    if-lez v7, :cond_4

    .line 68
    invoke-static {v8}, Ldcu;->ab(I)I

    move-result v8

    invoke-static {v7}, Ldcu;->ad(I)I

    move-result v9

    add-int/2addr v8, v9

    add-int/2addr v8, v7

    add-int/2addr v4, v8

    goto/16 :goto_3

    .line 69
    :pswitch_19
    invoke-virtual {v0, p1, v11, v12}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/List;

    .line 70
    invoke-static {v7}, Ldfh;->n(Ljava/util/List;)I

    move-result v7

    if-lez v7, :cond_4

    .line 71
    invoke-static {v8}, Ldcu;->ab(I)I

    move-result v8

    invoke-static {v7}, Ldcu;->ad(I)I

    move-result v9

    add-int/2addr v8, v9

    add-int/2addr v8, v7

    add-int/2addr v4, v8

    goto/16 :goto_3

    .line 72
    :pswitch_1a
    invoke-virtual {v0, p1, v11, v12}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/List;

    .line 73
    invoke-static {v7}, Ldfh;->a(Ljava/util/List;)I

    move-result v7

    if-lez v7, :cond_4

    .line 74
    invoke-static {v8}, Ldcu;->ab(I)I

    move-result v8

    invoke-static {v7}, Ldcu;->ad(I)I

    move-result v9

    add-int/2addr v8, v9

    add-int/2addr v8, v7

    add-int/2addr v4, v8

    goto/16 :goto_3

    .line 75
    :pswitch_1b
    invoke-virtual {v0, p1, v11, v12}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/List;

    .line 76
    invoke-static {v7}, Ldfh;->d(Ljava/util/List;)I

    move-result v7

    if-lez v7, :cond_4

    .line 77
    invoke-static {v8}, Ldcu;->ab(I)I

    move-result v8

    invoke-static {v7}, Ldcu;->ad(I)I

    move-result v9

    add-int/2addr v8, v9

    add-int/2addr v8, v7

    add-int/2addr v4, v8

    goto/16 :goto_3

    .line 78
    :pswitch_1c
    invoke-virtual {v0, p1, v11, v12}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/List;

    .line 79
    invoke-static {v7}, Ldfh;->e(Ljava/util/List;)I

    move-result v7

    if-lez v7, :cond_4

    .line 80
    invoke-static {v8}, Ldcu;->ab(I)I

    move-result v8

    invoke-static {v7}, Ldcu;->ad(I)I

    move-result v9

    add-int/2addr v8, v9

    add-int/2addr v8, v7

    add-int/2addr v4, v8

    goto/16 :goto_3

    .line 81
    :pswitch_1d
    invoke-virtual {v0, p1, v11, v12}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/List;

    .line 82
    invoke-static {v7}, Ldfh;->g(Ljava/util/List;)I

    move-result v7

    if-lez v7, :cond_4

    .line 83
    invoke-static {v8}, Ldcu;->ab(I)I

    move-result v8

    invoke-static {v7}, Ldcu;->ad(I)I

    move-result v9

    add-int/2addr v8, v9

    add-int/2addr v8, v7

    add-int/2addr v4, v8

    goto/16 :goto_3

    .line 84
    :pswitch_1e
    invoke-virtual {v0, p1, v11, v12}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/List;

    .line 85
    invoke-static {v7}, Ldfh;->o(Ljava/util/List;)I

    move-result v7

    if-lez v7, :cond_4

    .line 86
    invoke-static {v8}, Ldcu;->ab(I)I

    move-result v8

    invoke-static {v7}, Ldcu;->ad(I)I

    move-result v9

    add-int/2addr v8, v9

    add-int/2addr v8, v7

    add-int/2addr v4, v8

    goto/16 :goto_3

    .line 87
    :pswitch_1f
    invoke-virtual {v0, p1, v11, v12}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/List;

    .line 88
    invoke-static {v7}, Ldfh;->h(Ljava/util/List;)I

    move-result v7

    if-lez v7, :cond_4

    .line 89
    invoke-static {v8}, Ldcu;->ab(I)I

    move-result v8

    invoke-static {v7}, Ldcu;->ad(I)I

    move-result v9

    add-int/2addr v8, v9

    add-int/2addr v8, v7

    add-int/2addr v4, v8

    goto/16 :goto_3

    .line 90
    :pswitch_20
    invoke-virtual {v0, p1, v11, v12}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/List;

    .line 91
    invoke-static {v7}, Ldfh;->d(Ljava/util/List;)I

    move-result v7

    if-lez v7, :cond_4

    .line 92
    invoke-static {v8}, Ldcu;->ab(I)I

    move-result v8

    invoke-static {v7}, Ldcu;->ad(I)I

    move-result v9

    add-int/2addr v8, v9

    add-int/2addr v8, v7

    add-int/2addr v4, v8

    goto/16 :goto_3

    .line 93
    :pswitch_21
    invoke-virtual {v0, p1, v11, v12}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/List;

    .line 94
    invoke-static {v7}, Ldfh;->e(Ljava/util/List;)I

    move-result v7

    if-lez v7, :cond_4

    .line 95
    invoke-static {v8}, Ldcu;->ab(I)I

    move-result v8

    invoke-static {v7}, Ldcu;->ad(I)I

    move-result v9

    add-int/2addr v8, v9

    add-int/2addr v8, v7

    add-int/2addr v4, v8

    goto/16 :goto_3

    .line 96
    :pswitch_22
    invoke-virtual {v0, p1, v11, v12}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/List;

    .line 97
    invoke-static {v8, v7}, Ldfh;->y(ILjava/util/List;)I

    move-result v7

    add-int/2addr v4, v7

    goto/16 :goto_3

    .line 98
    :pswitch_23
    invoke-virtual {v0, p1, v11, v12}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/List;

    .line 99
    invoke-static {v8, v7}, Ldfh;->x(ILjava/util/List;)I

    move-result v7

    add-int/2addr v4, v7

    goto/16 :goto_3

    .line 100
    :pswitch_24
    invoke-virtual {v0, p1, v11, v12}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/List;

    .line 101
    invoke-static {v8, v7}, Ldfh;->u(ILjava/util/List;)I

    move-result v7

    add-int/2addr v4, v7

    goto/16 :goto_3

    .line 102
    :pswitch_25
    invoke-virtual {v0, p1, v11, v12}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/List;

    .line 103
    invoke-static {v8, v7}, Ldfh;->t(ILjava/util/List;)I

    move-result v7

    add-int/2addr v4, v7

    goto/16 :goto_3

    .line 104
    :pswitch_26
    invoke-virtual {v0, p1, v11, v12}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/List;

    .line 105
    invoke-static {v8, v7}, Ldfh;->s(ILjava/util/List;)I

    move-result v7

    add-int/2addr v4, v7

    goto/16 :goto_3

    .line 106
    :pswitch_27
    invoke-virtual {v0, p1, v11, v12}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/List;

    .line 107
    invoke-static {v8, v7}, Ldfh;->z(ILjava/util/List;)I

    move-result v7

    add-int/2addr v4, v7

    goto/16 :goto_3

    .line 108
    :pswitch_28
    invoke-virtual {v0, p1, v11, v12}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/List;

    .line 109
    invoke-static {v8, v7}, Ldfh;->b(ILjava/util/List;)I

    move-result v7

    add-int/2addr v4, v7

    goto/16 :goto_3

    .line 110
    :pswitch_29
    invoke-virtual {v0, p1, v11, v12}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/List;

    invoke-direct {p0, v3}, Ldet;->G(I)Ldfg;

    move-result-object v9

    .line 111
    invoke-static {v8, v7, v9}, Ldfh;->j(ILjava/util/List;Ldfg;)I

    move-result v7

    add-int/2addr v4, v7

    goto/16 :goto_3

    .line 112
    :pswitch_2a
    invoke-virtual {v0, p1, v11, v12}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/List;

    invoke-static {v8, v7}, Ldfh;->m(ILjava/util/List;)I

    move-result v7

    add-int/2addr v4, v7

    goto/16 :goto_3

    .line 113
    :pswitch_2b
    invoke-virtual {v0, p1, v11, v12}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/List;

    .line 114
    invoke-static {v8, v7}, Ldfh;->r(ILjava/util/List;)I

    move-result v7

    add-int/2addr v4, v7

    goto/16 :goto_3

    .line 115
    :pswitch_2c
    invoke-virtual {v0, p1, v11, v12}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/List;

    .line 116
    invoke-static {v8, v7}, Ldfh;->t(ILjava/util/List;)I

    move-result v7

    add-int/2addr v4, v7

    goto/16 :goto_3

    .line 117
    :pswitch_2d
    invoke-virtual {v0, p1, v11, v12}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/List;

    .line 118
    invoke-static {v8, v7}, Ldfh;->u(ILjava/util/List;)I

    move-result v7

    add-int/2addr v4, v7

    goto/16 :goto_3

    .line 119
    :pswitch_2e
    invoke-virtual {v0, p1, v11, v12}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/List;

    .line 120
    invoke-static {v8, v7}, Ldfh;->v(ILjava/util/List;)I

    move-result v7

    add-int/2addr v4, v7

    goto/16 :goto_3

    .line 121
    :pswitch_2f
    invoke-virtual {v0, p1, v11, v12}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/List;

    .line 122
    invoke-static {v8, v7}, Ldfh;->A(ILjava/util/List;)I

    move-result v7

    add-int/2addr v4, v7

    goto/16 :goto_3

    .line 123
    :pswitch_30
    invoke-virtual {v0, p1, v11, v12}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/List;

    .line 124
    invoke-static {v8, v7}, Ldfh;->w(ILjava/util/List;)I

    move-result v7

    add-int/2addr v4, v7

    goto/16 :goto_3

    .line 125
    :pswitch_31
    invoke-virtual {v0, p1, v11, v12}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/List;

    .line 126
    invoke-static {v8, v7}, Ldfh;->t(ILjava/util/List;)I

    move-result v7

    add-int/2addr v4, v7

    goto/16 :goto_3

    .line 127
    :pswitch_32
    invoke-virtual {v0, p1, v11, v12}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/List;

    .line 128
    invoke-static {v8, v7}, Ldfh;->u(ILjava/util/List;)I

    move-result v7

    add-int/2addr v4, v7

    goto/16 :goto_3

    .line 153
    :pswitch_33
    and-int v7, v5, v10

    if-eqz v7, :cond_4

    .line 129
    invoke-virtual {v0, p1, v11, v12}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lder;

    .line 130
    invoke-direct {p0, v3}, Ldet;->G(I)Ldfg;

    move-result-object v9

    .line 131
    invoke-static {v8, v7, v9}, Ldcu;->K(ILder;Ldfg;)I

    move-result v7

    add-int/2addr v4, v7

    goto/16 :goto_3

    :pswitch_34
    and-int v7, v5, v10

    if-eqz v7, :cond_4

    .line 132
    invoke-virtual {v0, p1, v11, v12}, Lsun/misc/Unsafe;->getLong(Ljava/lang/Object;J)J

    move-result-wide v9

    invoke-static {v8, v9, v10}, Ldcu;->X(IJ)I

    move-result v7

    add-int/2addr v4, v7

    goto/16 :goto_3

    :pswitch_35
    and-int v7, v5, v10

    if-eqz v7, :cond_4

    .line 133
    invoke-virtual {v0, p1, v11, v12}, Lsun/misc/Unsafe;->getInt(Ljava/lang/Object;J)I

    move-result v7

    invoke-static {v8, v7}, Ldcu;->V(II)I

    move-result v7

    add-int/2addr v4, v7

    goto/16 :goto_3

    :pswitch_36
    and-int v7, v5, v10

    if-eqz v7, :cond_4

    .line 134
    invoke-static {v8}, Ldcu;->aB(I)I

    move-result v7

    add-int/2addr v4, v7

    goto/16 :goto_3

    :pswitch_37
    and-int v7, v5, v10

    if-eqz v7, :cond_4

    .line 135
    invoke-static {v8}, Ldcu;->aA(I)I

    move-result v7

    add-int/2addr v4, v7

    goto/16 :goto_3

    :pswitch_38
    and-int v7, v5, v10

    if-eqz v7, :cond_4

    .line 136
    invoke-virtual {v0, p1, v11, v12}, Lsun/misc/Unsafe;->getInt(Ljava/lang/Object;J)I

    move-result v7

    invoke-static {v8, v7}, Ldcu;->J(II)I

    move-result v7

    add-int/2addr v4, v7

    goto/16 :goto_3

    :pswitch_39
    and-int v7, v5, v10

    if-eqz v7, :cond_4

    .line 137
    invoke-virtual {v0, p1, v11, v12}, Lsun/misc/Unsafe;->getInt(Ljava/lang/Object;J)I

    move-result v7

    invoke-static {v8, v7}, Ldcu;->ac(II)I

    move-result v7

    add-int/2addr v4, v7

    goto/16 :goto_3

    :pswitch_3a
    and-int v7, v5, v10

    if-eqz v7, :cond_4

    .line 138
    invoke-virtual {v0, p1, v11, v12}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ldcl;

    .line 139
    invoke-static {v8, v7}, Ldcu;->H(ILdcl;)I

    move-result v7

    add-int/2addr v4, v7

    goto/16 :goto_3

    :pswitch_3b
    and-int v7, v5, v10

    if-eqz v7, :cond_4

    .line 140
    invoke-virtual {v0, p1, v11, v12}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v7

    .line 141
    invoke-direct {p0, v3}, Ldet;->G(I)Ldfg;

    move-result-object v9

    invoke-static {v8, v7, v9}, Ldfh;->i(ILjava/lang/Object;Ldfg;)I

    move-result v7

    add-int/2addr v4, v7

    goto/16 :goto_3

    :pswitch_3c
    and-int v7, v5, v10

    if-eqz v7, :cond_4

    .line 142
    invoke-virtual {v0, p1, v11, v12}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v7

    .line 143
    instance-of v9, v7, Ldcl;

    if-eqz v9, :cond_3

    .line 144
    check-cast v7, Ldcl;

    invoke-static {v8, v7}, Ldcu;->H(ILdcl;)I

    move-result v7

    add-int/2addr v4, v7

    goto :goto_3

    .line 145
    :cond_3
    check-cast v7, Ljava/lang/String;

    invoke-static {v8, v7}, Ldcu;->Z(ILjava/lang/String;)I

    move-result v7

    add-int/2addr v4, v7

    goto :goto_3

    :pswitch_3d
    and-int v7, v5, v10

    if-eqz v7, :cond_4

    .line 146
    invoke-static {v8}, Ldcu;->av(I)I

    move-result v7

    add-int/2addr v4, v7

    goto :goto_3

    :pswitch_3e
    and-int v7, v5, v10

    if-eqz v7, :cond_4

    .line 147
    invoke-static {v8}, Ldcu;->ax(I)I

    move-result v7

    add-int/2addr v4, v7

    goto :goto_3

    :pswitch_3f
    and-int v7, v5, v10

    if-eqz v7, :cond_4

    .line 148
    invoke-static {v8}, Ldcu;->ay(I)I

    move-result v7

    add-int/2addr v4, v7

    goto :goto_3

    :pswitch_40
    and-int v7, v5, v10

    if-eqz v7, :cond_4

    .line 149
    invoke-virtual {v0, p1, v11, v12}, Lsun/misc/Unsafe;->getInt(Ljava/lang/Object;J)I

    move-result v7

    invoke-static {v8, v7}, Ldcu;->M(II)I

    move-result v7

    add-int/2addr v4, v7

    goto :goto_3

    :pswitch_41
    and-int v7, v5, v10

    if-eqz v7, :cond_4

    .line 150
    invoke-virtual {v0, p1, v11, v12}, Lsun/misc/Unsafe;->getLong(Ljava/lang/Object;J)J

    move-result-wide v9

    invoke-static {v8, v9, v10}, Ldcu;->ae(IJ)I

    move-result v7

    add-int/2addr v4, v7

    goto :goto_3

    :pswitch_42
    and-int v7, v5, v10

    if-eqz v7, :cond_4

    .line 151
    invoke-virtual {v0, p1, v11, v12}, Lsun/misc/Unsafe;->getLong(Ljava/lang/Object;J)J

    move-result-wide v9

    invoke-static {v8, v9, v10}, Ldcu;->O(IJ)I

    move-result v7

    add-int/2addr v4, v7

    goto :goto_3

    :pswitch_43
    and-int v7, v5, v10

    if-eqz v7, :cond_4

    .line 152
    invoke-static {v8}, Ldcu;->az(I)I

    move-result v7

    add-int/2addr v4, v7

    goto :goto_3

    .line 126
    :pswitch_44
    and-int v7, v5, v10

    if-eqz v7, :cond_4

    .line 153
    invoke-static {v8}, Ldcu;->aw(I)I

    move-result v7

    add-int/2addr v4, v7

    .line 111
    :cond_4
    :goto_3
    add-int/lit8 v3, v3, 0x3

    goto/16 :goto_0

    .line 154
    :cond_5
    invoke-static {p1}, Ldet;->ac(Ljava/lang/Object;)I

    move-result v0

    add-int/2addr v4, v0

    iget-boolean v0, p0, Ldet;->h:Z

    if-eqz v0, :cond_8

    .line 155
    invoke-static {p1}, Lhl;->o(Ljava/lang/Object;)Lddb;

    move-result-object p1

    const/4 v0, 0x0

    :goto_4
    iget-object v1, p1, Lddb;->b:Ldfo;

    .line 156
    invoke-virtual {v1}, Ldfo;->a()I

    move-result v1

    if-ge v2, v1, :cond_6

    iget-object v1, p1, Lddb;->b:Ldfo;

    .line 157
    invoke-virtual {v1, v2}, Ldfo;->f(I)Ljava/util/Map$Entry;

    move-result-object v1

    .line 158
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lddj;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    invoke-static {v3, v1}, Lddb;->j(Lddj;Ljava/lang/Object;)I

    move-result v1

    add-int/2addr v0, v1

    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    :cond_6
    iget-object p1, p1, Lddb;->b:Ldfo;

    .line 159
    invoke-virtual {p1}, Ldfo;->c()Ljava/lang/Iterable;

    move-result-object p1

    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_5
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_7

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 160
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lddj;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    invoke-static {v2, v1}, Lddb;->j(Lddj;Ljava/lang/Object;)I

    move-result v1

    add-int/2addr v0, v1

    goto :goto_5

    :cond_7
    add-int/2addr v4, v0

    :cond_8
    return v4

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_44
        :pswitch_43
        :pswitch_42
        :pswitch_41
        :pswitch_40
        :pswitch_3f
        :pswitch_3e
        :pswitch_3d
        :pswitch_3c
        :pswitch_3b
        :pswitch_3a
        :pswitch_39
        :pswitch_38
        :pswitch_37
        :pswitch_36
        :pswitch_35
        :pswitch_34
        :pswitch_33
        :pswitch_32
        :pswitch_31
        :pswitch_30
        :pswitch_2f
        :pswitch_2e
        :pswitch_2d
        :pswitch_2c
        :pswitch_2b
        :pswitch_2a
        :pswitch_29
        :pswitch_28
        :pswitch_27
        :pswitch_26
        :pswitch_25
        :pswitch_24
        :pswitch_23
        :pswitch_22
        :pswitch_21
        :pswitch_20
        :pswitch_1f
        :pswitch_1e
        :pswitch_1d
        :pswitch_1c
        :pswitch_1b
        :pswitch_1a
        :pswitch_19
        :pswitch_18
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
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

.method private final r(Ljava/lang/Object;)I
    .locals 9

    .line 1
    sget-object v0, Ldet;->b:Lsun/misc/Unsafe;

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    iget-object v3, p0, Ldet;->c:[I

    array-length v3, v3

    if-ge v1, v3, :cond_4

    .line 2
    invoke-direct {p0, v1}, Ldet;->C(I)I

    move-result v3

    invoke-static {v3}, Ldet;->B(I)I

    move-result v4

    .line 3
    invoke-direct {p0, v1}, Ldet;->s(I)I

    move-result v5

    invoke-static {v3}, Ldet;->D(I)J

    move-result-wide v6

    .line 4
    sget-object v3, Lddc;->J:Lddc;

    iget v3, v3, Lddc;->Z:I

    if-lt v4, v3, :cond_0

    sget-object v3, Lddc;->W:Lddc;

    iget v3, v3, Lddc;->Z:I

    if-gt v4, v3, :cond_0

    iget-object v3, p0, Ldet;->c:[I

    add-int/lit8 v8, v1, 0x2

    .line 5
    aget v3, v3, v8

    :cond_0
    packed-switch v4, :pswitch_data_0

    goto/16 :goto_1

    .line 6
    :pswitch_0
    invoke-direct {p0, p1, v5, v1}, Ldet;->U(Ljava/lang/Object;II)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 7
    invoke-static {p1, v6, v7}, Ldfz;->h(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lder;

    .line 8
    invoke-direct {p0, v1}, Ldet;->G(I)Ldfg;

    move-result-object v4

    .line 9
    invoke-static {v5, v3, v4}, Ldcu;->K(ILder;Ldfg;)I

    move-result v3

    add-int/2addr v2, v3

    goto/16 :goto_1

    .line 10
    :pswitch_1
    invoke-direct {p0, p1, v5, v1}, Ldet;->U(Ljava/lang/Object;II)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 11
    invoke-static {p1, v6, v7}, Ldet;->E(Ljava/lang/Object;J)J

    move-result-wide v3

    invoke-static {v5, v3, v4}, Ldcu;->X(IJ)I

    move-result v3

    add-int/2addr v2, v3

    goto/16 :goto_1

    .line 12
    :pswitch_2
    invoke-direct {p0, p1, v5, v1}, Ldet;->U(Ljava/lang/Object;II)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 13
    invoke-static {p1, v6, v7}, Ldet;->t(Ljava/lang/Object;J)I

    move-result v3

    invoke-static {v5, v3}, Ldcu;->V(II)I

    move-result v3

    add-int/2addr v2, v3

    goto/16 :goto_1

    .line 14
    :pswitch_3
    invoke-direct {p0, p1, v5, v1}, Ldet;->U(Ljava/lang/Object;II)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 15
    invoke-static {v5}, Ldcu;->aB(I)I

    move-result v3

    add-int/2addr v2, v3

    goto/16 :goto_1

    .line 16
    :pswitch_4
    invoke-direct {p0, p1, v5, v1}, Ldet;->U(Ljava/lang/Object;II)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 17
    invoke-static {v5}, Ldcu;->aA(I)I

    move-result v3

    add-int/2addr v2, v3

    goto/16 :goto_1

    .line 18
    :pswitch_5
    invoke-direct {p0, p1, v5, v1}, Ldet;->U(Ljava/lang/Object;II)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 19
    invoke-static {p1, v6, v7}, Ldet;->t(Ljava/lang/Object;J)I

    move-result v3

    invoke-static {v5, v3}, Ldcu;->J(II)I

    move-result v3

    add-int/2addr v2, v3

    goto/16 :goto_1

    .line 20
    :pswitch_6
    invoke-direct {p0, p1, v5, v1}, Ldet;->U(Ljava/lang/Object;II)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 21
    invoke-static {p1, v6, v7}, Ldet;->t(Ljava/lang/Object;J)I

    move-result v3

    invoke-static {v5, v3}, Ldcu;->ac(II)I

    move-result v3

    add-int/2addr v2, v3

    goto/16 :goto_1

    .line 22
    :pswitch_7
    invoke-direct {p0, p1, v5, v1}, Ldet;->U(Ljava/lang/Object;II)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 23
    invoke-static {p1, v6, v7}, Ldfz;->h(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ldcl;

    .line 24
    invoke-static {v5, v3}, Ldcu;->H(ILdcl;)I

    move-result v3

    add-int/2addr v2, v3

    goto/16 :goto_1

    .line 25
    :pswitch_8
    invoke-direct {p0, p1, v5, v1}, Ldet;->U(Ljava/lang/Object;II)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 26
    invoke-static {p1, v6, v7}, Ldfz;->h(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    .line 27
    invoke-direct {p0, v1}, Ldet;->G(I)Ldfg;

    move-result-object v4

    invoke-static {v5, v3, v4}, Ldfh;->i(ILjava/lang/Object;Ldfg;)I

    move-result v3

    add-int/2addr v2, v3

    goto/16 :goto_1

    .line 28
    :pswitch_9
    invoke-direct {p0, p1, v5, v1}, Ldet;->U(Ljava/lang/Object;II)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 29
    invoke-static {p1, v6, v7}, Ldfz;->h(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    .line 30
    instance-of v4, v3, Ldcl;

    if-eqz v4, :cond_1

    .line 31
    check-cast v3, Ldcl;

    invoke-static {v5, v3}, Ldcu;->H(ILdcl;)I

    move-result v3

    add-int/2addr v2, v3

    goto/16 :goto_1

    .line 32
    :cond_1
    check-cast v3, Ljava/lang/String;

    invoke-static {v5, v3}, Ldcu;->Z(ILjava/lang/String;)I

    move-result v3

    add-int/2addr v2, v3

    goto/16 :goto_1

    .line 33
    :pswitch_a
    invoke-direct {p0, p1, v5, v1}, Ldet;->U(Ljava/lang/Object;II)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 34
    invoke-static {v5}, Ldcu;->av(I)I

    move-result v3

    add-int/2addr v2, v3

    goto/16 :goto_1

    .line 35
    :pswitch_b
    invoke-direct {p0, p1, v5, v1}, Ldet;->U(Ljava/lang/Object;II)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 36
    invoke-static {v5}, Ldcu;->ax(I)I

    move-result v3

    add-int/2addr v2, v3

    goto/16 :goto_1

    .line 37
    :pswitch_c
    invoke-direct {p0, p1, v5, v1}, Ldet;->U(Ljava/lang/Object;II)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 38
    invoke-static {v5}, Ldcu;->ay(I)I

    move-result v3

    add-int/2addr v2, v3

    goto/16 :goto_1

    .line 39
    :pswitch_d
    invoke-direct {p0, p1, v5, v1}, Ldet;->U(Ljava/lang/Object;II)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 40
    invoke-static {p1, v6, v7}, Ldet;->t(Ljava/lang/Object;J)I

    move-result v3

    invoke-static {v5, v3}, Ldcu;->M(II)I

    move-result v3

    add-int/2addr v2, v3

    goto/16 :goto_1

    .line 41
    :pswitch_e
    invoke-direct {p0, p1, v5, v1}, Ldet;->U(Ljava/lang/Object;II)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 42
    invoke-static {p1, v6, v7}, Ldet;->E(Ljava/lang/Object;J)J

    move-result-wide v3

    invoke-static {v5, v3, v4}, Ldcu;->ae(IJ)I

    move-result v3

    add-int/2addr v2, v3

    goto/16 :goto_1

    .line 43
    :pswitch_f
    invoke-direct {p0, p1, v5, v1}, Ldet;->U(Ljava/lang/Object;II)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 44
    invoke-static {p1, v6, v7}, Ldet;->E(Ljava/lang/Object;J)J

    move-result-wide v3

    invoke-static {v5, v3, v4}, Ldcu;->O(IJ)I

    move-result v3

    add-int/2addr v2, v3

    goto/16 :goto_1

    .line 45
    :pswitch_10
    invoke-direct {p0, p1, v5, v1}, Ldet;->U(Ljava/lang/Object;II)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 46
    invoke-static {v5}, Ldcu;->az(I)I

    move-result v3

    add-int/2addr v2, v3

    goto/16 :goto_1

    .line 47
    :pswitch_11
    invoke-direct {p0, p1, v5, v1}, Ldet;->U(Ljava/lang/Object;II)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 48
    invoke-static {v5}, Ldcu;->aw(I)I

    move-result v3

    add-int/2addr v2, v3

    goto/16 :goto_1

    .line 49
    :pswitch_12
    invoke-static {p1, v6, v7}, Ldfz;->h(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    invoke-direct {p0, v1}, Ldet;->H(I)Ljava/lang/Object;

    move-result-object v4

    .line 50
    invoke-static {v5, v3, v4}, Lev;->V(ILjava/lang/Object;Ljava/lang/Object;)I

    move-result v3

    add-int/2addr v2, v3

    goto/16 :goto_1

    .line 51
    :pswitch_13
    invoke-static {p1, v6, v7}, Ldet;->J(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v3

    invoke-direct {p0, v1}, Ldet;->G(I)Ldfg;

    move-result-object v4

    .line 52
    invoke-static {v5, v3, v4}, Ldfh;->f(ILjava/util/List;Ldfg;)I

    move-result v3

    add-int/2addr v2, v3

    goto/16 :goto_1

    .line 53
    :pswitch_14
    invoke-virtual {v0, p1, v6, v7}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    .line 54
    invoke-static {v3}, Ldfh;->l(Ljava/util/List;)I

    move-result v3

    if-lez v3, :cond_3

    .line 55
    invoke-static {v5}, Ldcu;->ab(I)I

    move-result v4

    invoke-static {v3}, Ldcu;->ad(I)I

    move-result v5

    add-int/2addr v4, v5

    add-int/2addr v4, v3

    add-int/2addr v2, v4

    goto/16 :goto_1

    .line 56
    :pswitch_15
    invoke-virtual {v0, p1, v6, v7}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    .line 57
    invoke-static {v3}, Ldfh;->k(Ljava/util/List;)I

    move-result v3

    if-lez v3, :cond_3

    .line 58
    invoke-static {v5}, Ldcu;->ab(I)I

    move-result v4

    invoke-static {v3}, Ldcu;->ad(I)I

    move-result v5

    add-int/2addr v4, v5

    add-int/2addr v4, v3

    add-int/2addr v2, v4

    goto/16 :goto_1

    .line 59
    :pswitch_16
    invoke-virtual {v0, p1, v6, v7}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    .line 60
    invoke-static {v3}, Ldfh;->e(Ljava/util/List;)I

    move-result v3

    if-lez v3, :cond_3

    .line 61
    invoke-static {v5}, Ldcu;->ab(I)I

    move-result v4

    invoke-static {v3}, Ldcu;->ad(I)I

    move-result v5

    add-int/2addr v4, v5

    add-int/2addr v4, v3

    add-int/2addr v2, v4

    goto/16 :goto_1

    .line 62
    :pswitch_17
    invoke-virtual {v0, p1, v6, v7}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    .line 63
    invoke-static {v3}, Ldfh;->d(Ljava/util/List;)I

    move-result v3

    if-lez v3, :cond_3

    .line 64
    invoke-static {v5}, Ldcu;->ab(I)I

    move-result v4

    invoke-static {v3}, Ldcu;->ad(I)I

    move-result v5

    add-int/2addr v4, v5

    add-int/2addr v4, v3

    add-int/2addr v2, v4

    goto/16 :goto_1

    .line 65
    :pswitch_18
    invoke-virtual {v0, p1, v6, v7}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    .line 66
    invoke-static {v3}, Ldfh;->c(Ljava/util/List;)I

    move-result v3

    if-lez v3, :cond_3

    .line 67
    invoke-static {v5}, Ldcu;->ab(I)I

    move-result v4

    invoke-static {v3}, Ldcu;->ad(I)I

    move-result v5

    add-int/2addr v4, v5

    add-int/2addr v4, v3

    add-int/2addr v2, v4

    goto/16 :goto_1

    .line 68
    :pswitch_19
    invoke-virtual {v0, p1, v6, v7}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    .line 69
    invoke-static {v3}, Ldfh;->n(Ljava/util/List;)I

    move-result v3

    if-lez v3, :cond_3

    .line 70
    invoke-static {v5}, Ldcu;->ab(I)I

    move-result v4

    invoke-static {v3}, Ldcu;->ad(I)I

    move-result v5

    add-int/2addr v4, v5

    add-int/2addr v4, v3

    add-int/2addr v2, v4

    goto/16 :goto_1

    .line 71
    :pswitch_1a
    invoke-virtual {v0, p1, v6, v7}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    .line 72
    invoke-static {v3}, Ldfh;->a(Ljava/util/List;)I

    move-result v3

    if-lez v3, :cond_3

    .line 73
    invoke-static {v5}, Ldcu;->ab(I)I

    move-result v4

    invoke-static {v3}, Ldcu;->ad(I)I

    move-result v5

    add-int/2addr v4, v5

    add-int/2addr v4, v3

    add-int/2addr v2, v4

    goto/16 :goto_1

    .line 74
    :pswitch_1b
    invoke-virtual {v0, p1, v6, v7}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    .line 75
    invoke-static {v3}, Ldfh;->d(Ljava/util/List;)I

    move-result v3

    if-lez v3, :cond_3

    .line 76
    invoke-static {v5}, Ldcu;->ab(I)I

    move-result v4

    invoke-static {v3}, Ldcu;->ad(I)I

    move-result v5

    add-int/2addr v4, v5

    add-int/2addr v4, v3

    add-int/2addr v2, v4

    goto/16 :goto_1

    .line 77
    :pswitch_1c
    invoke-virtual {v0, p1, v6, v7}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    .line 78
    invoke-static {v3}, Ldfh;->e(Ljava/util/List;)I

    move-result v3

    if-lez v3, :cond_3

    .line 79
    invoke-static {v5}, Ldcu;->ab(I)I

    move-result v4

    invoke-static {v3}, Ldcu;->ad(I)I

    move-result v5

    add-int/2addr v4, v5

    add-int/2addr v4, v3

    add-int/2addr v2, v4

    goto/16 :goto_1

    .line 80
    :pswitch_1d
    invoke-virtual {v0, p1, v6, v7}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    .line 81
    invoke-static {v3}, Ldfh;->g(Ljava/util/List;)I

    move-result v3

    if-lez v3, :cond_3

    .line 82
    invoke-static {v5}, Ldcu;->ab(I)I

    move-result v4

    invoke-static {v3}, Ldcu;->ad(I)I

    move-result v5

    add-int/2addr v4, v5

    add-int/2addr v4, v3

    add-int/2addr v2, v4

    goto/16 :goto_1

    .line 83
    :pswitch_1e
    invoke-virtual {v0, p1, v6, v7}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    .line 84
    invoke-static {v3}, Ldfh;->o(Ljava/util/List;)I

    move-result v3

    if-lez v3, :cond_3

    .line 85
    invoke-static {v5}, Ldcu;->ab(I)I

    move-result v4

    invoke-static {v3}, Ldcu;->ad(I)I

    move-result v5

    add-int/2addr v4, v5

    add-int/2addr v4, v3

    add-int/2addr v2, v4

    goto/16 :goto_1

    .line 86
    :pswitch_1f
    invoke-virtual {v0, p1, v6, v7}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    .line 87
    invoke-static {v3}, Ldfh;->h(Ljava/util/List;)I

    move-result v3

    if-lez v3, :cond_3

    .line 88
    invoke-static {v5}, Ldcu;->ab(I)I

    move-result v4

    invoke-static {v3}, Ldcu;->ad(I)I

    move-result v5

    add-int/2addr v4, v5

    add-int/2addr v4, v3

    add-int/2addr v2, v4

    goto/16 :goto_1

    .line 89
    :pswitch_20
    invoke-virtual {v0, p1, v6, v7}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    .line 90
    invoke-static {v3}, Ldfh;->d(Ljava/util/List;)I

    move-result v3

    if-lez v3, :cond_3

    .line 91
    invoke-static {v5}, Ldcu;->ab(I)I

    move-result v4

    invoke-static {v3}, Ldcu;->ad(I)I

    move-result v5

    add-int/2addr v4, v5

    add-int/2addr v4, v3

    add-int/2addr v2, v4

    goto/16 :goto_1

    .line 92
    :pswitch_21
    invoke-virtual {v0, p1, v6, v7}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    .line 93
    invoke-static {v3}, Ldfh;->e(Ljava/util/List;)I

    move-result v3

    if-lez v3, :cond_3

    .line 94
    invoke-static {v5}, Ldcu;->ab(I)I

    move-result v4

    invoke-static {v3}, Ldcu;->ad(I)I

    move-result v5

    add-int/2addr v4, v5

    add-int/2addr v4, v3

    add-int/2addr v2, v4

    goto/16 :goto_1

    .line 95
    :pswitch_22
    invoke-static {p1, v6, v7}, Ldet;->J(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v3

    invoke-static {v5, v3}, Ldfh;->y(ILjava/util/List;)I

    move-result v3

    add-int/2addr v2, v3

    goto/16 :goto_1

    .line 96
    :pswitch_23
    invoke-static {p1, v6, v7}, Ldet;->J(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v3

    .line 97
    invoke-static {v5, v3}, Ldfh;->x(ILjava/util/List;)I

    move-result v3

    add-int/2addr v2, v3

    goto/16 :goto_1

    .line 98
    :pswitch_24
    invoke-static {p1, v6, v7}, Ldet;->J(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v3

    invoke-static {v5, v3}, Ldfh;->u(ILjava/util/List;)I

    move-result v3

    add-int/2addr v2, v3

    goto/16 :goto_1

    .line 99
    :pswitch_25
    invoke-static {p1, v6, v7}, Ldet;->J(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v3

    invoke-static {v5, v3}, Ldfh;->t(ILjava/util/List;)I

    move-result v3

    add-int/2addr v2, v3

    goto/16 :goto_1

    .line 100
    :pswitch_26
    invoke-static {p1, v6, v7}, Ldet;->J(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v3

    .line 101
    invoke-static {v5, v3}, Ldfh;->s(ILjava/util/List;)I

    move-result v3

    add-int/2addr v2, v3

    goto/16 :goto_1

    .line 102
    :pswitch_27
    invoke-static {p1, v6, v7}, Ldet;->J(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v3

    .line 103
    invoke-static {v5, v3}, Ldfh;->z(ILjava/util/List;)I

    move-result v3

    add-int/2addr v2, v3

    goto/16 :goto_1

    .line 104
    :pswitch_28
    invoke-static {p1, v6, v7}, Ldet;->J(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v3

    .line 105
    invoke-static {v5, v3}, Ldfh;->b(ILjava/util/List;)I

    move-result v3

    add-int/2addr v2, v3

    goto/16 :goto_1

    .line 106
    :pswitch_29
    invoke-static {p1, v6, v7}, Ldet;->J(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v3

    invoke-direct {p0, v1}, Ldet;->G(I)Ldfg;

    move-result-object v4

    .line 107
    invoke-static {v5, v3, v4}, Ldfh;->j(ILjava/util/List;Ldfg;)I

    move-result v3

    add-int/2addr v2, v3

    goto/16 :goto_1

    .line 108
    :pswitch_2a
    invoke-static {p1, v6, v7}, Ldet;->J(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v3

    invoke-static {v5, v3}, Ldfh;->m(ILjava/util/List;)I

    move-result v3

    add-int/2addr v2, v3

    goto/16 :goto_1

    .line 109
    :pswitch_2b
    invoke-static {p1, v6, v7}, Ldet;->J(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v3

    invoke-static {v5, v3}, Ldfh;->r(ILjava/util/List;)I

    move-result v3

    add-int/2addr v2, v3

    goto/16 :goto_1

    .line 110
    :pswitch_2c
    invoke-static {p1, v6, v7}, Ldet;->J(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v3

    invoke-static {v5, v3}, Ldfh;->t(ILjava/util/List;)I

    move-result v3

    add-int/2addr v2, v3

    goto/16 :goto_1

    .line 111
    :pswitch_2d
    invoke-static {p1, v6, v7}, Ldet;->J(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v3

    invoke-static {v5, v3}, Ldfh;->u(ILjava/util/List;)I

    move-result v3

    add-int/2addr v2, v3

    goto/16 :goto_1

    .line 112
    :pswitch_2e
    invoke-static {p1, v6, v7}, Ldet;->J(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v3

    .line 113
    invoke-static {v5, v3}, Ldfh;->v(ILjava/util/List;)I

    move-result v3

    add-int/2addr v2, v3

    goto/16 :goto_1

    .line 114
    :pswitch_2f
    invoke-static {p1, v6, v7}, Ldet;->J(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v3

    invoke-static {v5, v3}, Ldfh;->A(ILjava/util/List;)I

    move-result v3

    add-int/2addr v2, v3

    goto/16 :goto_1

    .line 115
    :pswitch_30
    invoke-static {p1, v6, v7}, Ldet;->J(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v3

    invoke-static {v5, v3}, Ldfh;->w(ILjava/util/List;)I

    move-result v3

    add-int/2addr v2, v3

    goto/16 :goto_1

    .line 116
    :pswitch_31
    invoke-static {p1, v6, v7}, Ldet;->J(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v3

    invoke-static {v5, v3}, Ldfh;->t(ILjava/util/List;)I

    move-result v3

    add-int/2addr v2, v3

    goto/16 :goto_1

    .line 117
    :pswitch_32
    invoke-static {p1, v6, v7}, Ldet;->J(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v3

    invoke-static {v5, v3}, Ldfh;->u(ILjava/util/List;)I

    move-result v3

    add-int/2addr v2, v3

    goto/16 :goto_1

    .line 118
    :pswitch_33
    invoke-direct {p0, p1, v1}, Ldet;->R(Ljava/lang/Object;I)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 119
    invoke-static {p1, v6, v7}, Ldfz;->h(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lder;

    .line 120
    invoke-direct {p0, v1}, Ldet;->G(I)Ldfg;

    move-result-object v4

    .line 121
    invoke-static {v5, v3, v4}, Ldcu;->K(ILder;Ldfg;)I

    move-result v3

    add-int/2addr v2, v3

    goto/16 :goto_1

    .line 122
    :pswitch_34
    invoke-direct {p0, p1, v1}, Ldet;->R(Ljava/lang/Object;I)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 123
    invoke-static {p1, v6, v7}, Ldfz;->f(Ljava/lang/Object;J)J

    move-result-wide v3

    invoke-static {v5, v3, v4}, Ldcu;->X(IJ)I

    move-result v3

    add-int/2addr v2, v3

    goto/16 :goto_1

    .line 124
    :pswitch_35
    invoke-direct {p0, p1, v1}, Ldet;->R(Ljava/lang/Object;I)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 125
    invoke-static {p1, v6, v7}, Ldfz;->d(Ljava/lang/Object;J)I

    move-result v3

    invoke-static {v5, v3}, Ldcu;->V(II)I

    move-result v3

    add-int/2addr v2, v3

    goto/16 :goto_1

    .line 126
    :pswitch_36
    invoke-direct {p0, p1, v1}, Ldet;->R(Ljava/lang/Object;I)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 127
    invoke-static {v5}, Ldcu;->aB(I)I

    move-result v3

    add-int/2addr v2, v3

    goto/16 :goto_1

    .line 128
    :pswitch_37
    invoke-direct {p0, p1, v1}, Ldet;->R(Ljava/lang/Object;I)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 129
    invoke-static {v5}, Ldcu;->aA(I)I

    move-result v3

    add-int/2addr v2, v3

    goto/16 :goto_1

    .line 130
    :pswitch_38
    invoke-direct {p0, p1, v1}, Ldet;->R(Ljava/lang/Object;I)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 131
    invoke-static {p1, v6, v7}, Ldfz;->d(Ljava/lang/Object;J)I

    move-result v3

    invoke-static {v5, v3}, Ldcu;->J(II)I

    move-result v3

    add-int/2addr v2, v3

    goto/16 :goto_1

    .line 132
    :pswitch_39
    invoke-direct {p0, p1, v1}, Ldet;->R(Ljava/lang/Object;I)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 133
    invoke-static {p1, v6, v7}, Ldfz;->d(Ljava/lang/Object;J)I

    move-result v3

    invoke-static {v5, v3}, Ldcu;->ac(II)I

    move-result v3

    add-int/2addr v2, v3

    goto/16 :goto_1

    .line 134
    :pswitch_3a
    invoke-direct {p0, p1, v1}, Ldet;->R(Ljava/lang/Object;I)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 135
    invoke-static {p1, v6, v7}, Ldfz;->h(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ldcl;

    .line 136
    invoke-static {v5, v3}, Ldcu;->H(ILdcl;)I

    move-result v3

    add-int/2addr v2, v3

    goto/16 :goto_1

    .line 137
    :pswitch_3b
    invoke-direct {p0, p1, v1}, Ldet;->R(Ljava/lang/Object;I)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 138
    invoke-static {p1, v6, v7}, Ldfz;->h(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    .line 139
    invoke-direct {p0, v1}, Ldet;->G(I)Ldfg;

    move-result-object v4

    invoke-static {v5, v3, v4}, Ldfh;->i(ILjava/lang/Object;Ldfg;)I

    move-result v3

    add-int/2addr v2, v3

    goto/16 :goto_1

    .line 140
    :pswitch_3c
    invoke-direct {p0, p1, v1}, Ldet;->R(Ljava/lang/Object;I)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 141
    invoke-static {p1, v6, v7}, Ldfz;->h(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    .line 142
    instance-of v4, v3, Ldcl;

    if-eqz v4, :cond_2

    .line 143
    check-cast v3, Ldcl;

    invoke-static {v5, v3}, Ldcu;->H(ILdcl;)I

    move-result v3

    add-int/2addr v2, v3

    goto/16 :goto_1

    .line 144
    :cond_2
    check-cast v3, Ljava/lang/String;

    invoke-static {v5, v3}, Ldcu;->Z(ILjava/lang/String;)I

    move-result v3

    add-int/2addr v2, v3

    goto/16 :goto_1

    .line 145
    :pswitch_3d
    invoke-direct {p0, p1, v1}, Ldet;->R(Ljava/lang/Object;I)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 146
    invoke-static {v5}, Ldcu;->av(I)I

    move-result v3

    add-int/2addr v2, v3

    goto :goto_1

    .line 147
    :pswitch_3e
    invoke-direct {p0, p1, v1}, Ldet;->R(Ljava/lang/Object;I)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 148
    invoke-static {v5}, Ldcu;->ax(I)I

    move-result v3

    add-int/2addr v2, v3

    goto :goto_1

    .line 149
    :pswitch_3f
    invoke-direct {p0, p1, v1}, Ldet;->R(Ljava/lang/Object;I)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 150
    invoke-static {v5}, Ldcu;->ay(I)I

    move-result v3

    add-int/2addr v2, v3

    goto :goto_1

    .line 151
    :pswitch_40
    invoke-direct {p0, p1, v1}, Ldet;->R(Ljava/lang/Object;I)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 152
    invoke-static {p1, v6, v7}, Ldfz;->d(Ljava/lang/Object;J)I

    move-result v3

    invoke-static {v5, v3}, Ldcu;->M(II)I

    move-result v3

    add-int/2addr v2, v3

    goto :goto_1

    .line 153
    :pswitch_41
    invoke-direct {p0, p1, v1}, Ldet;->R(Ljava/lang/Object;I)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 154
    invoke-static {p1, v6, v7}, Ldfz;->f(Ljava/lang/Object;J)J

    move-result-wide v3

    invoke-static {v5, v3, v4}, Ldcu;->ae(IJ)I

    move-result v3

    add-int/2addr v2, v3

    goto :goto_1

    .line 155
    :pswitch_42
    invoke-direct {p0, p1, v1}, Ldet;->R(Ljava/lang/Object;I)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 156
    invoke-static {p1, v6, v7}, Ldfz;->f(Ljava/lang/Object;J)J

    move-result-wide v3

    invoke-static {v5, v3, v4}, Ldcu;->O(IJ)I

    move-result v3

    add-int/2addr v2, v3

    goto :goto_1

    .line 157
    :pswitch_43
    invoke-direct {p0, p1, v1}, Ldet;->R(Ljava/lang/Object;I)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 158
    invoke-static {v5}, Ldcu;->az(I)I

    move-result v3

    add-int/2addr v2, v3

    goto :goto_1

    .line 159
    :pswitch_44
    invoke-direct {p0, p1, v1}, Ldet;->R(Ljava/lang/Object;I)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 160
    invoke-static {v5}, Ldcu;->aw(I)I

    move-result v3

    add-int/2addr v2, v3

    .line 107
    :cond_3
    :goto_1
    add-int/lit8 v1, v1, 0x3

    goto/16 :goto_0

    .line 161
    :cond_4
    invoke-static {p1}, Ldet;->ac(Ljava/lang/Object;)I

    move-result p1

    add-int/2addr v2, p1

    return v2

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_44
        :pswitch_43
        :pswitch_42
        :pswitch_41
        :pswitch_40
        :pswitch_3f
        :pswitch_3e
        :pswitch_3d
        :pswitch_3c
        :pswitch_3b
        :pswitch_3a
        :pswitch_39
        :pswitch_38
        :pswitch_37
        :pswitch_36
        :pswitch_35
        :pswitch_34
        :pswitch_33
        :pswitch_32
        :pswitch_31
        :pswitch_30
        :pswitch_2f
        :pswitch_2e
        :pswitch_2d
        :pswitch_2c
        :pswitch_2b
        :pswitch_2a
        :pswitch_29
        :pswitch_28
        :pswitch_27
        :pswitch_26
        :pswitch_25
        :pswitch_24
        :pswitch_23
        :pswitch_22
        :pswitch_21
        :pswitch_20
        :pswitch_1f
        :pswitch_1e
        :pswitch_1d
        :pswitch_1c
        :pswitch_1b
        :pswitch_1a
        :pswitch_19
        :pswitch_18
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
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

.method private final s(I)I
    .locals 1

    .line 1
    iget-object v0, p0, Ldet;->c:[I

    aget p1, v0, p1

    return p1
.end method

.method private static t(Ljava/lang/Object;J)I
    .locals 0

    .line 1
    invoke-static {p0, p1, p2}, Ldfz;->h(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    return p0
.end method

.method private final u(Ljava/lang/Object;[BIIIJLdca;)I
    .locals 16

    .line 1
    move-object/from16 v0, p1

    move-object/from16 v6, p2

    move/from16 v7, p4

    move-wide/from16 v1, p6

    move-object/from16 v8, p8

    sget-object v3, Ldet;->b:Lsun/misc/Unsafe;

    move-object/from16 v9, p0

    move/from16 v4, p5

    invoke-direct {v9, v4}, Ldet;->H(I)Ljava/lang/Object;

    move-result-object v4

    .line 2
    invoke-virtual {v3, v0, v1, v2}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v5

    .line 3
    invoke-static {v5}, Lev;->W(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_0

    .line 4
    invoke-static {}, Lev;->Y()Ljava/lang/Object;

    move-result-object v10

    .line 5
    invoke-static {v10, v5}, Lev;->X(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    invoke-virtual {v3, v0, v1, v2, v10}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    move-object v5, v10

    .line 7
    :cond_0
    invoke-static {v4}, Lev;->U(Ljava/lang/Object;)Ldek;

    move-result-object v10

    .line 8
    move-object v11, v5

    check-cast v11, Ldem;

    .line 9
    move/from16 v0, p3

    invoke-static {v6, v0, v8}, Lhl;->F([BILdca;)I

    move-result v0

    iget v1, v8, Ldca;->a:I

    if-ltz v1, :cond_5

    sub-int v2, v7, v0

    if-gt v1, v2, :cond_5

    .line 10
    add-int v12, v0, v1

    iget-object v1, v10, Ldek;->b:Ljava/lang/Object;

    iget-object v2, v10, Ldek;->d:Ljava/lang/Object;

    move-object v13, v1

    move-object v14, v2

    :goto_0
    if-ge v0, v12, :cond_3

    add-int/lit8 v1, v0, 0x1

    .line 11
    aget-byte v0, v6, v0

    if-gez v0, :cond_1

    .line 12
    invoke-static {v0, v6, v1, v8}, Lhl;->G(I[BILdca;)I

    move-result v0

    iget v1, v8, Ldca;->a:I

    move v15, v1

    move v1, v0

    move v0, v15

    goto :goto_1

    .line 15
    :cond_1
    nop

    .line 12
    :goto_1
    and-int/lit8 v2, v0, 0x7

    ushr-int/lit8 v3, v0, 0x3

    packed-switch v3, :pswitch_data_0

    goto :goto_2

    .line 16
    :pswitch_0
    iget-object v3, v10, Ldek;->c:Ldgc;

    iget v4, v3, Ldgc;->t:I

    if-ne v2, v4, :cond_2

    iget-object v0, v10, Ldek;->d:Ljava/lang/Object;

    .line 13
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    .line 14
    move-object/from16 v0, p2

    move/from16 v2, p4

    move-object/from16 v5, p8

    invoke-static/range {v0 .. v5}, Ldet;->W([BIILdgc;Ljava/lang/Class;Ldca;)I

    move-result v0

    iget-object v14, v8, Ldca;->c:Ljava/lang/Object;

    goto :goto_0

    :pswitch_1
    iget-object v3, v10, Ldek;->a:Ldgc;

    iget v4, v3, Ldgc;->t:I

    if-ne v2, v4, :cond_2

    const/4 v4, 0x0

    .line 15
    move-object/from16 v0, p2

    move/from16 v2, p4

    move-object/from16 v5, p8

    invoke-static/range {v0 .. v5}, Ldet;->W([BIILdgc;Ljava/lang/Class;Ldca;)I

    move-result v0

    iget-object v13, v8, Ldca;->c:Ljava/lang/Object;

    goto :goto_0

    .line 16
    :cond_2
    :goto_2
    invoke-static {v0, v6, v1, v7, v8}, Lhl;->J(I[BIILdca;)I

    move-result v0

    goto :goto_0

    .line 15
    :cond_3
    if-ne v0, v12, :cond_4

    .line 18
    invoke-interface {v11, v13, v14}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return v12

    .line 17
    :cond_4
    invoke-static {}, Lddu;->g()Lddu;

    move-result-object v0

    throw v0

    .line 10
    :cond_5
    invoke-static {}, Lddu;->i()Lddu;

    move-result-object v0

    goto :goto_4

    :goto_3
    throw v0

    :goto_4
    goto :goto_3

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private final v(Ljava/lang/Object;[BIIIIIIIJILdca;)I
    .locals 16

    .line 1
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v3, p2

    move/from16 v4, p3

    move/from16 v2, p5

    move/from16 v8, p6

    move/from16 v5, p7

    move-wide/from16 v9, p10

    move/from16 v6, p12

    move-object/from16 v11, p13

    sget-object v12, Ldet;->b:Lsun/misc/Unsafe;

    iget-object v7, v0, Ldet;->c:[I

    add-int/lit8 v13, v6, 0x2

    aget v7, v7, v13

    const v13, 0xfffff

    and-int/2addr v7, v13

    int-to-long v13, v7

    const/4 v7, 0x5

    const/4 v15, 0x2

    packed-switch p9, :pswitch_data_0

    :goto_0
    goto/16 :goto_a

    .line 56
    :pswitch_0
    const/4 v7, 0x3

    if-ne v5, v7, :cond_2

    .line 2
    invoke-direct {v0, v6}, Ldet;->G(I)Ldfg;

    move-result-object v5

    and-int/lit8 v2, v2, -0x8

    or-int/lit8 v6, v2, 0x4

    .line 3
    move-object v2, v5

    move-object/from16 v3, p2

    move/from16 v4, p3

    move/from16 v5, p4

    move-object/from16 v7, p13

    invoke-static/range {v2 .. v7}, Lhl;->y(Ldfg;[BIIILdca;)I

    move-result v2

    .line 4
    invoke-virtual {v12, v1, v13, v14}, Lsun/misc/Unsafe;->getInt(Ljava/lang/Object;J)I

    move-result v3

    if-ne v3, v8, :cond_0

    .line 5
    invoke-virtual {v12, v1, v9, v10}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v15

    goto :goto_1

    .line 8
    :cond_0
    const/4 v15, 0x0

    .line 5
    :goto_1
    if-nez v15, :cond_1

    iget-object v3, v11, Ldca;->c:Ljava/lang/Object;

    .line 6
    invoke-virtual {v12, v1, v9, v10, v3}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    goto :goto_2

    .line 9
    :cond_1
    iget-object v3, v11, Ldca;->c:Ljava/lang/Object;

    .line 7
    invoke-static {v15, v3}, Ldds;->e(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    .line 8
    invoke-virtual {v12, v1, v9, v10, v3}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 9
    :goto_2
    invoke-virtual {v12, v1, v13, v14, v8}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    goto/16 :goto_b

    .line 8
    :pswitch_1
    if-eqz v5, :cond_3

    :cond_2
    goto/16 :goto_a

    .line 10
    :cond_3
    invoke-static {v3, v4, v11}, Lhl;->I([BILdca;)I

    move-result v2

    iget-wide v3, v11, Ldca;->b:J

    .line 11
    invoke-static {v3, v4}, Ldcp;->G(J)J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v12, v1, v9, v10, v3}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 12
    invoke-virtual {v12, v1, v13, v14, v8}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    return v2

    :pswitch_2
    if-eqz v5, :cond_4

    goto/16 :goto_a

    .line 13
    :cond_4
    invoke-static {v3, v4, v11}, Lhl;->F([BILdca;)I

    move-result v2

    iget v3, v11, Ldca;->a:I

    .line 14
    invoke-static {v3}, Ldcp;->F(I)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v12, v1, v9, v10, v3}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 15
    invoke-virtual {v12, v1, v13, v14, v8}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    return v2

    :pswitch_3
    if-nez v5, :cond_7

    .line 16
    invoke-static {v3, v4, v11}, Lhl;->F([BILdca;)I

    move-result v3

    iget v4, v11, Ldca;->a:I

    .line 17
    invoke-direct {v0, v6}, Ldet;->F(I)Lddo;

    move-result-object v5

    if-eqz v5, :cond_6

    .line 18
    invoke-interface {v5, v4}, Lddo;->a(I)Z

    move-result v5

    if-eqz v5, :cond_5

    goto :goto_3

    .line 21
    :cond_5
    invoke-static/range {p1 .. p1}, Ldet;->d(Ljava/lang/Object;)Ldfr;

    move-result-object v1

    int-to-long v4, v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v1, v2, v4}, Ldfr;->d(ILjava/lang/Object;)V

    goto :goto_4

    .line 19
    :cond_6
    :goto_3
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v12, v1, v9, v10, v2}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 20
    invoke-virtual {v12, v1, v13, v14, v8}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    .line 1
    :goto_4
    move v2, v3

    goto/16 :goto_b

    .line 21
    :pswitch_4
    if-eq v5, v15, :cond_8

    :cond_7
    goto/16 :goto_a

    .line 22
    :cond_8
    invoke-static {v3, v4, v11}, Lhl;->w([BILdca;)I

    move-result v2

    iget-object v3, v11, Ldca;->c:Ljava/lang/Object;

    .line 23
    invoke-virtual {v12, v1, v9, v10, v3}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 24
    invoke-virtual {v12, v1, v13, v14, v8}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    return v2

    :pswitch_5
    if-ne v5, v15, :cond_b

    .line 25
    invoke-direct {v0, v6}, Ldet;->G(I)Ldfg;

    move-result-object v2

    .line 26
    move/from16 v5, p4

    invoke-static {v2, v3, v4, v5, v11}, Lhl;->z(Ldfg;[BIILdca;)I

    move-result v2

    .line 27
    invoke-virtual {v12, v1, v13, v14}, Lsun/misc/Unsafe;->getInt(Ljava/lang/Object;J)I

    move-result v3

    if-ne v3, v8, :cond_9

    .line 28
    invoke-virtual {v12, v1, v9, v10}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v15

    goto :goto_5

    .line 31
    :cond_9
    const/4 v15, 0x0

    .line 28
    :goto_5
    if-nez v15, :cond_a

    iget-object v3, v11, Ldca;->c:Ljava/lang/Object;

    .line 29
    invoke-virtual {v12, v1, v9, v10, v3}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    goto :goto_6

    .line 32
    :cond_a
    iget-object v3, v11, Ldca;->c:Ljava/lang/Object;

    .line 30
    invoke-static {v15, v3}, Ldds;->e(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    .line 31
    invoke-virtual {v12, v1, v9, v10, v3}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 32
    :goto_6
    invoke-virtual {v12, v1, v13, v14, v8}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    goto/16 :goto_b

    .line 31
    :cond_b
    goto/16 :goto_a

    :pswitch_6
    if-ne v5, v15, :cond_f

    .line 33
    invoke-static {v3, v4, v11}, Lhl;->F([BILdca;)I

    move-result v2

    iget v4, v11, Ldca;->a:I

    if-nez v4, :cond_c

    .line 34
    const-string v3, ""

    invoke-virtual {v12, v1, v9, v10, v3}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    goto :goto_8

    .line 38
    :cond_c
    const/high16 v5, 0x20000000

    and-int v5, p8, v5

    if-eqz v5, :cond_e

    add-int v5, v2, v4

    .line 35
    invoke-static {v3, v2, v5}, Ldgb;->g([BII)Z

    move-result v5

    if-eqz v5, :cond_d

    goto :goto_7

    .line 39
    :cond_d
    invoke-static {}, Lddu;->d()Lddu;

    move-result-object v1

    throw v1

    .line 35
    :cond_e
    :goto_7
    new-instance v5, Ljava/lang/String;

    .line 36
    sget-object v6, Ldds;->a:Ljava/nio/charset/Charset;

    invoke-direct {v5, v3, v2, v4, v6}, Ljava/lang/String;-><init>([BIILjava/nio/charset/Charset;)V

    .line 37
    invoke-virtual {v12, v1, v9, v10, v5}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    add-int/2addr v2, v4

    .line 38
    :goto_8
    invoke-virtual {v12, v1, v13, v14, v8}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    goto/16 :goto_b

    .line 37
    :cond_f
    goto/16 :goto_a

    :pswitch_7
    if-nez v5, :cond_11

    .line 40
    invoke-static {v3, v4, v11}, Lhl;->I([BILdca;)I

    move-result v2

    iget-wide v3, v11, Ldca;->b:J

    const-wide/16 v5, 0x0

    cmp-long v7, v3, v5

    if-eqz v7, :cond_10

    const/4 v15, 0x1

    goto :goto_9

    .line 42
    :cond_10
    const/4 v15, 0x0

    .line 41
    :goto_9
    invoke-static {v15}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v12, v1, v9, v10, v3}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 42
    invoke-virtual {v12, v1, v13, v14, v8}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    return v2

    :pswitch_8
    if-eq v5, v7, :cond_12

    :cond_11
    goto/16 :goto_a

    .line 43
    :cond_12
    invoke-static/range {p2 .. p3}, Lhl;->x([BI)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v12, v1, v9, v10, v2}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 44
    invoke-virtual {v12, v1, v13, v14, v8}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    add-int/lit8 v1, v4, 0x4

    return v1

    :pswitch_9
    const/4 v2, 0x1

    if-eq v5, v2, :cond_13

    goto :goto_a

    .line 45
    :cond_13
    invoke-static/range {p2 .. p3}, Lhl;->K([BI)J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v12, v1, v9, v10, v2}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 46
    invoke-virtual {v12, v1, v13, v14, v8}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    add-int/lit8 v1, v4, 0x8

    return v1

    :pswitch_a
    if-eqz v5, :cond_14

    goto :goto_a

    .line 47
    :cond_14
    invoke-static {v3, v4, v11}, Lhl;->F([BILdca;)I

    move-result v2

    iget v3, v11, Ldca;->a:I

    .line 48
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v12, v1, v9, v10, v3}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 49
    invoke-virtual {v12, v1, v13, v14, v8}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    return v2

    :pswitch_b
    if-eqz v5, :cond_15

    goto :goto_a

    .line 50
    :cond_15
    invoke-static {v3, v4, v11}, Lhl;->I([BILdca;)I

    move-result v2

    iget-wide v3, v11, Ldca;->b:J

    .line 51
    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v12, v1, v9, v10, v3}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 52
    invoke-virtual {v12, v1, v13, v14, v8}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    return v2

    :pswitch_c
    if-eq v5, v7, :cond_16

    goto :goto_a

    .line 53
    :cond_16
    invoke-static/range {p2 .. p3}, Lhl;->v([BI)F

    move-result v2

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    invoke-virtual {v12, v1, v9, v10, v2}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 54
    invoke-virtual {v12, v1, v13, v14, v8}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    add-int/lit8 v1, v4, 0x4

    return v1

    .line 1
    :pswitch_d
    const/4 v2, 0x1

    if-eq v5, v2, :cond_17

    goto/16 :goto_0

    .line 55
    :cond_17
    invoke-static/range {p2 .. p3}, Lhl;->u([BI)D

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    invoke-virtual {v12, v1, v9, v10, v2}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 56
    invoke-virtual {v12, v1, v13, v14, v8}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    add-int/lit8 v1, v4, 0x8

    return v1

    .line 1
    :goto_a
    move v2, v4

    :goto_b
    return v2

    :pswitch_data_0
    .packed-switch 0x33
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_a
        :pswitch_3
        :pswitch_8
        :pswitch_9
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private final w(Ljava/lang/Object;[BIIIIIIJIJLdca;)I
    .locals 15

    .line 1
    move-object v0, p0

    move-object/from16 v1, p1

    move-object/from16 v3, p2

    move/from16 v4, p3

    move/from16 v5, p4

    move/from16 v2, p5

    move/from16 v6, p7

    move/from16 v8, p8

    move-wide/from16 v9, p12

    move-object/from16 v7, p14

    sget-object v11, Ldet;->b:Lsun/misc/Unsafe;

    invoke-virtual {v11, v1, v9, v10}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lddr;

    .line 2
    invoke-interface {v12}, Lddr;->c()Z

    move-result v13

    if-nez v13, :cond_1

    .line 3
    invoke-interface {v12}, Lddr;->size()I

    move-result v13

    if-nez v13, :cond_0

    const/16 v13, 0xa

    goto :goto_0

    .line 128
    :cond_0
    add-int/2addr v13, v13

    .line 4
    :goto_0
    invoke-interface {v12, v13}, Lddr;->d(I)Lddr;

    move-result-object v12

    .line 5
    invoke-virtual {v11, v1, v9, v10, v12}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    goto :goto_1

    .line 128
    :cond_1
    nop

    .line 5
    :goto_1
    const/4 v9, 0x5

    const-wide/16 v10, 0x0

    const/4 v13, 0x1

    const/4 v14, 0x2

    packed-switch p11, :pswitch_data_0

    const/4 v1, 0x3

    if-ne v6, v1, :cond_53

    .line 6
    invoke-direct {p0, v8}, Ldet;->G(I)Ldfg;

    move-result-object v1

    and-int/lit8 v6, v2, -0x8

    or-int/lit8 v6, v6, 0x4

    .line 7
    move-object/from16 p6, v1

    move-object/from16 p7, p2

    move/from16 p8, p3

    move/from16 p9, p4

    move/from16 p10, v6

    move-object/from16 p11, p14

    invoke-static/range {p6 .. p11}, Lhl;->y(Ldfg;[BIIILdca;)I

    move-result v4

    iget-object v8, v7, Ldca;->c:Ljava/lang/Object;

    .line 8
    invoke-interface {v12, v8}, Lddr;->add(Ljava/lang/Object;)Z

    goto/16 :goto_22

    .line 136
    :pswitch_0
    if-ne v6, v14, :cond_4

    .line 12
    check-cast v12, Ldeg;

    .line 13
    invoke-static {v3, v4, v7}, Lhl;->F([BILdca;)I

    move-result v1

    iget v2, v7, Ldca;->a:I

    add-int/2addr v2, v1

    :goto_2
    if-ge v1, v2, :cond_2

    .line 14
    invoke-static {v3, v1, v7}, Lhl;->I([BILdca;)I

    move-result v1

    iget-wide v4, v7, Ldca;->b:J

    .line 15
    invoke-static {v4, v5}, Ldcp;->G(J)J

    move-result-wide v4

    invoke-virtual {v12, v4, v5}, Ldeg;->e(J)V

    goto :goto_2

    :cond_2
    if-ne v1, v2, :cond_3

    goto/16 :goto_25

    .line 16
    :cond_3
    invoke-static {}, Lddu;->i()Lddu;

    move-result-object v1

    throw v1

    :cond_4
    if-nez v6, :cond_7

    .line 17
    check-cast v12, Ldeg;

    .line 18
    invoke-static {v3, v4, v7}, Lhl;->I([BILdca;)I

    move-result v1

    iget-wide v8, v7, Ldca;->b:J

    .line 19
    invoke-static {v8, v9}, Ldcp;->G(J)J

    move-result-wide v8

    invoke-virtual {v12, v8, v9}, Ldeg;->e(J)V

    :goto_3
    if-ge v1, v5, :cond_6

    .line 20
    invoke-static {v3, v1, v7}, Lhl;->F([BILdca;)I

    move-result v4

    iget v6, v7, Ldca;->a:I

    if-eq v2, v6, :cond_5

    goto :goto_4

    .line 21
    :cond_5
    invoke-static {v3, v4, v7}, Lhl;->I([BILdca;)I

    move-result v1

    iget-wide v8, v7, Ldca;->b:J

    invoke-static {v8, v9}, Ldcp;->G(J)J

    move-result-wide v8

    .line 22
    invoke-virtual {v12, v8, v9}, Ldeg;->e(J)V

    goto :goto_3

    .line 20
    :cond_6
    :goto_4
    return v1

    .line 22
    :cond_7
    goto/16 :goto_24

    :pswitch_1
    if-ne v6, v14, :cond_a

    .line 23
    check-cast v12, Lddl;

    .line 24
    invoke-static {v3, v4, v7}, Lhl;->F([BILdca;)I

    move-result v1

    iget v2, v7, Ldca;->a:I

    add-int/2addr v2, v1

    :goto_5
    if-ge v1, v2, :cond_8

    .line 25
    invoke-static {v3, v1, v7}, Lhl;->F([BILdca;)I

    move-result v1

    iget v4, v7, Ldca;->a:I

    .line 26
    invoke-static {v4}, Ldcp;->F(I)I

    move-result v4

    invoke-virtual {v12, v4}, Lddl;->g(I)V

    goto :goto_5

    :cond_8
    if-ne v1, v2, :cond_9

    goto/16 :goto_25

    .line 27
    :cond_9
    invoke-static {}, Lddu;->i()Lddu;

    move-result-object v1

    throw v1

    :cond_a
    if-nez v6, :cond_d

    .line 28
    check-cast v12, Lddl;

    .line 29
    invoke-static {v3, v4, v7}, Lhl;->F([BILdca;)I

    move-result v1

    iget v4, v7, Ldca;->a:I

    .line 30
    invoke-static {v4}, Ldcp;->F(I)I

    move-result v4

    invoke-virtual {v12, v4}, Lddl;->g(I)V

    :goto_6
    if-ge v1, v5, :cond_c

    .line 31
    invoke-static {v3, v1, v7}, Lhl;->F([BILdca;)I

    move-result v4

    iget v6, v7, Ldca;->a:I

    if-eq v2, v6, :cond_b

    goto :goto_7

    .line 32
    :cond_b
    invoke-static {v3, v4, v7}, Lhl;->F([BILdca;)I

    move-result v1

    iget v4, v7, Ldca;->a:I

    invoke-static {v4}, Ldcp;->F(I)I

    move-result v4

    .line 33
    invoke-virtual {v12, v4}, Lddl;->g(I)V

    goto :goto_6

    .line 31
    :cond_c
    :goto_7
    return v1

    .line 33
    :cond_d
    goto/16 :goto_24

    :pswitch_2
    if-ne v6, v14, :cond_e

    .line 34
    invoke-static {v3, v4, v12, v7}, Lhl;->B([BILddr;Ldca;)I

    move-result v2

    goto :goto_8

    .line 39
    :cond_e
    if-nez v6, :cond_11

    .line 35
    move/from16 v2, p5

    move-object/from16 v3, p2

    move/from16 v4, p3

    move/from16 v5, p4

    move-object v6, v12

    move-object/from16 v7, p14

    invoke-static/range {v2 .. v7}, Lhl;->H(I[BIILddr;Ldca;)I

    move-result v2

    .line 36
    :goto_8
    check-cast v1, Lddk;

    iget-object v3, v1, Lddk;->s:Ldfr;

    sget-object v4, Ldfr;->a:Ldfr;

    if-ne v3, v4, :cond_f

    const/4 v3, 0x0

    .line 37
    :cond_f
    invoke-direct {p0, v8}, Ldet;->F(I)Lddo;

    move-result-object v4

    .line 38
    move/from16 v5, p6

    invoke-static {v5, v12, v4, v3}, Ldfh;->X(ILjava/util/List;Lddo;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    if-nez v3, :cond_10

    move v1, v2

    goto/16 :goto_25

    :cond_10
    check-cast v3, Ldfr;

    .line 39
    iput-object v3, v1, Lddk;->s:Ldfr;

    return v2

    .line 35
    :cond_11
    goto/16 :goto_24

    :pswitch_3
    if-ne v6, v14, :cond_1a

    .line 40
    invoke-static {v3, v4, v7}, Lhl;->F([BILdca;)I

    move-result v1

    iget v4, v7, Ldca;->a:I

    if-ltz v4, :cond_19

    .line 42
    array-length v6, v3

    sub-int/2addr v6, v1

    if-gt v4, v6, :cond_18

    .line 43
    if-nez v4, :cond_12

    .line 44
    sget-object v4, Ldcl;->b:Ldcl;

    invoke-interface {v12, v4}, Lddr;->add(Ljava/lang/Object;)Z

    goto :goto_9

    .line 45
    :cond_12
    invoke-static {v3, v1, v4}, Ldcl;->u([BII)Ldcl;

    move-result-object v6

    invoke-interface {v12, v6}, Lddr;->add(Ljava/lang/Object;)Z

    add-int/2addr v1, v4

    .line 44
    :goto_9
    if-ge v1, v5, :cond_17

    .line 46
    invoke-static {v3, v1, v7}, Lhl;->F([BILdca;)I

    move-result v4

    iget v6, v7, Ldca;->a:I

    if-eq v2, v6, :cond_13

    goto :goto_a

    .line 47
    :cond_13
    invoke-static {v3, v4, v7}, Lhl;->F([BILdca;)I

    move-result v1

    iget v4, v7, Ldca;->a:I

    if-ltz v4, :cond_16

    .line 48
    array-length v6, v3

    sub-int/2addr v6, v1

    if-gt v4, v6, :cond_15

    .line 52
    if-nez v4, :cond_14

    sget-object v4, Ldcl;->b:Ldcl;

    .line 49
    invoke-interface {v12, v4}, Lddr;->add(Ljava/lang/Object;)Z

    goto :goto_9

    .line 50
    :cond_14
    invoke-static {v3, v1, v4}, Ldcl;->u([BII)Ldcl;

    move-result-object v6

    invoke-interface {v12, v6}, Lddr;->add(Ljava/lang/Object;)Z

    add-int/2addr v1, v4

    goto :goto_9

    .line 52
    :cond_15
    invoke-static {}, Lddu;->i()Lddu;

    move-result-object v1

    throw v1

    .line 51
    :cond_16
    invoke-static {}, Lddu;->f()Lddu;

    move-result-object v1

    throw v1

    .line 46
    :cond_17
    :goto_a
    return v1

    .line 43
    :cond_18
    invoke-static {}, Lddu;->i()Lddu;

    move-result-object v1

    throw v1

    .line 41
    :cond_19
    invoke-static {}, Lddu;->f()Lddu;

    move-result-object v1

    throw v1

    .line 45
    :pswitch_4
    if-eq v6, v14, :cond_1b

    :cond_1a
    goto/16 :goto_24

    .line 53
    :cond_1b
    invoke-direct {p0, v8}, Ldet;->G(I)Ldfg;

    move-result-object v1

    .line 54
    move-object/from16 p6, v1

    move/from16 p7, p5

    move-object/from16 p8, p2

    move/from16 p9, p3

    move/from16 p10, p4

    move-object/from16 p11, v12

    move-object/from16 p12, p14

    invoke-static/range {p6 .. p12}, Lhl;->A(Ldfg;I[BIILddr;Ldca;)I

    move-result v1

    return v1

    :pswitch_5
    if-ne v6, v14, :cond_27

    const-wide/32 v8, 0x20000000

    and-long v8, p9, v8

    const-string v1, ""

    cmp-long v6, v8, v10

    if-nez v6, :cond_20

    .line 70
    invoke-static {v3, v4, v7}, Lhl;->F([BILdca;)I

    move-result v4

    iget v6, v7, Ldca;->a:I

    if-ltz v6, :cond_1f

    .line 71
    if-nez v6, :cond_1c

    .line 72
    invoke-interface {v12, v1}, Lddr;->add(Ljava/lang/Object;)Z

    goto :goto_b

    .line 79
    :cond_1c
    new-instance v8, Ljava/lang/String;

    .line 73
    sget-object v9, Ldds;->a:Ljava/nio/charset/Charset;

    invoke-direct {v8, v3, v4, v6, v9}, Ljava/lang/String;-><init>([BIILjava/nio/charset/Charset;)V

    .line 74
    invoke-interface {v12, v8}, Lddr;->add(Ljava/lang/Object;)Z

    add-int/2addr v4, v6

    .line 72
    :goto_b
    if-ge v4, v5, :cond_54

    .line 75
    invoke-static {v3, v4, v7}, Lhl;->F([BILdca;)I

    move-result v6

    iget v8, v7, Ldca;->a:I

    if-ne v2, v8, :cond_54

    .line 76
    invoke-static {v3, v6, v7}, Lhl;->F([BILdca;)I

    move-result v4

    iget v6, v7, Ldca;->a:I

    if-ltz v6, :cond_1e

    .line 80
    if-nez v6, :cond_1d

    .line 77
    invoke-interface {v12, v1}, Lddr;->add(Ljava/lang/Object;)Z

    goto :goto_b

    :cond_1d
    new-instance v8, Ljava/lang/String;

    .line 78
    sget-object v9, Ldds;->a:Ljava/nio/charset/Charset;

    invoke-direct {v8, v3, v4, v6, v9}, Ljava/lang/String;-><init>([BIILjava/nio/charset/Charset;)V

    .line 79
    invoke-interface {v12, v8}, Lddr;->add(Ljava/lang/Object;)Z

    add-int/2addr v4, v6

    goto :goto_b

    .line 80
    :cond_1e
    invoke-static {}, Lddu;->f()Lddu;

    move-result-object v1

    throw v1

    .line 71
    :cond_1f
    invoke-static {}, Lddu;->f()Lddu;

    move-result-object v1

    throw v1

    .line 55
    :cond_20
    invoke-static {v3, v4, v7}, Lhl;->F([BILdca;)I

    move-result v4

    iget v6, v7, Ldca;->a:I

    if-ltz v6, :cond_26

    .line 56
    if-nez v6, :cond_21

    .line 57
    invoke-interface {v12, v1}, Lddr;->add(Ljava/lang/Object;)Z

    goto :goto_c

    .line 67
    :cond_21
    add-int v8, v4, v6

    .line 58
    invoke-static {v3, v4, v8}, Ldgb;->g([BII)Z

    move-result v9

    if-eqz v9, :cond_25

    .line 59
    new-instance v9, Ljava/lang/String;

    .line 60
    sget-object v10, Ldds;->a:Ljava/nio/charset/Charset;

    invoke-direct {v9, v3, v4, v6, v10}, Ljava/lang/String;-><init>([BIILjava/nio/charset/Charset;)V

    .line 61
    invoke-interface {v12, v9}, Lddr;->add(Ljava/lang/Object;)Z

    move v4, v8

    .line 57
    :goto_c
    if-ge v4, v5, :cond_54

    .line 62
    invoke-static {v3, v4, v7}, Lhl;->F([BILdca;)I

    move-result v6

    iget v8, v7, Ldca;->a:I

    if-ne v2, v8, :cond_54

    .line 63
    invoke-static {v3, v6, v7}, Lhl;->F([BILdca;)I

    move-result v4

    iget v6, v7, Ldca;->a:I

    if-ltz v6, :cond_24

    .line 68
    if-nez v6, :cond_22

    .line 64
    invoke-interface {v12, v1}, Lddr;->add(Ljava/lang/Object;)Z

    goto :goto_c

    :cond_22
    add-int v8, v4, v6

    .line 65
    invoke-static {v3, v4, v8}, Ldgb;->g([BII)Z

    move-result v9

    if-eqz v9, :cond_23

    .line 69
    new-instance v9, Ljava/lang/String;

    .line 66
    sget-object v10, Ldds;->a:Ljava/nio/charset/Charset;

    invoke-direct {v9, v3, v4, v6, v10}, Ljava/lang/String;-><init>([BIILjava/nio/charset/Charset;)V

    .line 67
    invoke-interface {v12, v9}, Lddr;->add(Ljava/lang/Object;)Z

    move v4, v8

    goto :goto_c

    .line 69
    :cond_23
    invoke-static {}, Lddu;->d()Lddu;

    move-result-object v1

    throw v1

    .line 68
    :cond_24
    invoke-static {}, Lddu;->f()Lddu;

    move-result-object v1

    throw v1

    .line 59
    :cond_25
    invoke-static {}, Lddu;->d()Lddu;

    move-result-object v1

    throw v1

    .line 56
    :cond_26
    invoke-static {}, Lddu;->f()Lddu;

    move-result-object v1

    throw v1

    .line 61
    :cond_27
    goto/16 :goto_24

    :pswitch_6
    const/4 v1, 0x0

    if-ne v6, v14, :cond_2b

    .line 81
    check-cast v12, Ldcd;

    .line 82
    invoke-static {v3, v4, v7}, Lhl;->F([BILdca;)I

    move-result v2

    iget v4, v7, Ldca;->a:I

    add-int/2addr v4, v2

    :goto_d
    if-ge v2, v4, :cond_29

    .line 83
    invoke-static {v3, v2, v7}, Lhl;->I([BILdca;)I

    move-result v2

    iget-wide v5, v7, Ldca;->b:J

    cmp-long v8, v5, v10

    if-eqz v8, :cond_28

    const/4 v5, 0x1

    goto :goto_e

    .line 84
    :cond_28
    const/4 v5, 0x0

    :goto_e
    invoke-virtual {v12, v5}, Ldcd;->e(Z)V

    goto :goto_d

    :cond_29
    if-ne v2, v4, :cond_2a

    move v1, v2

    goto/16 :goto_25

    .line 85
    :cond_2a
    invoke-static {}, Lddu;->i()Lddu;

    move-result-object v1

    throw v1

    :cond_2b
    if-nez v6, :cond_30

    .line 86
    check-cast v12, Ldcd;

    .line 87
    invoke-static {v3, v4, v7}, Lhl;->I([BILdca;)I

    move-result v4

    iget-wide v8, v7, Ldca;->b:J

    cmp-long v6, v8, v10

    if-eqz v6, :cond_2c

    const/4 v6, 0x1

    goto :goto_f

    .line 91
    :cond_2c
    const/4 v6, 0x0

    .line 88
    :goto_f
    invoke-virtual {v12, v6}, Ldcd;->e(Z)V

    :goto_10
    if-ge v4, v5, :cond_2f

    .line 89
    invoke-static {v3, v4, v7}, Lhl;->F([BILdca;)I

    move-result v6

    iget v8, v7, Ldca;->a:I

    if-eq v2, v8, :cond_2d

    goto :goto_12

    .line 90
    :cond_2d
    invoke-static {v3, v6, v7}, Lhl;->I([BILdca;)I

    move-result v4

    iget-wide v8, v7, Ldca;->b:J

    cmp-long v6, v8, v10

    if-eqz v6, :cond_2e

    const/4 v6, 0x1

    goto :goto_11

    .line 91
    :cond_2e
    const/4 v6, 0x0

    :goto_11
    invoke-virtual {v12, v6}, Ldcd;->e(Z)V

    goto :goto_10

    .line 89
    :cond_2f
    :goto_12
    return v4

    .line 91
    :cond_30
    goto/16 :goto_24

    :pswitch_7
    if-ne v6, v14, :cond_33

    .line 92
    check-cast v12, Lddl;

    .line 93
    invoke-static {v3, v4, v7}, Lhl;->F([BILdca;)I

    move-result v1

    iget v2, v7, Ldca;->a:I

    add-int/2addr v2, v1

    :goto_13
    if-ge v1, v2, :cond_31

    .line 94
    invoke-static {v3, v1}, Lhl;->x([BI)I

    move-result v4

    invoke-virtual {v12, v4}, Lddl;->g(I)V

    add-int/lit8 v1, v1, 0x4

    goto :goto_13

    :cond_31
    if-ne v1, v2, :cond_32

    goto/16 :goto_25

    .line 95
    :cond_32
    invoke-static {}, Lddu;->i()Lddu;

    move-result-object v1

    throw v1

    :cond_33
    if-ne v6, v9, :cond_36

    .line 96
    check-cast v12, Lddl;

    .line 97
    invoke-static/range {p2 .. p3}, Lhl;->x([BI)I

    move-result v1

    invoke-virtual {v12, v1}, Lddl;->g(I)V

    add-int/lit8 v1, v4, 0x4

    :goto_14
    if-ge v1, v5, :cond_35

    .line 98
    invoke-static {v3, v1, v7}, Lhl;->F([BILdca;)I

    move-result v4

    iget v6, v7, Ldca;->a:I

    if-eq v2, v6, :cond_34

    goto :goto_15

    .line 99
    :cond_34
    invoke-static {v3, v4}, Lhl;->x([BI)I

    move-result v1

    invoke-virtual {v12, v1}, Lddl;->g(I)V

    add-int/lit8 v1, v4, 0x4

    goto :goto_14

    .line 98
    :cond_35
    :goto_15
    return v1

    .line 99
    :cond_36
    goto/16 :goto_24

    :pswitch_8
    if-ne v6, v14, :cond_39

    .line 100
    check-cast v12, Ldeg;

    .line 101
    invoke-static {v3, v4, v7}, Lhl;->F([BILdca;)I

    move-result v1

    iget v2, v7, Ldca;->a:I

    add-int/2addr v2, v1

    :goto_16
    if-ge v1, v2, :cond_37

    .line 102
    invoke-static {v3, v1}, Lhl;->K([BI)J

    move-result-wide v4

    invoke-virtual {v12, v4, v5}, Ldeg;->e(J)V

    add-int/lit8 v1, v1, 0x8

    goto :goto_16

    :cond_37
    if-ne v1, v2, :cond_38

    goto/16 :goto_25

    .line 103
    :cond_38
    invoke-static {}, Lddu;->i()Lddu;

    move-result-object v1

    throw v1

    :cond_39
    if-ne v6, v13, :cond_3c

    .line 104
    check-cast v12, Ldeg;

    .line 105
    invoke-static/range {p2 .. p3}, Lhl;->K([BI)J

    move-result-wide v8

    invoke-virtual {v12, v8, v9}, Ldeg;->e(J)V

    add-int/lit8 v1, v4, 0x8

    :goto_17
    if-ge v1, v5, :cond_3b

    .line 106
    invoke-static {v3, v1, v7}, Lhl;->F([BILdca;)I

    move-result v4

    iget v6, v7, Ldca;->a:I

    if-eq v2, v6, :cond_3a

    goto :goto_18

    .line 107
    :cond_3a
    invoke-static {v3, v4}, Lhl;->K([BI)J

    move-result-wide v8

    invoke-virtual {v12, v8, v9}, Ldeg;->e(J)V

    add-int/lit8 v1, v4, 0x8

    goto :goto_17

    .line 106
    :cond_3b
    :goto_18
    return v1

    .line 107
    :cond_3c
    goto/16 :goto_24

    :pswitch_9
    if-ne v6, v14, :cond_3d

    .line 108
    invoke-static {v3, v4, v12, v7}, Lhl;->B([BILddr;Ldca;)I

    move-result v1

    goto/16 :goto_25

    :cond_3d
    if-eqz v6, :cond_3e

    goto/16 :goto_24

    .line 109
    :cond_3e
    move-object/from16 p6, p2

    move/from16 p7, p3

    move/from16 p8, p4

    move-object/from16 p9, v12

    move-object/from16 p10, p14

    invoke-static/range {p5 .. p10}, Lhl;->H(I[BIILddr;Ldca;)I

    move-result v1

    return v1

    :pswitch_a
    if-ne v6, v14, :cond_41

    .line 110
    check-cast v12, Ldeg;

    .line 111
    invoke-static {v3, v4, v7}, Lhl;->F([BILdca;)I

    move-result v1

    iget v2, v7, Ldca;->a:I

    add-int/2addr v2, v1

    :goto_19
    if-ge v1, v2, :cond_3f

    .line 112
    invoke-static {v3, v1, v7}, Lhl;->I([BILdca;)I

    move-result v1

    iget-wide v4, v7, Ldca;->b:J

    .line 113
    invoke-virtual {v12, v4, v5}, Ldeg;->e(J)V

    goto :goto_19

    :cond_3f
    if-ne v1, v2, :cond_40

    goto/16 :goto_25

    .line 114
    :cond_40
    invoke-static {}, Lddu;->i()Lddu;

    move-result-object v1

    throw v1

    :cond_41
    if-nez v6, :cond_44

    .line 115
    check-cast v12, Ldeg;

    .line 116
    invoke-static {v3, v4, v7}, Lhl;->I([BILdca;)I

    move-result v1

    iget-wide v8, v7, Ldca;->b:J

    .line 117
    invoke-virtual {v12, v8, v9}, Ldeg;->e(J)V

    :goto_1a
    if-ge v1, v5, :cond_43

    .line 118
    invoke-static {v3, v1, v7}, Lhl;->F([BILdca;)I

    move-result v4

    iget v6, v7, Ldca;->a:I

    if-eq v2, v6, :cond_42

    goto :goto_1b

    .line 119
    :cond_42
    invoke-static {v3, v4, v7}, Lhl;->I([BILdca;)I

    move-result v1

    iget-wide v8, v7, Ldca;->b:J

    .line 120
    invoke-virtual {v12, v8, v9}, Ldeg;->e(J)V

    goto :goto_1a

    .line 118
    :cond_43
    :goto_1b
    return v1

    .line 120
    :cond_44
    goto/16 :goto_24

    :pswitch_b
    if-ne v6, v14, :cond_47

    .line 121
    check-cast v12, Lddd;

    .line 122
    invoke-static {v3, v4, v7}, Lhl;->F([BILdca;)I

    move-result v1

    iget v2, v7, Ldca;->a:I

    add-int/2addr v2, v1

    :goto_1c
    if-ge v1, v2, :cond_45

    .line 123
    invoke-static {v3, v1}, Lhl;->v([BI)F

    move-result v4

    invoke-virtual {v12, v4}, Lddd;->e(F)V

    add-int/lit8 v1, v1, 0x4

    goto :goto_1c

    :cond_45
    if-ne v1, v2, :cond_46

    goto/16 :goto_25

    .line 124
    :cond_46
    invoke-static {}, Lddu;->i()Lddu;

    move-result-object v1

    throw v1

    :cond_47
    if-ne v6, v9, :cond_4a

    .line 125
    check-cast v12, Lddd;

    .line 126
    invoke-static/range {p2 .. p3}, Lhl;->v([BI)F

    move-result v1

    invoke-virtual {v12, v1}, Lddd;->e(F)V

    add-int/lit8 v1, v4, 0x4

    :goto_1d
    if-ge v1, v5, :cond_49

    .line 127
    invoke-static {v3, v1, v7}, Lhl;->F([BILdca;)I

    move-result v4

    iget v6, v7, Ldca;->a:I

    if-eq v2, v6, :cond_48

    goto :goto_1e

    .line 128
    :cond_48
    invoke-static {v3, v4}, Lhl;->v([BI)F

    move-result v1

    invoke-virtual {v12, v1}, Lddd;->e(F)V

    add-int/lit8 v1, v4, 0x4

    goto :goto_1d

    .line 127
    :cond_49
    :goto_1e
    return v1

    .line 128
    :cond_4a
    goto/16 :goto_24

    .line 11
    :pswitch_c
    if-ne v6, v14, :cond_4d

    .line 129
    check-cast v12, Ldcw;

    .line 130
    invoke-static {v3, v4, v7}, Lhl;->F([BILdca;)I

    move-result v1

    iget v2, v7, Ldca;->a:I

    add-int/2addr v2, v1

    :goto_1f
    if-ge v1, v2, :cond_4b

    .line 131
    invoke-static {v3, v1}, Lhl;->u([BI)D

    move-result-wide v4

    invoke-virtual {v12, v4, v5}, Ldcw;->e(D)V

    add-int/lit8 v1, v1, 0x8

    goto :goto_1f

    :cond_4b
    if-ne v1, v2, :cond_4c

    goto :goto_25

    .line 132
    :cond_4c
    invoke-static {}, Lddu;->i()Lddu;

    move-result-object v1

    throw v1

    :cond_4d
    if-ne v6, v13, :cond_50

    .line 133
    check-cast v12, Ldcw;

    .line 134
    invoke-static/range {p2 .. p3}, Lhl;->u([BI)D

    move-result-wide v8

    invoke-virtual {v12, v8, v9}, Ldcw;->e(D)V

    add-int/lit8 v1, v4, 0x8

    :goto_20
    if-ge v1, v5, :cond_4f

    .line 135
    invoke-static {v3, v1, v7}, Lhl;->F([BILdca;)I

    move-result v4

    iget v6, v7, Ldca;->a:I

    if-eq v2, v6, :cond_4e

    goto :goto_21

    .line 136
    :cond_4e
    invoke-static {v3, v4}, Lhl;->u([BI)D

    move-result-wide v8

    invoke-virtual {v12, v8, v9}, Ldcw;->e(D)V

    add-int/lit8 v1, v4, 0x8

    goto :goto_20

    .line 135
    :cond_4f
    :goto_21
    return v1

    .line 136
    :cond_50
    goto :goto_24

    .line 8
    :goto_22
    if-ge v4, v5, :cond_52

    .line 9
    invoke-static {v3, v4, v7}, Lhl;->F([BILdca;)I

    move-result v8

    iget v9, v7, Ldca;->a:I

    if-eq v2, v9, :cond_51

    goto :goto_23

    .line 10
    :cond_51
    move-object/from16 p6, v1

    move-object/from16 p7, p2

    move/from16 p8, v8

    move/from16 p9, p4

    move/from16 p10, v6

    move-object/from16 p11, p14

    invoke-static/range {p6 .. p11}, Lhl;->y(Ldfg;[BIIILdca;)I

    move-result v4

    iget-object v8, v7, Ldca;->c:Ljava/lang/Object;

    .line 11
    invoke-interface {v12, v8}, Lddr;->add(Ljava/lang/Object;)Z

    goto :goto_22

    .line 9
    :cond_52
    :goto_23
    return v4

    .line 11
    :cond_53
    nop

    :cond_54
    :goto_24
    move v1, v4

    :goto_25
    return v1

    nop

    :pswitch_data_0
    .packed-switch 0x12
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_9
        :pswitch_2
        :pswitch_7
        :pswitch_8
        :pswitch_1
        :pswitch_0
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_9
        :pswitch_2
        :pswitch_7
        :pswitch_8
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private final x(I)I
    .locals 1

    .line 1
    iget v0, p0, Ldet;->e:I

    if-lt p1, v0, :cond_0

    iget v0, p0, Ldet;->f:I

    if-gt p1, v0, :cond_0

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Ldet;->A(II)I

    move-result p1

    return p1

    :cond_0
    const/4 p1, -0x1

    return p1
.end method

.method private final y(II)I
    .locals 1

    .line 1
    iget v0, p0, Ldet;->e:I

    if-lt p1, v0, :cond_0

    iget v0, p0, Ldet;->f:I

    if-gt p1, v0, :cond_0

    invoke-direct {p0, p1, p2}, Ldet;->A(II)I

    move-result p1

    return p1

    :cond_0
    const/4 p1, -0x1

    return p1
.end method

.method private final z(I)I
    .locals 1

    .line 1
    iget-object v0, p0, Ldet;->c:[I

    add-int/lit8 p1, p1, 0x2

    aget p1, v0, p1

    return p1
.end method


# virtual methods
.method public final a(Ljava/lang/Object;)I
    .locals 1

    .line 1
    iget-boolean v0, p0, Ldet;->j:Z

    if-eqz v0, :cond_0

    invoke-direct {p0, p1}, Ldet;->r(Ljava/lang/Object;)I

    move-result p1

    goto :goto_0

    :cond_0
    invoke-direct {p0, p1}, Ldet;->q(Ljava/lang/Object;)I

    move-result p1

    :goto_0
    return p1
.end method

.method public final b(Ljava/lang/Object;)I
    .locals 8

    .line 1
    iget-object v0, p0, Ldet;->c:[I

    array-length v0, v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    if-ge v1, v0, :cond_3

    .line 2
    invoke-direct {p0, v1}, Ldet;->C(I)I

    move-result v3

    .line 3
    invoke-direct {p0, v1}, Ldet;->s(I)I

    move-result v4

    invoke-static {v3}, Ldet;->D(I)J

    move-result-wide v5

    invoke-static {v3}, Ldet;->B(I)I

    move-result v3

    const/16 v7, 0x25

    packed-switch v3, :pswitch_data_0

    goto/16 :goto_3

    .line 4
    :pswitch_0
    invoke-direct {p0, p1, v4, v1}, Ldet;->U(Ljava/lang/Object;II)Z

    move-result v3

    if-eqz v3, :cond_2

    mul-int/lit8 v2, v2, 0x35

    .line 5
    invoke-static {p1, v5, v6}, Ldfz;->h(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    .line 6
    invoke-virtual {v3}, Ljava/lang/Object;->hashCode()I

    move-result v3

    add-int/2addr v2, v3

    goto/16 :goto_3

    .line 7
    :pswitch_1
    invoke-direct {p0, p1, v4, v1}, Ldet;->U(Ljava/lang/Object;II)Z

    move-result v3

    if-eqz v3, :cond_2

    mul-int/lit8 v2, v2, 0x35

    .line 8
    invoke-static {p1, v5, v6}, Ldet;->E(Ljava/lang/Object;J)J

    move-result-wide v3

    invoke-static {v3, v4}, Ldds;->c(J)I

    move-result v3

    add-int/2addr v2, v3

    goto/16 :goto_3

    .line 9
    :pswitch_2
    invoke-direct {p0, p1, v4, v1}, Ldet;->U(Ljava/lang/Object;II)Z

    move-result v3

    if-eqz v3, :cond_2

    mul-int/lit8 v2, v2, 0x35

    .line 10
    invoke-static {p1, v5, v6}, Ldet;->t(Ljava/lang/Object;J)I

    move-result v3

    add-int/2addr v2, v3

    goto/16 :goto_3

    .line 11
    :pswitch_3
    invoke-direct {p0, p1, v4, v1}, Ldet;->U(Ljava/lang/Object;II)Z

    move-result v3

    if-eqz v3, :cond_2

    mul-int/lit8 v2, v2, 0x35

    .line 12
    invoke-static {p1, v5, v6}, Ldet;->E(Ljava/lang/Object;J)J

    move-result-wide v3

    invoke-static {v3, v4}, Ldds;->c(J)I

    move-result v3

    add-int/2addr v2, v3

    goto/16 :goto_3

    .line 13
    :pswitch_4
    invoke-direct {p0, p1, v4, v1}, Ldet;->U(Ljava/lang/Object;II)Z

    move-result v3

    if-eqz v3, :cond_2

    mul-int/lit8 v2, v2, 0x35

    .line 14
    invoke-static {p1, v5, v6}, Ldet;->t(Ljava/lang/Object;J)I

    move-result v3

    add-int/2addr v2, v3

    goto/16 :goto_3

    .line 15
    :pswitch_5
    invoke-direct {p0, p1, v4, v1}, Ldet;->U(Ljava/lang/Object;II)Z

    move-result v3

    if-eqz v3, :cond_2

    mul-int/lit8 v2, v2, 0x35

    .line 16
    invoke-static {p1, v5, v6}, Ldet;->t(Ljava/lang/Object;J)I

    move-result v3

    add-int/2addr v2, v3

    goto/16 :goto_3

    .line 17
    :pswitch_6
    invoke-direct {p0, p1, v4, v1}, Ldet;->U(Ljava/lang/Object;II)Z

    move-result v3

    if-eqz v3, :cond_2

    mul-int/lit8 v2, v2, 0x35

    .line 18
    invoke-static {p1, v5, v6}, Ldet;->t(Ljava/lang/Object;J)I

    move-result v3

    add-int/2addr v2, v3

    goto/16 :goto_3

    .line 19
    :pswitch_7
    invoke-direct {p0, p1, v4, v1}, Ldet;->U(Ljava/lang/Object;II)Z

    move-result v3

    if-eqz v3, :cond_2

    mul-int/lit8 v2, v2, 0x35

    .line 20
    invoke-static {p1, v5, v6}, Ldfz;->h(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->hashCode()I

    move-result v3

    add-int/2addr v2, v3

    goto/16 :goto_3

    .line 21
    :pswitch_8
    invoke-direct {p0, p1, v4, v1}, Ldet;->U(Ljava/lang/Object;II)Z

    move-result v3

    if-eqz v3, :cond_2

    mul-int/lit8 v2, v2, 0x35

    .line 22
    invoke-static {p1, v5, v6}, Ldfz;->h(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    .line 23
    invoke-virtual {v3}, Ljava/lang/Object;->hashCode()I

    move-result v3

    add-int/2addr v2, v3

    goto/16 :goto_3

    .line 24
    :pswitch_9
    invoke-direct {p0, p1, v4, v1}, Ldet;->U(Ljava/lang/Object;II)Z

    move-result v3

    if-eqz v3, :cond_2

    mul-int/lit8 v2, v2, 0x35

    .line 25
    invoke-static {p1, v5, v6}, Ldfz;->h(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v3

    add-int/2addr v2, v3

    goto/16 :goto_3

    .line 26
    :pswitch_a
    invoke-direct {p0, p1, v4, v1}, Ldet;->U(Ljava/lang/Object;II)Z

    move-result v3

    if-eqz v3, :cond_2

    mul-int/lit8 v2, v2, 0x35

    .line 27
    invoke-static {p1, v5, v6}, Ldet;->V(Ljava/lang/Object;J)Z

    move-result v3

    invoke-static {v3}, Ldds;->a(Z)I

    move-result v3

    add-int/2addr v2, v3

    goto/16 :goto_3

    .line 28
    :pswitch_b
    invoke-direct {p0, p1, v4, v1}, Ldet;->U(Ljava/lang/Object;II)Z

    move-result v3

    if-eqz v3, :cond_2

    mul-int/lit8 v2, v2, 0x35

    .line 29
    invoke-static {p1, v5, v6}, Ldet;->t(Ljava/lang/Object;J)I

    move-result v3

    add-int/2addr v2, v3

    goto/16 :goto_3

    .line 30
    :pswitch_c
    invoke-direct {p0, p1, v4, v1}, Ldet;->U(Ljava/lang/Object;II)Z

    move-result v3

    if-eqz v3, :cond_2

    mul-int/lit8 v2, v2, 0x35

    .line 31
    invoke-static {p1, v5, v6}, Ldet;->E(Ljava/lang/Object;J)J

    move-result-wide v3

    invoke-static {v3, v4}, Ldds;->c(J)I

    move-result v3

    add-int/2addr v2, v3

    goto/16 :goto_3

    .line 32
    :pswitch_d
    invoke-direct {p0, p1, v4, v1}, Ldet;->U(Ljava/lang/Object;II)Z

    move-result v3

    if-eqz v3, :cond_2

    mul-int/lit8 v2, v2, 0x35

    .line 33
    invoke-static {p1, v5, v6}, Ldet;->t(Ljava/lang/Object;J)I

    move-result v3

    add-int/2addr v2, v3

    goto/16 :goto_3

    .line 34
    :pswitch_e
    invoke-direct {p0, p1, v4, v1}, Ldet;->U(Ljava/lang/Object;II)Z

    move-result v3

    if-eqz v3, :cond_2

    mul-int/lit8 v2, v2, 0x35

    .line 35
    invoke-static {p1, v5, v6}, Ldet;->E(Ljava/lang/Object;J)J

    move-result-wide v3

    invoke-static {v3, v4}, Ldds;->c(J)I

    move-result v3

    add-int/2addr v2, v3

    goto/16 :goto_3

    .line 36
    :pswitch_f
    invoke-direct {p0, p1, v4, v1}, Ldet;->U(Ljava/lang/Object;II)Z

    move-result v3

    if-eqz v3, :cond_2

    mul-int/lit8 v2, v2, 0x35

    .line 37
    invoke-static {p1, v5, v6}, Ldet;->E(Ljava/lang/Object;J)J

    move-result-wide v3

    invoke-static {v3, v4}, Ldds;->c(J)I

    move-result v3

    add-int/2addr v2, v3

    goto/16 :goto_3

    .line 38
    :pswitch_10
    invoke-direct {p0, p1, v4, v1}, Ldet;->U(Ljava/lang/Object;II)Z

    move-result v3

    if-eqz v3, :cond_2

    mul-int/lit8 v2, v2, 0x35

    .line 39
    invoke-static {p1, v5, v6}, Ldet;->p(Ljava/lang/Object;J)F

    move-result v3

    invoke-static {v3}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v3

    add-int/2addr v2, v3

    goto/16 :goto_3

    .line 40
    :pswitch_11
    invoke-direct {p0, p1, v4, v1}, Ldet;->U(Ljava/lang/Object;II)Z

    move-result v3

    if-eqz v3, :cond_2

    mul-int/lit8 v2, v2, 0x35

    .line 41
    invoke-static {p1, v5, v6}, Ldet;->o(Ljava/lang/Object;J)D

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v3

    invoke-static {v3, v4}, Ldds;->c(J)I

    move-result v3

    add-int/2addr v2, v3

    goto/16 :goto_3

    :pswitch_12
    mul-int/lit8 v2, v2, 0x35

    .line 42
    invoke-static {p1, v5, v6}, Ldfz;->h(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->hashCode()I

    move-result v3

    add-int/2addr v2, v3

    goto/16 :goto_3

    :pswitch_13
    mul-int/lit8 v2, v2, 0x35

    .line 43
    invoke-static {p1, v5, v6}, Ldfz;->h(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->hashCode()I

    move-result v3

    add-int/2addr v2, v3

    goto/16 :goto_3

    .line 44
    :pswitch_14
    invoke-static {p1, v5, v6}, Ldfz;->h(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 45
    invoke-virtual {v3}, Ljava/lang/Object;->hashCode()I

    move-result v7

    goto :goto_1

    :cond_0
    nop

    :goto_1
    mul-int/lit8 v2, v2, 0x35

    add-int/2addr v2, v7

    goto/16 :goto_3

    :pswitch_15
    mul-int/lit8 v2, v2, 0x35

    .line 46
    invoke-static {p1, v5, v6}, Ldfz;->f(Ljava/lang/Object;J)J

    move-result-wide v3

    invoke-static {v3, v4}, Ldds;->c(J)I

    move-result v3

    add-int/2addr v2, v3

    goto/16 :goto_3

    :pswitch_16
    mul-int/lit8 v2, v2, 0x35

    .line 47
    invoke-static {p1, v5, v6}, Ldfz;->d(Ljava/lang/Object;J)I

    move-result v3

    add-int/2addr v2, v3

    goto/16 :goto_3

    :pswitch_17
    mul-int/lit8 v2, v2, 0x35

    .line 48
    invoke-static {p1, v5, v6}, Ldfz;->f(Ljava/lang/Object;J)J

    move-result-wide v3

    invoke-static {v3, v4}, Ldds;->c(J)I

    move-result v3

    add-int/2addr v2, v3

    goto/16 :goto_3

    :pswitch_18
    mul-int/lit8 v2, v2, 0x35

    .line 49
    invoke-static {p1, v5, v6}, Ldfz;->d(Ljava/lang/Object;J)I

    move-result v3

    add-int/2addr v2, v3

    goto/16 :goto_3

    :pswitch_19
    mul-int/lit8 v2, v2, 0x35

    .line 50
    invoke-static {p1, v5, v6}, Ldfz;->d(Ljava/lang/Object;J)I

    move-result v3

    add-int/2addr v2, v3

    goto/16 :goto_3

    :pswitch_1a
    mul-int/lit8 v2, v2, 0x35

    .line 51
    invoke-static {p1, v5, v6}, Ldfz;->d(Ljava/lang/Object;J)I

    move-result v3

    add-int/2addr v2, v3

    goto/16 :goto_3

    :pswitch_1b
    mul-int/lit8 v2, v2, 0x35

    .line 52
    invoke-static {p1, v5, v6}, Ldfz;->h(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->hashCode()I

    move-result v3

    add-int/2addr v2, v3

    goto/16 :goto_3

    .line 53
    :pswitch_1c
    invoke-static {p1, v5, v6}, Ldfz;->h(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_1

    .line 54
    invoke-virtual {v3}, Ljava/lang/Object;->hashCode()I

    move-result v7

    goto :goto_2

    :cond_1
    nop

    :goto_2
    mul-int/lit8 v2, v2, 0x35

    add-int/2addr v2, v7

    goto :goto_3

    :pswitch_1d
    mul-int/lit8 v2, v2, 0x35

    .line 55
    invoke-static {p1, v5, v6}, Ldfz;->h(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v3

    add-int/2addr v2, v3

    goto :goto_3

    :pswitch_1e
    mul-int/lit8 v2, v2, 0x35

    .line 56
    invoke-static {p1, v5, v6}, Ldfz;->w(Ljava/lang/Object;J)Z

    move-result v3

    invoke-static {v3}, Ldds;->a(Z)I

    move-result v3

    add-int/2addr v2, v3

    goto :goto_3

    :pswitch_1f
    mul-int/lit8 v2, v2, 0x35

    .line 57
    invoke-static {p1, v5, v6}, Ldfz;->d(Ljava/lang/Object;J)I

    move-result v3

    add-int/2addr v2, v3

    goto :goto_3

    :pswitch_20
    mul-int/lit8 v2, v2, 0x35

    .line 58
    invoke-static {p1, v5, v6}, Ldfz;->f(Ljava/lang/Object;J)J

    move-result-wide v3

    invoke-static {v3, v4}, Ldds;->c(J)I

    move-result v3

    add-int/2addr v2, v3

    goto :goto_3

    :pswitch_21
    mul-int/lit8 v2, v2, 0x35

    .line 59
    invoke-static {p1, v5, v6}, Ldfz;->d(Ljava/lang/Object;J)I

    move-result v3

    add-int/2addr v2, v3

    goto :goto_3

    :pswitch_22
    mul-int/lit8 v2, v2, 0x35

    .line 60
    invoke-static {p1, v5, v6}, Ldfz;->f(Ljava/lang/Object;J)J

    move-result-wide v3

    invoke-static {v3, v4}, Ldds;->c(J)I

    move-result v3

    add-int/2addr v2, v3

    goto :goto_3

    :pswitch_23
    mul-int/lit8 v2, v2, 0x35

    .line 61
    invoke-static {p1, v5, v6}, Ldfz;->f(Ljava/lang/Object;J)J

    move-result-wide v3

    invoke-static {v3, v4}, Ldds;->c(J)I

    move-result v3

    add-int/2addr v2, v3

    goto :goto_3

    :pswitch_24
    mul-int/lit8 v2, v2, 0x35

    .line 62
    invoke-static {p1, v5, v6}, Ldfz;->c(Ljava/lang/Object;J)F

    move-result v3

    invoke-static {v3}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v3

    add-int/2addr v2, v3

    goto :goto_3

    :pswitch_25
    mul-int/lit8 v2, v2, 0x35

    .line 63
    invoke-static {p1, v5, v6}, Ldfz;->b(Ljava/lang/Object;J)D

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v3

    .line 64
    invoke-static {v3, v4}, Ldds;->c(J)I

    move-result v3

    add-int/2addr v2, v3

    .line 3
    :cond_2
    :goto_3
    add-int/lit8 v1, v1, 0x3

    goto/16 :goto_0

    .line 64
    :cond_3
    mul-int/lit8 v2, v2, 0x35

    .line 65
    invoke-static {p1}, Lev;->M(Ljava/lang/Object;)Ldfr;

    move-result-object v0

    .line 66
    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    add-int/2addr v2, v0

    iget-boolean v0, p0, Ldet;->h:Z

    if-eqz v0, :cond_4

    mul-int/lit8 v2, v2, 0x35

    .line 67
    invoke-static {p1}, Lhl;->o(Ljava/lang/Object;)Lddb;

    move-result-object p1

    invoke-virtual {p1}, Lddb;->hashCode()I

    move-result p1

    add-int/2addr v2, p1

    :cond_4
    return v2

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_25
        :pswitch_24
        :pswitch_23
        :pswitch_22
        :pswitch_21
        :pswitch_20
        :pswitch_1f
        :pswitch_1e
        :pswitch_1d
        :pswitch_1c
        :pswitch_1b
        :pswitch_1a
        :pswitch_19
        :pswitch_18
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_12
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

.method public final c(Ljava/lang/Object;[BIIILdca;)I
    .locals 30

    .line 1
    move-object/from16 v15, p0

    move-object/from16 v14, p1

    move-object/from16 v12, p2

    move/from16 v13, p4

    move/from16 v11, p5

    move-object/from16 v9, p6

    sget-object v10, Ldet;->b:Lsun/misc/Unsafe;

    const/16 v16, 0x0

    move/from16 v0, p3

    const/4 v1, 0x0

    const/4 v2, -0x1

    const/4 v3, 0x0

    const/4 v5, 0x0

    const v6, 0xfffff

    :goto_0
    const/16 v17, 0x0

    if-ge v0, v13, :cond_2b

    add-int/lit8 v1, v0, 0x1

    aget-byte v0, v12, v0

    if-gez v0, :cond_0

    .line 2
    invoke-static {v0, v12, v1, v9}, Lhl;->G(I[BILdca;)I

    move-result v0

    iget v1, v9, Ldca;->a:I

    move v4, v1

    move v1, v0

    goto :goto_1

    .line 4
    :cond_0
    move v4, v0

    .line 2
    :goto_1
    ushr-int/lit8 v0, v4, 0x3

    and-int/lit8 v7, v4, 0x7

    const/4 v8, 0x3

    if-le v0, v2, :cond_1

    div-int/2addr v3, v8

    .line 3
    invoke-direct {v15, v0, v3}, Ldet;->y(II)I

    move-result v2

    goto :goto_2

    .line 4
    :cond_1
    invoke-direct {v15, v0}, Ldet;->x(I)I

    move-result v2

    .line 3
    :goto_2
    const-wide/16 v20, 0x0

    const/4 v8, -0x1

    if-ne v2, v8, :cond_2

    move/from16 v24, v0

    move v2, v1

    move/from16 v25, v4

    move/from16 v22, v5

    move-object/from16 v29, v10

    const/16 v18, 0x0

    :goto_3
    const/16 v19, -0x1

    const/16 v23, 0x1

    goto/16 :goto_f

    .line 59
    :cond_2
    iget-object v8, v15, Ldet;->c:[I

    add-int/lit8 v22, v2, 0x1

    .line 5
    aget v8, v8, v22

    invoke-static {v8}, Ldet;->B(I)I

    move-result v3

    move/from16 v24, v0

    move/from16 v23, v1

    invoke-static {v8}, Ldet;->D(I)J

    move-result-wide v0

    move-wide/from16 v25, v0

    const/16 v0, 0x11

    if-gt v3, v0, :cond_19

    iget-object v0, v15, Ldet;->c:[I

    add-int/lit8 v27, v2, 0x2

    .line 6
    aget v0, v0, v27

    ushr-int/lit8 v27, v0, 0x14

    const/16 v22, 0x1

    shl-int v27, v22, v27

    const v11, 0xfffff

    and-int/2addr v0, v11

    if-eq v0, v6, :cond_4

    if-eq v6, v11, :cond_3

    move/from16 v18, v2

    int-to-long v1, v6

    .line 7
    invoke-virtual {v10, v14, v1, v2, v5}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    goto :goto_4

    .line 6
    :cond_3
    move/from16 v18, v2

    .line 7
    :goto_4
    int-to-long v1, v0

    .line 8
    invoke-virtual {v10, v14, v1, v2}, Lsun/misc/Unsafe;->getInt(Ljava/lang/Object;J)I

    move-result v5

    move/from16 v28, v0

    move v6, v5

    goto :goto_5

    .line 45
    :cond_4
    move/from16 v18, v2

    move/from16 v28, v6

    move v6, v5

    .line 8
    :goto_5
    const/4 v0, 0x5

    packed-switch v3, :pswitch_data_0

    move v11, v4

    move/from16 v8, v18

    move/from16 v4, v23

    move/from16 v13, v24

    move-wide/from16 v2, v25

    const/4 v1, 0x1

    const/4 v0, 0x3

    if-ne v7, v0, :cond_18

    .line 9
    invoke-direct {v15, v8}, Ldet;->G(I)Ldfg;

    move-result-object v0

    shl-int/lit8 v1, v13, 0x3

    or-int/lit8 v5, v1, 0x4

    .line 10
    move-object/from16 v1, p2

    move/from16 v24, v13

    move-wide v12, v2

    move v2, v4

    move/from16 v3, p4

    move v4, v5

    move-object/from16 v5, p6

    invoke-static/range {v0 .. v5}, Lhl;->y(Ldfg;[BIIILdca;)I

    move-result v0

    and-int v1, v6, v27

    if-nez v1, :cond_17

    iget-object v1, v9, Ldca;->c:Ljava/lang/Object;

    .line 11
    invoke-virtual {v10, v14, v12, v13, v1}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    goto/16 :goto_a

    .line 46
    :pswitch_0
    if-nez v7, :cond_5

    .line 15
    move/from16 v1, v23

    invoke-static {v12, v1, v9}, Lhl;->I([BILdca;)I

    move-result v7

    iget-wide v0, v9, Ldca;->b:J

    .line 16
    invoke-static {v0, v1}, Ldcp;->G(J)J

    move-result-wide v20

    .line 17
    move/from16 v8, v24

    move-wide/from16 v2, v25

    move-object v0, v10

    move-object/from16 v1, p1

    move/from16 v5, v18

    move v11, v4

    move v8, v5

    move-wide/from16 v4, v20

    invoke-virtual/range {v0 .. v5}, Lsun/misc/Unsafe;->putLong(Ljava/lang/Object;JJ)V

    or-int v5, v6, v27

    move v0, v7

    move v3, v8

    move v1, v11

    move/from16 v2, v24

    move/from16 v6, v28

    move/from16 v11, p5

    goto/16 :goto_0

    :cond_5
    move v11, v4

    move/from16 v8, v18

    move/from16 v1, v23

    move v4, v1

    const/4 v1, 0x1

    goto/16 :goto_b

    :pswitch_1
    move v11, v4

    move/from16 v8, v18

    move/from16 v1, v23

    move-wide/from16 v2, v25

    if-nez v7, :cond_6

    .line 18
    invoke-static {v12, v1, v9}, Lhl;->F([BILdca;)I

    move-result v0

    iget v1, v9, Ldca;->a:I

    .line 19
    invoke-static {v1}, Ldcp;->F(I)I

    move-result v1

    .line 20
    invoke-virtual {v10, v14, v2, v3, v1}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    or-int v5, v6, v27

    move v3, v8

    move v1, v11

    move/from16 v2, v24

    move/from16 v6, v28

    move/from16 v11, p5

    goto/16 :goto_0

    :cond_6
    move v4, v1

    const/4 v1, 0x1

    goto/16 :goto_b

    :pswitch_2
    move v11, v4

    move/from16 v8, v18

    move/from16 v1, v23

    move-wide/from16 v2, v25

    if-nez v7, :cond_9

    .line 21
    invoke-static {v12, v1, v9}, Lhl;->F([BILdca;)I

    move-result v0

    iget v1, v9, Ldca;->a:I

    .line 22
    invoke-direct {v15, v8}, Ldet;->F(I)Lddo;

    move-result-object v4

    if-eqz v4, :cond_8

    .line 23
    invoke-interface {v4, v1}, Lddo;->a(I)Z

    move-result v4

    if-eqz v4, :cond_7

    goto :goto_6

    .line 25
    :cond_7
    invoke-static/range {p1 .. p1}, Ldet;->d(Ljava/lang/Object;)Ldfr;

    move-result-object v2

    int-to-long v3, v1

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v2, v11, v1}, Ldfr;->d(ILjava/lang/Object;)V

    move v5, v6

    move v3, v8

    move v1, v11

    move/from16 v2, v24

    move/from16 v6, v28

    move/from16 v11, p5

    goto/16 :goto_0

    .line 24
    :cond_8
    :goto_6
    invoke-virtual {v10, v14, v2, v3, v1}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    or-int v5, v6, v27

    move v3, v8

    move v1, v11

    move/from16 v2, v24

    move/from16 v6, v28

    move/from16 v11, p5

    goto/16 :goto_0

    .line 25
    :cond_9
    move v4, v1

    const/4 v1, 0x1

    goto/16 :goto_b

    :pswitch_3
    move v11, v4

    move/from16 v8, v18

    move/from16 v1, v23

    move-wide/from16 v2, v25

    const/4 v0, 0x2

    if-ne v7, v0, :cond_a

    .line 26
    invoke-static {v12, v1, v9}, Lhl;->w([BILdca;)I

    move-result v0

    iget-object v1, v9, Ldca;->c:Ljava/lang/Object;

    .line 27
    invoke-virtual {v10, v14, v2, v3, v1}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    or-int v5, v6, v27

    move v3, v8

    move v1, v11

    move/from16 v2, v24

    move/from16 v6, v28

    move/from16 v11, p5

    goto/16 :goto_0

    :cond_a
    move v4, v1

    const/4 v1, 0x1

    goto/16 :goto_b

    :pswitch_4
    move v11, v4

    move/from16 v8, v18

    move/from16 v1, v23

    move-wide/from16 v2, v25

    const/4 v0, 0x2

    if-ne v7, v0, :cond_c

    .line 28
    invoke-direct {v15, v8}, Ldet;->G(I)Ldfg;

    move-result-object v0

    .line 29
    invoke-static {v0, v12, v1, v13, v9}, Lhl;->z(Ldfg;[BIILdca;)I

    move-result v0

    and-int v1, v6, v27

    if-nez v1, :cond_b

    iget-object v1, v9, Ldca;->c:Ljava/lang/Object;

    .line 30
    invoke-virtual {v10, v14, v2, v3, v1}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    goto :goto_7

    .line 31
    :cond_b
    invoke-virtual {v10, v14, v2, v3}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v1

    iget-object v4, v9, Ldca;->c:Ljava/lang/Object;

    .line 32
    invoke-static {v1, v4}, Ldds;->e(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 33
    invoke-virtual {v10, v14, v2, v3, v1}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 30
    :goto_7
    or-int v5, v6, v27

    move v3, v8

    move v1, v11

    move/from16 v2, v24

    move/from16 v6, v28

    move/from16 v11, p5

    goto/16 :goto_0

    .line 33
    :cond_c
    move v4, v1

    const/4 v1, 0x1

    goto/16 :goto_b

    :pswitch_5
    move v11, v4

    move v0, v8

    move/from16 v8, v18

    move/from16 v1, v23

    move/from16 v4, v24

    move-wide/from16 v2, v25

    const/4 v5, 0x2

    if-ne v7, v5, :cond_e

    const/high16 v5, 0x20000000

    and-int/2addr v0, v5

    if-nez v0, :cond_d

    .line 34
    invoke-static {v12, v1, v9}, Lhl;->C([BILdca;)I

    move-result v0

    goto :goto_8

    .line 35
    :cond_d
    invoke-static {v12, v1, v9}, Lhl;->D([BILdca;)I

    move-result v0

    .line 34
    :goto_8
    iget-object v1, v9, Ldca;->c:Ljava/lang/Object;

    .line 36
    invoke-virtual {v10, v14, v2, v3, v1}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    or-int v5, v6, v27

    move v2, v4

    move v3, v8

    move v1, v11

    move/from16 v6, v28

    move/from16 v11, p5

    goto/16 :goto_0

    .line 35
    :cond_e
    move/from16 v24, v4

    move v4, v1

    const/4 v1, 0x1

    goto/16 :goto_b

    :pswitch_6
    move v11, v4

    move/from16 v8, v18

    move/from16 v1, v23

    move/from16 v4, v24

    move-wide/from16 v2, v25

    if-nez v7, :cond_10

    .line 37
    invoke-static {v12, v1, v9}, Lhl;->I([BILdca;)I

    move-result v0

    move/from16 p3, v0

    iget-wide v0, v9, Ldca;->b:J

    cmp-long v5, v0, v20

    if-eqz v5, :cond_f

    const/4 v0, 0x1

    goto :goto_9

    .line 38
    :cond_f
    const/4 v0, 0x0

    :goto_9
    invoke-static {v14, v2, v3, v0}, Ldfz;->m(Ljava/lang/Object;JZ)V

    or-int v5, v6, v27

    move/from16 v0, p3

    move v2, v4

    move v3, v8

    move v1, v11

    move/from16 v6, v28

    move/from16 v11, p5

    goto/16 :goto_0

    :cond_10
    move/from16 v24, v4

    move v4, v1

    const/4 v1, 0x1

    goto/16 :goto_b

    :pswitch_7
    move v11, v4

    move/from16 v8, v18

    move/from16 v1, v23

    move/from16 v4, v24

    move-wide/from16 v2, v25

    if-ne v7, v0, :cond_11

    .line 39
    invoke-static {v12, v1}, Lhl;->x([BI)I

    move-result v0

    invoke-virtual {v10, v14, v2, v3, v0}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    add-int/lit8 v0, v1, 0x4

    or-int v5, v6, v27

    move v2, v4

    move v3, v8

    move v1, v11

    move/from16 v6, v28

    move/from16 v11, p5

    goto/16 :goto_0

    :cond_11
    move/from16 v24, v4

    move v4, v1

    const/4 v1, 0x1

    goto/16 :goto_b

    :pswitch_8
    move v11, v4

    move/from16 v8, v18

    move/from16 v1, v23

    move/from16 v4, v24

    move-wide/from16 v2, v25

    const/4 v0, 0x1

    if-ne v7, v0, :cond_12

    .line 40
    invoke-static {v12, v1}, Lhl;->K([BI)J

    move-result-wide v20

    move-object v0, v10

    move v7, v1

    move-object/from16 v1, p1

    move v13, v4

    move-wide/from16 v4, v20

    invoke-virtual/range {v0 .. v5}, Lsun/misc/Unsafe;->putLong(Ljava/lang/Object;JJ)V

    add-int/lit8 v0, v7, 0x8

    or-int v5, v6, v27

    move v3, v8

    move v1, v11

    move v2, v13

    move/from16 v6, v28

    move/from16 v13, p4

    move/from16 v11, p5

    goto/16 :goto_0

    :cond_12
    move v7, v1

    move v13, v4

    move v4, v7

    move/from16 v24, v13

    const/4 v1, 0x1

    goto/16 :goto_b

    :pswitch_9
    move v11, v4

    move/from16 v8, v18

    move/from16 v4, v23

    move/from16 v13, v24

    move-wide/from16 v2, v25

    if-nez v7, :cond_13

    .line 41
    invoke-static {v12, v4, v9}, Lhl;->F([BILdca;)I

    move-result v0

    iget v1, v9, Ldca;->a:I

    .line 42
    invoke-virtual {v10, v14, v2, v3, v1}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    or-int v5, v6, v27

    move v3, v8

    move v1, v11

    move v2, v13

    move/from16 v6, v28

    move/from16 v13, p4

    move/from16 v11, p5

    goto/16 :goto_0

    :cond_13
    move/from16 v24, v13

    const/4 v1, 0x1

    goto/16 :goto_b

    :pswitch_a
    move v11, v4

    move/from16 v8, v18

    move/from16 v4, v23

    move/from16 v13, v24

    move-wide/from16 v2, v25

    if-nez v7, :cond_14

    .line 43
    invoke-static {v12, v4, v9}, Lhl;->I([BILdca;)I

    move-result v7

    iget-wide v4, v9, Ldca;->b:J

    .line 44
    move-object v0, v10

    move-object/from16 v1, p1

    invoke-virtual/range {v0 .. v5}, Lsun/misc/Unsafe;->putLong(Ljava/lang/Object;JJ)V

    or-int v5, v6, v27

    move v0, v7

    move v3, v8

    move v1, v11

    move v2, v13

    move/from16 v6, v28

    move/from16 v13, p4

    move/from16 v11, p5

    goto/16 :goto_0

    :cond_14
    move/from16 v24, v13

    const/4 v1, 0x1

    goto/16 :goto_b

    :pswitch_b
    move v11, v4

    move/from16 v8, v18

    move/from16 v4, v23

    move/from16 v13, v24

    move-wide/from16 v2, v25

    if-ne v7, v0, :cond_15

    .line 45
    invoke-static {v12, v4}, Lhl;->v([BI)F

    move-result v0

    invoke-static {v14, v2, v3, v0}, Ldfz;->r(Ljava/lang/Object;JF)V

    add-int/lit8 v0, v4, 0x4

    or-int v5, v6, v27

    move v3, v8

    move v1, v11

    move v2, v13

    move/from16 v6, v28

    move/from16 v13, p4

    move/from16 v11, p5

    goto/16 :goto_0

    :cond_15
    move/from16 v24, v13

    const/4 v1, 0x1

    goto :goto_b

    .line 14
    :pswitch_c
    move v11, v4

    move/from16 v8, v18

    move/from16 v4, v23

    move/from16 v13, v24

    move-wide/from16 v2, v25

    const/4 v1, 0x1

    if-ne v7, v1, :cond_16

    .line 46
    invoke-static {v12, v4}, Lhl;->u([BI)D

    move-result-wide v0

    invoke-static {v14, v2, v3, v0, v1}, Ldfz;->q(Ljava/lang/Object;JD)V

    add-int/lit8 v0, v4, 0x8

    or-int v5, v6, v27

    move v3, v8

    move v1, v11

    move v2, v13

    move/from16 v6, v28

    move/from16 v13, p4

    move/from16 v11, p5

    goto/16 :goto_0

    :cond_16
    move/from16 v24, v13

    goto :goto_b

    .line 12
    :cond_17
    invoke-virtual {v10, v14, v12, v13}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v1

    iget-object v2, v9, Ldca;->c:Ljava/lang/Object;

    .line 13
    invoke-static {v1, v2}, Ldds;->e(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 14
    invoke-virtual {v10, v14, v12, v13, v1}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 11
    :goto_a
    or-int v5, v6, v27

    move-object/from16 v12, p2

    move/from16 v13, p4

    move v3, v8

    move v1, v11

    move/from16 v2, v24

    move/from16 v6, v28

    move/from16 v11, p5

    goto/16 :goto_0

    .line 14
    :cond_18
    move/from16 v24, v13

    .line 3
    :goto_b
    move v2, v4

    move/from16 v22, v6

    move/from16 v18, v8

    move-object/from16 v29, v10

    move/from16 v25, v11

    move/from16 v6, v28

    goto/16 :goto_3

    .line 45
    :cond_19
    move v11, v4

    move v0, v8

    move/from16 v4, v23

    move-wide/from16 v12, v25

    const/4 v1, 0x1

    move v8, v2

    const/16 v2, 0x1b

    if-ne v3, v2, :cond_1d

    const/4 v0, 0x2

    if-ne v7, v0, :cond_1c

    .line 47
    invoke-virtual {v10, v14, v12, v13}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lddr;

    .line 48
    invoke-interface {v0}, Lddr;->c()Z

    move-result v1

    if-nez v1, :cond_1b

    .line 49
    invoke-interface {v0}, Lddr;->size()I

    move-result v1

    if-nez v1, :cond_1a

    const/16 v1, 0xa

    goto :goto_c

    .line 53
    :cond_1a
    add-int/2addr v1, v1

    .line 50
    :goto_c
    invoke-interface {v0, v1}, Lddr;->d(I)Lddr;

    move-result-object v0

    .line 51
    invoke-virtual {v10, v14, v12, v13, v0}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    move-object v7, v0

    goto :goto_d

    .line 53
    :cond_1b
    move-object v7, v0

    .line 52
    :goto_d
    invoke-direct {v15, v8}, Ldet;->G(I)Ldfg;

    move-result-object v0

    .line 53
    move v1, v11

    move-object/from16 v2, p2

    move v3, v4

    move/from16 v4, p4

    move/from16 v22, v5

    move-object v5, v7

    move/from16 v28, v6

    move-object/from16 v6, p6

    invoke-static/range {v0 .. v6}, Lhl;->A(Ldfg;I[BIILddr;Ldca;)I

    move-result v0

    move-object/from16 v12, p2

    move/from16 v13, p4

    move v3, v8

    move/from16 v5, v22

    move/from16 v2, v24

    move/from16 v6, v28

    move/from16 v11, p5

    goto/16 :goto_0

    :cond_1c
    move/from16 v22, v5

    move/from16 v28, v6

    move v15, v4

    move/from16 v18, v8

    move-object/from16 v29, v10

    move/from16 v25, v11

    const/16 v19, -0x1

    const/16 v23, 0x1

    goto/16 :goto_e

    :cond_1d
    move/from16 v22, v5

    move/from16 v28, v6

    const/16 v2, 0x31

    if-gt v3, v2, :cond_1f

    int-to-long v5, v0

    .line 54
    move-object/from16 v0, p0

    const/16 v23, 0x1

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move/from16 p3, v3

    move v3, v4

    move v15, v4

    move/from16 v4, p4

    move-wide/from16 v25, v5

    move v5, v11

    move/from16 v6, v24

    move/from16 v18, v8

    const/16 v19, -0x1

    move-object/from16 v29, v10

    move-wide/from16 v9, v25

    move/from16 v25, v11

    move/from16 v11, p3

    move-object/from16 v14, p6

    invoke-direct/range {v0 .. v14}, Ldet;->w(Ljava/lang/Object;[BIIIIIIJIJLdca;)I

    move-result v0

    if-eq v0, v15, :cond_1e

    move-object/from16 v15, p0

    move-object/from16 v14, p1

    move-object/from16 v12, p2

    move/from16 v13, p4

    move/from16 v11, p5

    move-object/from16 v9, p6

    move/from16 v3, v18

    move/from16 v5, v22

    move/from16 v2, v24

    move/from16 v1, v25

    move/from16 v6, v28

    move-object/from16 v10, v29

    goto/16 :goto_0

    :cond_1e
    move v2, v0

    move/from16 v6, v28

    goto/16 :goto_f

    :cond_1f
    move/from16 p3, v3

    move v15, v4

    move/from16 v18, v8

    move-object/from16 v29, v10

    move/from16 v25, v11

    const/16 v19, -0x1

    const/16 v23, 0x1

    const/16 v1, 0x32

    move/from16 v9, p3

    if-ne v9, v1, :cond_22

    const/4 v0, 0x2

    if-ne v7, v0, :cond_21

    .line 55
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move v3, v15

    move/from16 v4, p4

    move/from16 v5, v18

    move-wide v6, v12

    move-object/from16 v8, p6

    invoke-direct/range {v0 .. v8}, Ldet;->u(Ljava/lang/Object;[BIIIJLdca;)I

    move-result v0

    if-eq v0, v15, :cond_20

    move-object/from16 v15, p0

    move-object/from16 v14, p1

    move-object/from16 v12, p2

    move/from16 v13, p4

    move/from16 v11, p5

    move-object/from16 v9, p6

    move/from16 v3, v18

    move/from16 v5, v22

    move/from16 v2, v24

    move/from16 v1, v25

    move/from16 v6, v28

    move-object/from16 v10, v29

    goto/16 :goto_0

    :cond_20
    move v2, v0

    move/from16 v6, v28

    goto :goto_f

    :cond_21
    nop

    .line 3
    :goto_e
    move v2, v15

    move/from16 v6, v28

    goto :goto_f

    .line 56
    :cond_22
    move v8, v0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move v3, v15

    move/from16 v4, p4

    move/from16 v5, v25

    move/from16 v6, v24

    move-wide v10, v12

    move/from16 v12, v18

    move-object/from16 v13, p6

    invoke-direct/range {v0 .. v13}, Ldet;->v(Ljava/lang/Object;[BIIIIIIIJILdca;)I

    move-result v0

    if-eq v0, v15, :cond_23

    move-object/from16 v15, p0

    move-object/from16 v14, p1

    move-object/from16 v12, p2

    move/from16 v13, p4

    move/from16 v11, p5

    move-object/from16 v9, p6

    move/from16 v3, v18

    move/from16 v5, v22

    move/from16 v2, v24

    move/from16 v1, v25

    move/from16 v6, v28

    move-object/from16 v10, v29

    goto/16 :goto_0

    :cond_23
    move v2, v0

    move/from16 v6, v28

    .line 3
    :goto_f
    move/from16 v7, p5

    move/from16 v8, v25

    if-ne v8, v7, :cond_24

    if-eqz v7, :cond_24

    move-object/from16 v9, p0

    move-object/from16 v13, p1

    move v0, v2

    move v2, v6

    move v1, v8

    move/from16 v5, v22

    move/from16 v6, p4

    goto/16 :goto_15

    .line 97
    :cond_24
    move-object/from16 v9, p0

    iget-boolean v0, v9, Ldet;->h:Z

    if-eqz v0, :cond_2a

    move-object/from16 v10, p6

    iget-object v0, v10, Ldca;->d:Ldcz;

    .line 57
    invoke-static {}, Ldcz;->a()Ldcz;

    move-result-object v1

    if-eq v0, v1, :cond_29

    iget-object v0, v9, Ldet;->g:Lder;

    iget-object v1, v10, Ldca;->d:Ldcz;

    .line 60
    move/from16 v11, v24

    invoke-virtual {v1, v0, v11}, Ldcz;->c(Lder;I)Ldcx;

    move-result-object v12

    if-nez v12, :cond_25

    .line 61
    invoke-static/range {p1 .. p1}, Ldet;->d(Ljava/lang/Object;)Ldfr;

    move-result-object v4

    .line 62
    move v0, v8

    move-object/from16 v1, p2

    move/from16 v3, p4

    move-object/from16 v5, p6

    invoke-static/range {v0 .. v5}, Lhl;->E(I[BIILdfr;Ldca;)I

    move-result v0

    move-object/from16 v13, p1

    move-object/from16 v15, p2

    move/from16 p3, v6

    move/from16 v6, p4

    goto/16 :goto_14

    .line 63
    :cond_25
    move-object/from16 v13, p1

    move-object v0, v13

    check-cast v0, Lddi;

    invoke-virtual {v0}, Lddi;->c()Lddb;

    .line 64
    iget-object v14, v0, Lddi;->d:Lddb;

    .line 65
    invoke-virtual {v12}, Ldcx;->a()Ldgc;

    move-result-object v0

    sget-object v1, Ldgc;->n:Ldgc;

    if-eq v0, v1, :cond_28

    .line 66
    invoke-virtual {v12}, Ldcx;->a()Ldgc;

    move-result-object v0

    invoke-virtual {v0}, Ldgc;->ordinal()I

    move-result v0

    packed-switch v0, :pswitch_data_1

    move-object/from16 v15, p2

    move/from16 p3, v6

    move/from16 v6, p4

    move-object/from16 v0, v17

    goto/16 :goto_11

    .line 73
    :pswitch_d
    move-object/from16 v15, p2

    invoke-static {v15, v2, v10}, Lhl;->I([BILdca;)I

    move-result v2

    iget-wide v0, v10, Ldca;->b:J

    .line 74
    invoke-static {v0, v1}, Ldcp;->G(J)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v17

    move/from16 p3, v6

    move-object/from16 v0, v17

    move/from16 v6, p4

    goto/16 :goto_11

    .line 75
    :pswitch_e
    move-object/from16 v15, p2

    invoke-static {v15, v2, v10}, Lhl;->F([BILdca;)I

    move-result v2

    iget v0, v10, Ldca;->a:I

    .line 76
    invoke-static {v0}, Ldcp;->F(I)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v17

    move/from16 p3, v6

    move-object/from16 v0, v17

    move/from16 v6, p4

    goto/16 :goto_11

    .line 4
    :pswitch_f
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 100
    const-string v1, "Shouldn\'t reach here."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 72
    :pswitch_10
    move-object/from16 v15, p2

    invoke-static {v15, v2, v10}, Lhl;->w([BILdca;)I

    move-result v2

    iget-object v0, v10, Ldca;->c:Ljava/lang/Object;

    move/from16 p3, v6

    move/from16 v6, p4

    goto/16 :goto_11

    .line 67
    :pswitch_11
    move-object/from16 v15, p2

    sget-object v0, Ldez;->a:Ldez;

    iget-object v1, v12, Ldcx;->c:Lder;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v0, v1}, Ldez;->a(Ljava/lang/Class;)Ldfg;

    move-result-object v0

    .line 68
    move/from16 v5, p4

    invoke-static {v0, v15, v2, v5, v10}, Lhl;->z(Ldfg;[BIILdca;)I

    move-result v2

    iget-object v0, v10, Ldca;->c:Ljava/lang/Object;

    move/from16 p3, v6

    move v6, v5

    goto/16 :goto_11

    .line 69
    :pswitch_12
    move-object/from16 v15, p2

    move/from16 v5, p4

    sget-object v0, Ldez;->a:Ldez;

    iget-object v1, v12, Ldcx;->c:Lder;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v0, v1}, Ldez;->a(Ljava/lang/Class;)Ldfg;

    move-result-object v0

    shl-int/lit8 v1, v11, 0x3

    or-int/lit8 v4, v1, 0x4

    .line 70
    move-object/from16 v1, p2

    move/from16 v3, p4

    move/from16 p3, v6

    move v6, v5

    move-object/from16 v5, p6

    invoke-static/range {v0 .. v5}, Lhl;->y(Ldfg;[BIIILdca;)I

    move-result v2

    iget-object v0, v10, Ldca;->c:Ljava/lang/Object;

    goto/16 :goto_11

    .line 71
    :pswitch_13
    move-object/from16 v15, p2

    move/from16 p3, v6

    move/from16 v6, p4

    invoke-static {v15, v2, v10}, Lhl;->C([BILdca;)I

    move-result v2

    iget-object v0, v10, Ldca;->c:Ljava/lang/Object;

    goto/16 :goto_11

    .line 77
    :pswitch_14
    move-object/from16 v15, p2

    move/from16 p3, v6

    move/from16 v6, p4

    invoke-static {v15, v2, v10}, Lhl;->I([BILdca;)I

    move-result v2

    iget-wide v0, v10, Ldca;->b:J

    cmp-long v3, v0, v20

    if-eqz v3, :cond_26

    const/4 v3, 0x1

    goto :goto_10

    .line 78
    :cond_26
    const/4 v3, 0x0

    :goto_10
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v17

    move-object/from16 v0, v17

    goto/16 :goto_11

    .line 79
    :pswitch_15
    move-object/from16 v15, p2

    move/from16 p3, v6

    move/from16 v6, p4

    invoke-static {v15, v2}, Lhl;->x([BI)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v17

    add-int/lit8 v2, v2, 0x4

    move-object/from16 v0, v17

    goto :goto_11

    .line 80
    :pswitch_16
    move-object/from16 v15, p2

    move/from16 p3, v6

    move/from16 v6, p4

    invoke-static {v15, v2}, Lhl;->K([BI)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v17

    add-int/lit8 v2, v2, 0x8

    move-object/from16 v0, v17

    goto :goto_11

    .line 81
    :pswitch_17
    move-object/from16 v15, p2

    move/from16 p3, v6

    move/from16 v6, p4

    invoke-static {v15, v2, v10}, Lhl;->F([BILdca;)I

    move-result v2

    iget v0, v10, Ldca;->a:I

    .line 82
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v17

    move-object/from16 v0, v17

    goto :goto_11

    .line 83
    :pswitch_18
    move-object/from16 v15, p2

    move/from16 p3, v6

    move/from16 v6, p4

    invoke-static {v15, v2, v10}, Lhl;->I([BILdca;)I

    move-result v2

    iget-wide v0, v10, Ldca;->b:J

    .line 84
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v17

    move-object/from16 v0, v17

    goto :goto_11

    .line 85
    :pswitch_19
    move-object/from16 v15, p2

    move/from16 p3, v6

    move/from16 v6, p4

    invoke-static {v15, v2}, Lhl;->v([BI)F

    move-result v0

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v17

    add-int/lit8 v2, v2, 0x4

    move-object/from16 v0, v17

    goto :goto_11

    .line 86
    :pswitch_1a
    move-object/from16 v15, p2

    move/from16 p3, v6

    move/from16 v6, p4

    invoke-static {v15, v2}, Lhl;->u([BI)D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v17

    add-int/lit8 v2, v2, 0x8

    move-object/from16 v0, v17

    .line 87
    :goto_11
    invoke-virtual {v12}, Ldcx;->b()V

    .line 88
    invoke-virtual {v12}, Ldcx;->a()Ldgc;

    move-result-object v1

    invoke-virtual {v1}, Ldgc;->ordinal()I

    move-result v1

    packed-switch v1, :pswitch_data_2

    goto :goto_12

    :pswitch_1b
    iget-object v1, v12, Ldcx;->d:Lddj;

    .line 89
    invoke-virtual {v14, v1}, Lddb;->k(Lddj;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_27

    .line 90
    invoke-static {v1, v0}, Ldds;->e(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    :cond_27
    :goto_12
    iget-object v1, v12, Ldcx;->d:Lddj;

    .line 91
    invoke-virtual {v14, v1, v0}, Lddb;->l(Lddj;Ljava/lang/Object;)V

    move v0, v2

    goto :goto_14

    .line 98
    :cond_28
    move-object/from16 v15, p2

    invoke-static {v15, v2, v10}, Lhl;->F([BILdca;)I

    .line 99
    throw v17

    .line 57
    :cond_29
    move-object/from16 v13, p1

    move-object/from16 v15, p2

    move/from16 p3, v6

    move/from16 v11, v24

    move/from16 v6, p4

    goto :goto_13

    .line 97
    :cond_2a
    move-object/from16 v13, p1

    move-object/from16 v15, p2

    move-object/from16 v10, p6

    move/from16 p3, v6

    move/from16 v11, v24

    move/from16 v6, p4

    .line 58
    :goto_13
    invoke-static/range {p1 .. p1}, Ldet;->d(Ljava/lang/Object;)Ldfr;

    move-result-object v4

    .line 59
    move v0, v8

    move-object/from16 v1, p2

    move/from16 v3, p4

    move-object/from16 v5, p6

    invoke-static/range {v0 .. v5}, Lhl;->E(I[BIILdfr;Ldca;)I

    move-result v0

    .line 62
    :goto_14
    move v1, v8

    move v2, v11

    move-object v14, v13

    move-object v12, v15

    move/from16 v3, v18

    move/from16 v5, v22

    move v13, v6

    move v11, v7

    move-object v15, v9

    move-object v9, v10

    move-object/from16 v10, v29

    move/from16 v6, p3

    goto/16 :goto_0

    .line 100
    :cond_2b
    move/from16 v22, v5

    move/from16 v28, v6

    move-object/from16 v29, v10

    move v7, v11

    move v6, v13

    move-object v13, v14

    move-object v9, v15

    move/from16 v2, v28

    .line 3
    :goto_15
    const v3, 0xfffff

    if-eq v2, v3, :cond_2c

    int-to-long v2, v2

    .line 92
    move-object/from16 v4, v29

    invoke-virtual {v4, v13, v2, v3, v5}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    :cond_2c
    iget v2, v9, Ldet;->l:I

    move-object/from16 v3, v17

    :goto_16
    iget v4, v9, Ldet;->m:I

    if-ge v2, v4, :cond_2d

    iget-object v4, v9, Ldet;->k:[I

    .line 93
    aget v4, v4, v2

    .line 94
    invoke-direct {v9, v13, v4, v3}, Ldet;->ab(Ljava/lang/Object;ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    add-int/lit8 v2, v2, 0x1

    goto :goto_16

    :cond_2d
    if-eqz v3, :cond_2e

    check-cast v3, Ldfr;

    .line 95
    invoke-static {v13, v3}, Lev;->N(Ljava/lang/Object;Ldfr;)V

    :cond_2e
    if-nez v7, :cond_30

    if-ne v0, v6, :cond_2f

    goto :goto_17

    .line 96
    :cond_2f
    invoke-static {}, Lddu;->g()Lddu;

    move-result-object v0

    throw v0

    :cond_30
    if-gt v0, v6, :cond_31

    if-ne v1, v7, :cond_31

    :goto_17
    return v0

    .line 97
    :cond_31
    invoke-static {}, Lddu;->g()Lddu;

    move-result-object v0

    goto :goto_19

    :goto_18
    throw v0

    :goto_19
    goto :goto_18

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_9
        :pswitch_2
        :pswitch_7
        :pswitch_8
        :pswitch_1
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_1a
        :pswitch_19
        :pswitch_18
        :pswitch_18
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_17
        :pswitch_f
        :pswitch_15
        :pswitch_16
        :pswitch_e
        :pswitch_d
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x9
        :pswitch_1b
        :pswitch_1b
    .end packed-switch
.end method

.method public final e()Ljava/lang/Object;
    .locals 2

    .line 1
    iget-object v0, p0, Ldet;->g:Lder;

    check-cast v0, Lddk;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lddk;->E(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public final f(Ljava/lang/Object;)V
    .locals 5

    .line 1
    iget v0, p0, Ldet;->l:I

    :goto_0
    iget v1, p0, Ldet;->m:I

    if-ge v0, v1, :cond_1

    iget-object v1, p0, Ldet;->k:[I

    aget v1, v1, v0

    invoke-direct {p0, v1}, Ldet;->C(I)I

    move-result v1

    invoke-static {v1}, Ldet;->D(I)J

    move-result-wide v1

    .line 2
    invoke-static {p1, v1, v2}, Ldfz;->h(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 3
    move-object v4, v3

    check-cast v4, Ldem;

    invoke-virtual {v4}, Ldem;->c()V

    .line 4
    invoke-static {p1, v1, v2, v3}, Ldfz;->u(Ljava/lang/Object;JLjava/lang/Object;)V

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    iget-object v0, p0, Ldet;->k:[I

    .line 5
    array-length v0, v0

    :goto_1
    if-ge v1, v0, :cond_2

    iget-object v2, p0, Ldet;->n:Ldef;

    iget-object v3, p0, Ldet;->k:[I

    .line 6
    aget v3, v3, v1

    int-to-long v3, v3

    invoke-virtual {v2, p1, v3, v4}, Ldef;->c(Ljava/lang/Object;J)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 7
    :cond_2
    invoke-static {p1}, Lev;->P(Ljava/lang/Object;)V

    iget-boolean v0, p0, Ldet;->h:Z

    if-eqz v0, :cond_3

    .line 8
    invoke-static {p1}, Lhl;->s(Ljava/lang/Object;)V

    :cond_3
    return-void
.end method

.method public final g(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 6

    .line 1
    if-eqz p2, :cond_3

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Ldet;->c:[I

    array-length v1, v1

    if-ge v0, v1, :cond_1

    .line 2
    invoke-direct {p0, v0}, Ldet;->C(I)I

    move-result v1

    invoke-static {v1}, Ldet;->D(I)J

    move-result-wide v2

    .line 3
    invoke-direct {p0, v0}, Ldet;->s(I)I

    move-result v4

    invoke-static {v1}, Ldet;->B(I)I

    move-result v1

    packed-switch v1, :pswitch_data_0

    goto/16 :goto_1

    .line 4
    :pswitch_0
    invoke-direct {p0, p1, p2, v0}, Ldet;->L(Ljava/lang/Object;Ljava/lang/Object;I)V

    goto/16 :goto_1

    .line 5
    :pswitch_1
    invoke-direct {p0, p2, v4, v0}, Ldet;->U(Ljava/lang/Object;II)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 6
    invoke-static {p2, v2, v3}, Ldfz;->h(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v1

    invoke-static {p1, v2, v3, v1}, Ldfz;->u(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 7
    invoke-direct {p0, p1, v4, v0}, Ldet;->O(Ljava/lang/Object;II)V

    goto/16 :goto_1

    .line 8
    :pswitch_2
    invoke-direct {p0, p1, p2, v0}, Ldet;->L(Ljava/lang/Object;Ljava/lang/Object;I)V

    goto/16 :goto_1

    .line 9
    :pswitch_3
    invoke-direct {p0, p2, v4, v0}, Ldet;->U(Ljava/lang/Object;II)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 10
    invoke-static {p2, v2, v3}, Ldfz;->h(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v1

    invoke-static {p1, v2, v3, v1}, Ldfz;->u(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 11
    invoke-direct {p0, p1, v4, v0}, Ldet;->O(Ljava/lang/Object;II)V

    goto/16 :goto_1

    .line 12
    :pswitch_4
    invoke-static {p1, p2, v2, v3}, Ldfh;->U(Ljava/lang/Object;Ljava/lang/Object;J)V

    goto/16 :goto_1

    :pswitch_5
    iget-object v1, p0, Ldet;->n:Ldef;

    .line 13
    invoke-virtual {v1, p1, p2, v2, v3}, Ldef;->d(Ljava/lang/Object;Ljava/lang/Object;J)V

    goto/16 :goto_1

    .line 14
    :pswitch_6
    invoke-direct {p0, p1, p2, v0}, Ldet;->K(Ljava/lang/Object;Ljava/lang/Object;I)V

    goto/16 :goto_1

    .line 15
    :pswitch_7
    invoke-direct {p0, p2, v0}, Ldet;->R(Ljava/lang/Object;I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 16
    invoke-static {p2, v2, v3}, Ldfz;->f(Ljava/lang/Object;J)J

    move-result-wide v4

    invoke-static {p1, v2, v3, v4, v5}, Ldfz;->t(Ljava/lang/Object;JJ)V

    .line 17
    invoke-direct {p0, p1, v0}, Ldet;->N(Ljava/lang/Object;I)V

    goto/16 :goto_1

    .line 18
    :pswitch_8
    invoke-direct {p0, p2, v0}, Ldet;->R(Ljava/lang/Object;I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 19
    invoke-static {p2, v2, v3}, Ldfz;->d(Ljava/lang/Object;J)I

    move-result v1

    invoke-static {p1, v2, v3, v1}, Ldfz;->s(Ljava/lang/Object;JI)V

    .line 20
    invoke-direct {p0, p1, v0}, Ldet;->N(Ljava/lang/Object;I)V

    goto/16 :goto_1

    .line 21
    :pswitch_9
    invoke-direct {p0, p2, v0}, Ldet;->R(Ljava/lang/Object;I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 22
    invoke-static {p2, v2, v3}, Ldfz;->f(Ljava/lang/Object;J)J

    move-result-wide v4

    invoke-static {p1, v2, v3, v4, v5}, Ldfz;->t(Ljava/lang/Object;JJ)V

    .line 23
    invoke-direct {p0, p1, v0}, Ldet;->N(Ljava/lang/Object;I)V

    goto/16 :goto_1

    .line 24
    :pswitch_a
    invoke-direct {p0, p2, v0}, Ldet;->R(Ljava/lang/Object;I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 25
    invoke-static {p2, v2, v3}, Ldfz;->d(Ljava/lang/Object;J)I

    move-result v1

    invoke-static {p1, v2, v3, v1}, Ldfz;->s(Ljava/lang/Object;JI)V

    .line 26
    invoke-direct {p0, p1, v0}, Ldet;->N(Ljava/lang/Object;I)V

    goto/16 :goto_1

    .line 27
    :pswitch_b
    invoke-direct {p0, p2, v0}, Ldet;->R(Ljava/lang/Object;I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 28
    invoke-static {p2, v2, v3}, Ldfz;->d(Ljava/lang/Object;J)I

    move-result v1

    invoke-static {p1, v2, v3, v1}, Ldfz;->s(Ljava/lang/Object;JI)V

    .line 29
    invoke-direct {p0, p1, v0}, Ldet;->N(Ljava/lang/Object;I)V

    goto/16 :goto_1

    .line 30
    :pswitch_c
    invoke-direct {p0, p2, v0}, Ldet;->R(Ljava/lang/Object;I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 31
    invoke-static {p2, v2, v3}, Ldfz;->d(Ljava/lang/Object;J)I

    move-result v1

    invoke-static {p1, v2, v3, v1}, Ldfz;->s(Ljava/lang/Object;JI)V

    .line 32
    invoke-direct {p0, p1, v0}, Ldet;->N(Ljava/lang/Object;I)V

    goto/16 :goto_1

    .line 33
    :pswitch_d
    invoke-direct {p0, p2, v0}, Ldet;->R(Ljava/lang/Object;I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 34
    invoke-static {p2, v2, v3}, Ldfz;->h(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v1

    invoke-static {p1, v2, v3, v1}, Ldfz;->u(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 35
    invoke-direct {p0, p1, v0}, Ldet;->N(Ljava/lang/Object;I)V

    goto/16 :goto_1

    .line 36
    :pswitch_e
    invoke-direct {p0, p1, p2, v0}, Ldet;->K(Ljava/lang/Object;Ljava/lang/Object;I)V

    goto/16 :goto_1

    .line 37
    :pswitch_f
    invoke-direct {p0, p2, v0}, Ldet;->R(Ljava/lang/Object;I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 38
    invoke-static {p2, v2, v3}, Ldfz;->h(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v1

    invoke-static {p1, v2, v3, v1}, Ldfz;->u(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 39
    invoke-direct {p0, p1, v0}, Ldet;->N(Ljava/lang/Object;I)V

    goto/16 :goto_1

    .line 40
    :pswitch_10
    invoke-direct {p0, p2, v0}, Ldet;->R(Ljava/lang/Object;I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 41
    invoke-static {p2, v2, v3}, Ldfz;->w(Ljava/lang/Object;J)Z

    move-result v1

    invoke-static {p1, v2, v3, v1}, Ldfz;->m(Ljava/lang/Object;JZ)V

    .line 42
    invoke-direct {p0, p1, v0}, Ldet;->N(Ljava/lang/Object;I)V

    goto/16 :goto_1

    .line 43
    :pswitch_11
    invoke-direct {p0, p2, v0}, Ldet;->R(Ljava/lang/Object;I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 44
    invoke-static {p2, v2, v3}, Ldfz;->d(Ljava/lang/Object;J)I

    move-result v1

    invoke-static {p1, v2, v3, v1}, Ldfz;->s(Ljava/lang/Object;JI)V

    .line 45
    invoke-direct {p0, p1, v0}, Ldet;->N(Ljava/lang/Object;I)V

    goto :goto_1

    .line 46
    :pswitch_12
    invoke-direct {p0, p2, v0}, Ldet;->R(Ljava/lang/Object;I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 47
    invoke-static {p2, v2, v3}, Ldfz;->f(Ljava/lang/Object;J)J

    move-result-wide v4

    invoke-static {p1, v2, v3, v4, v5}, Ldfz;->t(Ljava/lang/Object;JJ)V

    .line 48
    invoke-direct {p0, p1, v0}, Ldet;->N(Ljava/lang/Object;I)V

    goto :goto_1

    .line 49
    :pswitch_13
    invoke-direct {p0, p2, v0}, Ldet;->R(Ljava/lang/Object;I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 50
    invoke-static {p2, v2, v3}, Ldfz;->d(Ljava/lang/Object;J)I

    move-result v1

    invoke-static {p1, v2, v3, v1}, Ldfz;->s(Ljava/lang/Object;JI)V

    .line 51
    invoke-direct {p0, p1, v0}, Ldet;->N(Ljava/lang/Object;I)V

    goto :goto_1

    .line 52
    :pswitch_14
    invoke-direct {p0, p2, v0}, Ldet;->R(Ljava/lang/Object;I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 53
    invoke-static {p2, v2, v3}, Ldfz;->f(Ljava/lang/Object;J)J

    move-result-wide v4

    invoke-static {p1, v2, v3, v4, v5}, Ldfz;->t(Ljava/lang/Object;JJ)V

    .line 54
    invoke-direct {p0, p1, v0}, Ldet;->N(Ljava/lang/Object;I)V

    goto :goto_1

    .line 55
    :pswitch_15
    invoke-direct {p0, p2, v0}, Ldet;->R(Ljava/lang/Object;I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 56
    invoke-static {p2, v2, v3}, Ldfz;->f(Ljava/lang/Object;J)J

    move-result-wide v4

    invoke-static {p1, v2, v3, v4, v5}, Ldfz;->t(Ljava/lang/Object;JJ)V

    .line 57
    invoke-direct {p0, p1, v0}, Ldet;->N(Ljava/lang/Object;I)V

    goto :goto_1

    .line 58
    :pswitch_16
    invoke-direct {p0, p2, v0}, Ldet;->R(Ljava/lang/Object;I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 59
    invoke-static {p2, v2, v3}, Ldfz;->c(Ljava/lang/Object;J)F

    move-result v1

    invoke-static {p1, v2, v3, v1}, Ldfz;->r(Ljava/lang/Object;JF)V

    .line 60
    invoke-direct {p0, p1, v0}, Ldet;->N(Ljava/lang/Object;I)V

    goto :goto_1

    .line 61
    :pswitch_17
    invoke-direct {p0, p2, v0}, Ldet;->R(Ljava/lang/Object;I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 62
    invoke-static {p2, v2, v3}, Ldfz;->b(Ljava/lang/Object;J)D

    move-result-wide v4

    invoke-static {p1, v2, v3, v4, v5}, Ldfz;->q(Ljava/lang/Object;JD)V

    .line 63
    invoke-direct {p0, p1, v0}, Ldet;->N(Ljava/lang/Object;I)V

    .line 3
    :cond_0
    :goto_1
    add-int/lit8 v0, v0, 0x3

    goto/16 :goto_0

    .line 64
    :cond_1
    invoke-static {p1, p2}, Ldfh;->V(Ljava/lang/Object;Ljava/lang/Object;)V

    iget-boolean v0, p0, Ldet;->h:Z

    if-eqz v0, :cond_2

    .line 65
    invoke-static {p1, p2}, Ldfh;->T(Ljava/lang/Object;Ljava/lang/Object;)V

    return-void

    .line 66
    :cond_2
    return-void

    .line 65
    :cond_3
    const/4 p1, 0x0

    .line 66
    goto :goto_3

    :goto_2
    throw p1

    :goto_3
    goto :goto_2

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
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
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final h(Ljava/lang/Object;Ldfc;Ldcz;)V
    .locals 11

    .line 1
    const/4 v0, 0x0

    if-eqz p3, :cond_1d

    iget-object v1, p0, Ldet;->o:Lev;

    move-object v2, v0

    move-object v3, v2

    .line 2
    :cond_0
    :goto_0
    :try_start_0
    invoke-interface {p2}, Ldfc;->c()I

    move-result v4

    .line 3
    invoke-direct {p0, v4}, Ldet;->x(I)I

    move-result v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_3

    if-gez v5, :cond_a

    const v5, 0x7fffffff

    if-ne v4, v5, :cond_2

    iget p2, p0, Ldet;->l:I

    :goto_1
    iget p3, p0, Ldet;->m:I

    if-ge p2, p3, :cond_1

    iget-object p3, p0, Ldet;->k:[I

    .line 240
    aget p3, p3, p2

    .line 241
    invoke-direct {p0, p1, p3, v2}, Ldet;->ab(Ljava/lang/Object;ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    add-int/lit8 p2, p2, 0x1

    goto :goto_1

    :cond_1
    if-eqz v2, :cond_1a

    :goto_2
    check-cast v2, Ldfr;

    .line 242
    invoke-static {p1, v2}, Lev;->N(Ljava/lang/Object;Ldfr;)V

    return-void

    :cond_2
    :try_start_1
    iget-boolean v5, p0, Ldet;->h:Z

    if-nez v5, :cond_3

    move-object v4, v0

    goto :goto_3

    :cond_3
    iget-object v5, p0, Ldet;->g:Lder;

    .line 4
    invoke-virtual {p3, v5, v4}, Ldcz;->c(Lder;I)Ldcx;

    move-result-object v4

    .line 242
    :goto_3
    if-eqz v4, :cond_7

    if-nez v3, :cond_4

    .line 7
    invoke-static {p1}, Lhl;->p(Ljava/lang/Object;)Lddb;

    move-result-object v3

    .line 8
    :cond_4
    invoke-virtual {v4}, Ldcx;->a()Ldgc;

    move-result-object v5

    sget-object v6, Ldgc;->n:Ldgc;

    if-eq v5, v6, :cond_6

    .line 9
    invoke-virtual {v4}, Ldcx;->a()Ldgc;

    move-result-object v5

    invoke-virtual {v5}, Ldgc;->ordinal()I

    move-result v5

    packed-switch v5, :pswitch_data_0

    goto/16 :goto_4

    .line 16
    :pswitch_0
    invoke-interface {p2}, Ldfc;->n()J

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    goto/16 :goto_5

    .line 17
    :pswitch_1
    invoke-interface {p2}, Ldfc;->i()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    goto/16 :goto_5

    .line 18
    :pswitch_2
    invoke-interface {p2}, Ldfc;->m()J

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    goto/16 :goto_5

    .line 19
    :pswitch_3
    invoke-interface {p2}, Ldfc;->h()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    goto/16 :goto_5

    .line 241
    :pswitch_4
    new-instance p2, Ljava/lang/IllegalStateException;

    const-string p3, "Shouldn\'t reach here."

    .line 245
    invoke-direct {p2, p3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p2

    .line 20
    :pswitch_5
    invoke-interface {p2}, Ldfc;->j()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    goto/16 :goto_5

    .line 15
    :pswitch_6
    invoke-interface {p2}, Ldfc;->q()Ldcl;

    move-result-object v5

    goto :goto_5

    .line 11
    :pswitch_7
    iget-object v5, v4, Ldcx;->c:Lder;

    .line 12
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    .line 13
    invoke-interface {p2, v5, p3}, Ldfc;->t(Ljava/lang/Class;Ldcz;)Ljava/lang/Object;

    move-result-object v5

    goto :goto_5

    .line 33
    :pswitch_8
    iget-object v5, v4, Ldcx;->c:Lder;

    .line 10
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    .line 11
    invoke-interface {p2, v5, p3}, Ldfc;->r(Ljava/lang/Class;Ldcz;)Ljava/lang/Object;

    move-result-object v5

    goto :goto_5

    .line 14
    :pswitch_9
    invoke-interface {p2}, Ldfc;->v()Ljava/lang/String;

    move-result-object v5

    goto :goto_5

    .line 21
    :pswitch_a
    invoke-interface {p2}, Ldfc;->T()Z

    move-result v5

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    goto :goto_5

    .line 22
    :pswitch_b
    invoke-interface {p2}, Ldfc;->f()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    goto :goto_5

    .line 23
    :pswitch_c
    invoke-interface {p2}, Ldfc;->k()J

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    goto :goto_5

    .line 24
    :pswitch_d
    invoke-interface {p2}, Ldfc;->g()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    goto :goto_5

    .line 25
    :pswitch_e
    invoke-interface {p2}, Ldfc;->o()J

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    goto :goto_5

    .line 26
    :pswitch_f
    invoke-interface {p2}, Ldfc;->l()J

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    goto :goto_5

    .line 27
    :pswitch_10
    invoke-interface {p2}, Ldfc;->b()F

    move-result v5

    invoke-static {v5}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v5

    goto :goto_5

    .line 28
    :pswitch_11
    invoke-interface {p2}, Ldfc;->a()D

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v5

    goto :goto_5

    .line 9
    :goto_4
    move-object v5, v0

    .line 29
    :goto_5
    invoke-virtual {v4}, Ldcx;->b()V

    .line 30
    invoke-virtual {v4}, Ldcx;->a()Ldgc;

    move-result-object v6

    invoke-virtual {v6}, Ldgc;->ordinal()I

    move-result v6

    packed-switch v6, :pswitch_data_1

    goto :goto_6

    :pswitch_12
    iget-object v6, v4, Ldcx;->d:Lddj;

    .line 31
    invoke-virtual {v3, v6}, Lddb;->k(Lddj;)Ljava/lang/Object;

    move-result-object v6

    if-eqz v6, :cond_5

    .line 32
    invoke-static {v6, v5}, Ldds;->e(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    :cond_5
    :goto_6
    iget-object v4, v4, Ldcx;->d:Lddj;

    .line 33
    invoke-virtual {v3, v4, v5}, Lddb;->l(Lddj;Ljava/lang/Object;)V

    goto/16 :goto_0

    .line 243
    :cond_6
    invoke-interface {p2}, Ldfc;->g()I

    .line 244
    throw v0

    .line 28
    :cond_7
    if-nez v2, :cond_8

    .line 5
    invoke-static {p1}, Lev;->O(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_3

    .line 6
    :cond_8
    :try_start_2
    invoke-virtual {v1, v2, p2}, Lev;->J(Ljava/lang/Object;Ldfc;)Z

    move-result v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-nez v4, :cond_0

    iget p2, p0, Ldet;->l:I

    :goto_7
    iget p3, p0, Ldet;->m:I

    if-ge p2, p3, :cond_9

    iget-object p3, p0, Ldet;->k:[I

    .line 240
    aget p3, p3, p2

    .line 241
    invoke-direct {p0, p1, p3, v2}, Ldet;->ab(Ljava/lang/Object;ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    add-int/lit8 p2, p2, 0x1

    goto :goto_7

    :cond_9
    if-eqz v2, :cond_1a

    goto/16 :goto_2

    .line 245
    :catchall_0
    move-exception p2

    goto/16 :goto_11

    .line 34
    :cond_a
    :try_start_3
    invoke-direct {p0, v5}, Ldet;->C(I)I

    move-result v6
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    :try_start_4
    invoke-static {v6}, Ldet;->B(I)I

    move-result v7

    packed-switch v7, :pswitch_data_2

    if-nez v2, :cond_15

    invoke-static {}, Ldfr;->b()Ldfr;

    move-result-object v2

    goto/16 :goto_c

    .line 37
    :pswitch_13
    invoke-static {v6}, Ldet;->D(I)J

    move-result-wide v6

    .line 38
    invoke-direct {p0, v5}, Ldet;->G(I)Ldfg;

    move-result-object v8

    invoke-interface {p2, v8, p3}, Ldfc;->s(Ldfg;Ldcz;)Ljava/lang/Object;

    move-result-object v8

    .line 39
    invoke-static {p1, v6, v7, v8}, Ldfz;->u(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 40
    invoke-direct {p0, p1, v4, v5}, Ldet;->O(Ljava/lang/Object;II)V

    goto/16 :goto_e

    :pswitch_14
    invoke-static {v6}, Ldet;->D(I)J

    move-result-wide v6

    .line 41
    invoke-interface {p2}, Ldfc;->n()J

    move-result-wide v8

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    .line 42
    invoke-static {p1, v6, v7, v8}, Ldfz;->u(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 43
    invoke-direct {p0, p1, v4, v5}, Ldet;->O(Ljava/lang/Object;II)V

    goto/16 :goto_e

    :pswitch_15
    invoke-static {v6}, Ldet;->D(I)J

    move-result-wide v6

    .line 44
    invoke-interface {p2}, Ldfc;->i()I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    .line 45
    invoke-static {p1, v6, v7, v8}, Ldfz;->u(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 46
    invoke-direct {p0, p1, v4, v5}, Ldet;->O(Ljava/lang/Object;II)V

    goto/16 :goto_e

    :pswitch_16
    invoke-static {v6}, Ldet;->D(I)J

    move-result-wide v6

    .line 47
    invoke-interface {p2}, Ldfc;->m()J

    move-result-wide v8

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    .line 48
    invoke-static {p1, v6, v7, v8}, Ldfz;->u(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 49
    invoke-direct {p0, p1, v4, v5}, Ldet;->O(Ljava/lang/Object;II)V

    goto/16 :goto_e

    :pswitch_17
    invoke-static {v6}, Ldet;->D(I)J

    move-result-wide v6

    .line 50
    invoke-interface {p2}, Ldfc;->h()I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    .line 51
    invoke-static {p1, v6, v7, v8}, Ldfz;->u(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 52
    invoke-direct {p0, p1, v4, v5}, Ldet;->O(Ljava/lang/Object;II)V

    goto/16 :goto_e

    .line 53
    :pswitch_18
    invoke-interface {p2}, Ldfc;->e()I

    move-result v7

    .line 54
    invoke-direct {p0, v5}, Ldet;->F(I)Lddo;

    move-result-object v8

    if-eqz v8, :cond_c

    .line 55
    invoke-interface {v8, v7}, Lddo;->a(I)Z

    move-result v8

    if-eqz v8, :cond_b

    goto :goto_8

    .line 58
    :cond_b
    invoke-static {v4, v7, v2}, Ldfh;->W(IILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    goto/16 :goto_e

    .line 55
    :cond_c
    :goto_8
    invoke-static {v6}, Ldet;->D(I)J

    move-result-wide v8

    .line 56
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-static {p1, v8, v9, v6}, Ldfz;->u(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 57
    invoke-direct {p0, p1, v4, v5}, Ldet;->O(Ljava/lang/Object;II)V

    goto/16 :goto_e

    .line 58
    :pswitch_19
    invoke-static {v6}, Ldet;->D(I)J

    move-result-wide v6

    .line 59
    invoke-interface {p2}, Ldfc;->j()I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    .line 60
    invoke-static {p1, v6, v7, v8}, Ldfz;->u(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 61
    invoke-direct {p0, p1, v4, v5}, Ldet;->O(Ljava/lang/Object;II)V

    goto/16 :goto_e

    :pswitch_1a
    invoke-static {v6}, Ldet;->D(I)J

    move-result-wide v6

    .line 62
    invoke-interface {p2}, Ldfc;->q()Ldcl;

    move-result-object v8

    invoke-static {p1, v6, v7, v8}, Ldfz;->u(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 63
    invoke-direct {p0, p1, v4, v5}, Ldet;->O(Ljava/lang/Object;II)V

    goto/16 :goto_e

    .line 64
    :pswitch_1b
    invoke-direct {p0, p1, v4, v5}, Ldet;->U(Ljava/lang/Object;II)Z

    move-result v7

    if-eqz v7, :cond_d

    invoke-static {v6}, Ldet;->D(I)J

    move-result-wide v7

    invoke-static {v6}, Ldet;->D(I)J

    move-result-wide v9

    .line 65
    invoke-static {p1, v9, v10}, Ldfz;->h(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v6

    .line 66
    invoke-direct {p0, v5}, Ldet;->G(I)Ldfg;

    move-result-object v9

    .line 67
    invoke-interface {p2, v9, p3}, Ldfc;->u(Ldfg;Ldcz;)Ljava/lang/Object;

    move-result-object v9

    .line 68
    invoke-static {v6, v9}, Ldds;->e(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    .line 69
    invoke-static {p1, v7, v8, v6}, Ldfz;->u(Ljava/lang/Object;JLjava/lang/Object;)V

    goto :goto_9

    .line 74
    :cond_d
    invoke-static {v6}, Ldet;->D(I)J

    move-result-wide v6

    .line 70
    invoke-direct {p0, v5}, Ldet;->G(I)Ldfg;

    move-result-object v8

    .line 71
    invoke-interface {p2, v8, p3}, Ldfc;->u(Ldfg;Ldcz;)Ljava/lang/Object;

    move-result-object v8

    .line 72
    invoke-static {p1, v6, v7, v8}, Ldfz;->u(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 73
    invoke-direct {p0, p1, v5}, Ldet;->N(Ljava/lang/Object;I)V

    .line 74
    :goto_9
    invoke-direct {p0, p1, v4, v5}, Ldet;->O(Ljava/lang/Object;II)V

    goto/16 :goto_e

    .line 75
    :pswitch_1c
    invoke-direct {p0, p1, v6, p2}, Ldet;->M(Ljava/lang/Object;ILdfc;)V

    .line 76
    invoke-direct {p0, p1, v4, v5}, Ldet;->O(Ljava/lang/Object;II)V

    goto/16 :goto_e

    :pswitch_1d
    invoke-static {v6}, Ldet;->D(I)J

    move-result-wide v6

    .line 77
    invoke-interface {p2}, Ldfc;->T()Z

    move-result v8

    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v8

    .line 78
    invoke-static {p1, v6, v7, v8}, Ldfz;->u(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 79
    invoke-direct {p0, p1, v4, v5}, Ldet;->O(Ljava/lang/Object;II)V

    goto/16 :goto_e

    :pswitch_1e
    invoke-static {v6}, Ldet;->D(I)J

    move-result-wide v6

    .line 80
    invoke-interface {p2}, Ldfc;->f()I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    .line 81
    invoke-static {p1, v6, v7, v8}, Ldfz;->u(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 82
    invoke-direct {p0, p1, v4, v5}, Ldet;->O(Ljava/lang/Object;II)V

    goto/16 :goto_e

    :pswitch_1f
    invoke-static {v6}, Ldet;->D(I)J

    move-result-wide v6

    .line 83
    invoke-interface {p2}, Ldfc;->k()J

    move-result-wide v8

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    .line 84
    invoke-static {p1, v6, v7, v8}, Ldfz;->u(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 85
    invoke-direct {p0, p1, v4, v5}, Ldet;->O(Ljava/lang/Object;II)V

    goto/16 :goto_e

    :pswitch_20
    invoke-static {v6}, Ldet;->D(I)J

    move-result-wide v6

    .line 86
    invoke-interface {p2}, Ldfc;->g()I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    .line 87
    invoke-static {p1, v6, v7, v8}, Ldfz;->u(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 88
    invoke-direct {p0, p1, v4, v5}, Ldet;->O(Ljava/lang/Object;II)V

    goto/16 :goto_e

    :pswitch_21
    invoke-static {v6}, Ldet;->D(I)J

    move-result-wide v6

    .line 89
    invoke-interface {p2}, Ldfc;->o()J

    move-result-wide v8

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    .line 90
    invoke-static {p1, v6, v7, v8}, Ldfz;->u(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 91
    invoke-direct {p0, p1, v4, v5}, Ldet;->O(Ljava/lang/Object;II)V

    goto/16 :goto_e

    :pswitch_22
    invoke-static {v6}, Ldet;->D(I)J

    move-result-wide v6

    .line 92
    invoke-interface {p2}, Ldfc;->l()J

    move-result-wide v8

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    .line 93
    invoke-static {p1, v6, v7, v8}, Ldfz;->u(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 94
    invoke-direct {p0, p1, v4, v5}, Ldet;->O(Ljava/lang/Object;II)V

    goto/16 :goto_e

    :pswitch_23
    invoke-static {v6}, Ldet;->D(I)J

    move-result-wide v6

    .line 95
    invoke-interface {p2}, Ldfc;->b()F

    move-result v8

    invoke-static {v8}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v8

    .line 96
    invoke-static {p1, v6, v7, v8}, Ldfz;->u(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 97
    invoke-direct {p0, p1, v4, v5}, Ldet;->O(Ljava/lang/Object;II)V

    goto/16 :goto_e

    :pswitch_24
    invoke-static {v6}, Ldet;->D(I)J

    move-result-wide v6

    .line 98
    invoke-interface {p2}, Ldfc;->a()D

    move-result-wide v8

    invoke-static {v8, v9}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v8

    .line 99
    invoke-static {p1, v6, v7, v8}, Ldfz;->u(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 100
    invoke-direct {p0, p1, v4, v5}, Ldet;->O(Ljava/lang/Object;II)V

    goto/16 :goto_e

    .line 101
    :pswitch_25
    invoke-direct {p0, v5}, Ldet;->H(I)Ljava/lang/Object;

    move-result-object v4

    .line 102
    invoke-direct {p0, v5}, Ldet;->C(I)I

    move-result v5

    invoke-static {v5}, Ldet;->D(I)J

    move-result-wide v5

    .line 103
    invoke-static {p1, v5, v6}, Ldfz;->h(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v7

    if-nez v7, :cond_e

    .line 108
    invoke-static {}, Lev;->Y()Ljava/lang/Object;

    move-result-object v7

    .line 109
    invoke-static {p1, v5, v6, v7}, Ldfz;->u(Ljava/lang/Object;JLjava/lang/Object;)V

    goto :goto_a

    .line 104
    :cond_e
    invoke-static {v7}, Lev;->W(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_f

    .line 105
    invoke-static {}, Lev;->Y()Ljava/lang/Object;

    move-result-object v8

    .line 106
    invoke-static {v8, v7}, Lev;->X(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 107
    invoke-static {p1, v5, v6, v8}, Ldfz;->u(Ljava/lang/Object;JLjava/lang/Object;)V

    move-object v7, v8

    .line 110
    :cond_f
    :goto_a
    check-cast v7, Ldem;

    .line 111
    invoke-static {v4}, Lev;->U(Ljava/lang/Object;)Ldek;

    move-result-object v4

    .line 112
    invoke-interface {p2, v7, v4, p3}, Ldfc;->I(Ljava/util/Map;Ldek;Ldcz;)V

    goto/16 :goto_e

    .line 107
    :pswitch_26
    invoke-static {v6}, Ldet;->D(I)J

    move-result-wide v6

    .line 113
    invoke-direct {p0, v5}, Ldet;->G(I)Ldfg;

    move-result-object v4

    iget-object v5, p0, Ldet;->n:Ldef;

    .line 114
    invoke-virtual {v5, p1, v6, v7}, Ldef;->b(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v5

    .line 115
    invoke-interface {p2, v5, v4, p3}, Ldfc;->F(Ljava/util/List;Ldfg;Ldcz;)V

    goto/16 :goto_e

    :pswitch_27
    iget-object v4, p0, Ldet;->n:Ldef;

    invoke-static {v6}, Ldet;->D(I)J

    move-result-wide v5

    .line 116
    invoke-virtual {v4, p1, v5, v6}, Ldef;->b(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v4

    .line 117
    invoke-interface {p2, v4}, Ldfc;->N(Ljava/util/List;)V

    goto/16 :goto_e

    :pswitch_28
    iget-object v4, p0, Ldet;->n:Ldef;

    invoke-static {v6}, Ldet;->D(I)J

    move-result-wide v5

    .line 118
    invoke-virtual {v4, p1, v5, v6}, Ldef;->b(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v4

    .line 119
    invoke-interface {p2, v4}, Ldfc;->M(Ljava/util/List;)V

    goto/16 :goto_e

    :pswitch_29
    iget-object v4, p0, Ldet;->n:Ldef;

    invoke-static {v6}, Ldet;->D(I)J

    move-result-wide v5

    .line 120
    invoke-virtual {v4, p1, v5, v6}, Ldef;->b(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v4

    .line 121
    invoke-interface {p2, v4}, Ldfc;->L(Ljava/util/List;)V

    goto/16 :goto_e

    :pswitch_2a
    iget-object v4, p0, Ldet;->n:Ldef;

    invoke-static {v6}, Ldet;->D(I)J

    move-result-wide v5

    .line 122
    invoke-virtual {v4, p1, v5, v6}, Ldef;->b(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v4

    .line 123
    invoke-interface {p2, v4}, Ldfc;->K(Ljava/util/List;)V

    goto/16 :goto_e

    :pswitch_2b
    iget-object v7, p0, Ldet;->n:Ldef;

    invoke-static {v6}, Ldet;->D(I)J

    move-result-wide v8

    .line 124
    invoke-virtual {v7, p1, v8, v9}, Ldef;->b(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v6

    .line 125
    invoke-interface {p2, v6}, Ldfc;->B(Ljava/util/List;)V

    .line 126
    invoke-direct {p0, v5}, Ldet;->F(I)Lddo;

    move-result-object v5

    .line 127
    invoke-static {v4, v6, v5, v2}, Ldfh;->X(ILjava/util/List;Lddo;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    goto/16 :goto_e

    :pswitch_2c
    iget-object v4, p0, Ldet;->n:Ldef;

    invoke-static {v6}, Ldet;->D(I)J

    move-result-wide v5

    .line 128
    invoke-virtual {v4, p1, v5, v6}, Ldef;->b(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v4

    .line 129
    invoke-interface {p2, v4}, Ldfc;->R(Ljava/util/List;)V

    goto/16 :goto_e

    :pswitch_2d
    iget-object v4, p0, Ldet;->n:Ldef;

    invoke-static {v6}, Ldet;->D(I)J

    move-result-wide v5

    .line 130
    invoke-virtual {v4, p1, v5, v6}, Ldef;->b(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v4

    .line 131
    invoke-interface {p2, v4}, Ldfc;->y(Ljava/util/List;)V

    goto/16 :goto_e

    :pswitch_2e
    iget-object v4, p0, Ldet;->n:Ldef;

    invoke-static {v6}, Ldet;->D(I)J

    move-result-wide v5

    .line 132
    invoke-virtual {v4, p1, v5, v6}, Ldef;->b(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v4

    .line 133
    invoke-interface {p2, v4}, Ldfc;->C(Ljava/util/List;)V

    goto/16 :goto_e

    :pswitch_2f
    iget-object v4, p0, Ldet;->n:Ldef;

    invoke-static {v6}, Ldet;->D(I)J

    move-result-wide v5

    .line 134
    invoke-virtual {v4, p1, v5, v6}, Ldef;->b(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v4

    .line 135
    invoke-interface {p2, v4}, Ldfc;->D(Ljava/util/List;)V

    goto/16 :goto_e

    :pswitch_30
    iget-object v4, p0, Ldet;->n:Ldef;

    invoke-static {v6}, Ldet;->D(I)J

    move-result-wide v5

    .line 136
    invoke-virtual {v4, p1, v5, v6}, Ldef;->b(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v4

    .line 137
    invoke-interface {p2, v4}, Ldfc;->G(Ljava/util/List;)V

    goto/16 :goto_e

    :pswitch_31
    iget-object v4, p0, Ldet;->n:Ldef;

    invoke-static {v6}, Ldet;->D(I)J

    move-result-wide v5

    .line 138
    invoke-virtual {v4, p1, v5, v6}, Ldef;->b(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v4

    .line 139
    invoke-interface {p2, v4}, Ldfc;->S(Ljava/util/List;)V

    goto/16 :goto_e

    :pswitch_32
    iget-object v4, p0, Ldet;->n:Ldef;

    invoke-static {v6}, Ldet;->D(I)J

    move-result-wide v5

    .line 140
    invoke-virtual {v4, p1, v5, v6}, Ldef;->b(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v4

    .line 141
    invoke-interface {p2, v4}, Ldfc;->H(Ljava/util/List;)V

    goto/16 :goto_e

    :pswitch_33
    iget-object v4, p0, Ldet;->n:Ldef;

    invoke-static {v6}, Ldet;->D(I)J

    move-result-wide v5

    .line 142
    invoke-virtual {v4, p1, v5, v6}, Ldef;->b(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v4

    .line 143
    invoke-interface {p2, v4}, Ldfc;->E(Ljava/util/List;)V

    goto/16 :goto_e

    :pswitch_34
    iget-object v4, p0, Ldet;->n:Ldef;

    invoke-static {v6}, Ldet;->D(I)J

    move-result-wide v5

    .line 144
    invoke-virtual {v4, p1, v5, v6}, Ldef;->b(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v4

    .line 145
    invoke-interface {p2, v4}, Ldfc;->A(Ljava/util/List;)V

    goto/16 :goto_e

    :pswitch_35
    iget-object v4, p0, Ldet;->n:Ldef;

    invoke-static {v6}, Ldet;->D(I)J

    move-result-wide v5

    .line 146
    invoke-virtual {v4, p1, v5, v6}, Ldef;->b(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v4

    .line 147
    invoke-interface {p2, v4}, Ldfc;->N(Ljava/util/List;)V

    goto/16 :goto_e

    :pswitch_36
    iget-object v4, p0, Ldet;->n:Ldef;

    invoke-static {v6}, Ldet;->D(I)J

    move-result-wide v5

    .line 148
    invoke-virtual {v4, p1, v5, v6}, Ldef;->b(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v4

    .line 149
    invoke-interface {p2, v4}, Ldfc;->M(Ljava/util/List;)V

    goto/16 :goto_e

    :pswitch_37
    iget-object v4, p0, Ldet;->n:Ldef;

    invoke-static {v6}, Ldet;->D(I)J

    move-result-wide v5

    .line 150
    invoke-virtual {v4, p1, v5, v6}, Ldef;->b(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v4

    .line 151
    invoke-interface {p2, v4}, Ldfc;->L(Ljava/util/List;)V

    goto/16 :goto_e

    :pswitch_38
    iget-object v4, p0, Ldet;->n:Ldef;

    invoke-static {v6}, Ldet;->D(I)J

    move-result-wide v5

    .line 152
    invoke-virtual {v4, p1, v5, v6}, Ldef;->b(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v4

    .line 153
    invoke-interface {p2, v4}, Ldfc;->K(Ljava/util/List;)V

    goto/16 :goto_e

    :pswitch_39
    iget-object v7, p0, Ldet;->n:Ldef;

    invoke-static {v6}, Ldet;->D(I)J

    move-result-wide v8

    .line 154
    invoke-virtual {v7, p1, v8, v9}, Ldef;->b(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v6

    .line 155
    invoke-interface {p2, v6}, Ldfc;->B(Ljava/util/List;)V

    .line 156
    invoke-direct {p0, v5}, Ldet;->F(I)Lddo;

    move-result-object v5

    .line 157
    invoke-static {v4, v6, v5, v2}, Ldfh;->X(ILjava/util/List;Lddo;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    goto/16 :goto_e

    :pswitch_3a
    iget-object v4, p0, Ldet;->n:Ldef;

    invoke-static {v6}, Ldet;->D(I)J

    move-result-wide v5

    .line 158
    invoke-virtual {v4, p1, v5, v6}, Ldef;->b(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v4

    .line 159
    invoke-interface {p2, v4}, Ldfc;->R(Ljava/util/List;)V

    goto/16 :goto_e

    :pswitch_3b
    iget-object v4, p0, Ldet;->n:Ldef;

    invoke-static {v6}, Ldet;->D(I)J

    move-result-wide v5

    .line 160
    invoke-virtual {v4, p1, v5, v6}, Ldef;->b(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v4

    .line 161
    invoke-interface {p2, v4}, Ldfc;->z(Ljava/util/List;)V

    goto/16 :goto_e

    .line 162
    :pswitch_3c
    invoke-direct {p0, v5}, Ldet;->G(I)Ldfg;

    move-result-object v4

    iget-object v5, p0, Ldet;->n:Ldef;

    invoke-static {v6}, Ldet;->D(I)J

    move-result-wide v6

    .line 163
    invoke-virtual {v5, p1, v6, v7}, Ldef;->b(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v5

    .line 164
    invoke-interface {p2, v5, v4, p3}, Ldfc;->J(Ljava/util/List;Ldfg;Ldcz;)V

    goto/16 :goto_e

    .line 242
    :pswitch_3d
    invoke-static {v6}, Ldet;->Q(I)Z

    move-result v4

    if-eqz v4, :cond_10

    iget-object v4, p0, Ldet;->n:Ldef;

    invoke-static {v6}, Ldet;->D(I)J

    move-result-wide v5

    .line 35
    invoke-virtual {v4, p1, v5, v6}, Ldef;->b(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v4

    .line 36
    invoke-interface {p2, v4}, Ldfc;->Q(Ljava/util/List;)V

    goto/16 :goto_e

    :cond_10
    iget-object v4, p0, Ldet;->n:Ldef;

    invoke-static {v6}, Ldet;->D(I)J

    move-result-wide v5

    .line 37
    invoke-virtual {v4, p1, v5, v6}, Ldef;->b(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v4

    invoke-interface {p2, v4}, Ldfc;->O(Ljava/util/List;)V

    goto/16 :goto_e

    .line 164
    :pswitch_3e
    iget-object v4, p0, Ldet;->n:Ldef;

    invoke-static {v6}, Ldet;->D(I)J

    move-result-wide v5

    .line 165
    invoke-virtual {v4, p1, v5, v6}, Ldef;->b(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v4

    .line 166
    invoke-interface {p2, v4}, Ldfc;->y(Ljava/util/List;)V

    goto/16 :goto_e

    :pswitch_3f
    iget-object v4, p0, Ldet;->n:Ldef;

    invoke-static {v6}, Ldet;->D(I)J

    move-result-wide v5

    .line 167
    invoke-virtual {v4, p1, v5, v6}, Ldef;->b(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v4

    .line 168
    invoke-interface {p2, v4}, Ldfc;->C(Ljava/util/List;)V

    goto/16 :goto_e

    :pswitch_40
    iget-object v4, p0, Ldet;->n:Ldef;

    invoke-static {v6}, Ldet;->D(I)J

    move-result-wide v5

    .line 169
    invoke-virtual {v4, p1, v5, v6}, Ldef;->b(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v4

    .line 170
    invoke-interface {p2, v4}, Ldfc;->D(Ljava/util/List;)V

    goto/16 :goto_e

    :pswitch_41
    iget-object v4, p0, Ldet;->n:Ldef;

    invoke-static {v6}, Ldet;->D(I)J

    move-result-wide v5

    .line 171
    invoke-virtual {v4, p1, v5, v6}, Ldef;->b(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v4

    .line 172
    invoke-interface {p2, v4}, Ldfc;->G(Ljava/util/List;)V

    goto/16 :goto_e

    :pswitch_42
    iget-object v4, p0, Ldet;->n:Ldef;

    invoke-static {v6}, Ldet;->D(I)J

    move-result-wide v5

    .line 173
    invoke-virtual {v4, p1, v5, v6}, Ldef;->b(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v4

    .line 174
    invoke-interface {p2, v4}, Ldfc;->S(Ljava/util/List;)V

    goto/16 :goto_e

    :pswitch_43
    iget-object v4, p0, Ldet;->n:Ldef;

    invoke-static {v6}, Ldet;->D(I)J

    move-result-wide v5

    .line 175
    invoke-virtual {v4, p1, v5, v6}, Ldef;->b(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v4

    .line 176
    invoke-interface {p2, v4}, Ldfc;->H(Ljava/util/List;)V

    goto/16 :goto_e

    :pswitch_44
    iget-object v4, p0, Ldet;->n:Ldef;

    invoke-static {v6}, Ldet;->D(I)J

    move-result-wide v5

    .line 177
    invoke-virtual {v4, p1, v5, v6}, Ldef;->b(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v4

    .line 178
    invoke-interface {p2, v4}, Ldfc;->E(Ljava/util/List;)V

    goto/16 :goto_e

    :pswitch_45
    iget-object v4, p0, Ldet;->n:Ldef;

    invoke-static {v6}, Ldet;->D(I)J

    move-result-wide v5

    .line 179
    invoke-virtual {v4, p1, v5, v6}, Ldef;->b(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v4

    .line 180
    invoke-interface {p2, v4}, Ldfc;->A(Ljava/util/List;)V

    goto/16 :goto_e

    .line 181
    :pswitch_46
    invoke-direct {p0, p1, v5}, Ldet;->R(Ljava/lang/Object;I)Z

    move-result v4

    if-eqz v4, :cond_11

    invoke-static {v6}, Ldet;->D(I)J

    move-result-wide v7

    invoke-static {v6}, Ldet;->D(I)J

    move-result-wide v9

    .line 182
    invoke-static {p1, v9, v10}, Ldfz;->h(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    .line 183
    invoke-direct {p0, v5}, Ldet;->G(I)Ldfg;

    move-result-object v5

    .line 184
    invoke-interface {p2, v5, p3}, Ldfc;->s(Ldfg;Ldcz;)Ljava/lang/Object;

    move-result-object v5

    .line 185
    invoke-static {v4, v5}, Ldds;->e(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    .line 186
    invoke-static {p1, v7, v8, v4}, Ldfz;->u(Ljava/lang/Object;JLjava/lang/Object;)V

    goto/16 :goto_e

    :cond_11
    invoke-static {v6}, Ldet;->D(I)J

    move-result-wide v6

    .line 187
    invoke-direct {p0, v5}, Ldet;->G(I)Ldfg;

    move-result-object v4

    .line 188
    invoke-interface {p2, v4, p3}, Ldfc;->s(Ldfg;Ldcz;)Ljava/lang/Object;

    move-result-object v4

    .line 189
    invoke-static {p1, v6, v7, v4}, Ldfz;->u(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 190
    invoke-direct {p0, p1, v5}, Ldet;->N(Ljava/lang/Object;I)V

    goto/16 :goto_e

    :pswitch_47
    invoke-static {v6}, Ldet;->D(I)J

    move-result-wide v6

    .line 191
    invoke-interface {p2}, Ldfc;->n()J

    move-result-wide v8

    invoke-static {p1, v6, v7, v8, v9}, Ldfz;->t(Ljava/lang/Object;JJ)V

    .line 192
    invoke-direct {p0, p1, v5}, Ldet;->N(Ljava/lang/Object;I)V

    goto/16 :goto_e

    :pswitch_48
    invoke-static {v6}, Ldet;->D(I)J

    move-result-wide v6

    .line 193
    invoke-interface {p2}, Ldfc;->i()I

    move-result v4

    invoke-static {p1, v6, v7, v4}, Ldfz;->s(Ljava/lang/Object;JI)V

    .line 194
    invoke-direct {p0, p1, v5}, Ldet;->N(Ljava/lang/Object;I)V

    goto/16 :goto_e

    :pswitch_49
    invoke-static {v6}, Ldet;->D(I)J

    move-result-wide v6

    .line 195
    invoke-interface {p2}, Ldfc;->m()J

    move-result-wide v8

    invoke-static {p1, v6, v7, v8, v9}, Ldfz;->t(Ljava/lang/Object;JJ)V

    .line 196
    invoke-direct {p0, p1, v5}, Ldet;->N(Ljava/lang/Object;I)V

    goto/16 :goto_e

    :pswitch_4a
    invoke-static {v6}, Ldet;->D(I)J

    move-result-wide v6

    .line 197
    invoke-interface {p2}, Ldfc;->h()I

    move-result v4

    invoke-static {p1, v6, v7, v4}, Ldfz;->s(Ljava/lang/Object;JI)V

    .line 198
    invoke-direct {p0, p1, v5}, Ldet;->N(Ljava/lang/Object;I)V

    goto/16 :goto_e

    .line 199
    :pswitch_4b
    invoke-interface {p2}, Ldfc;->e()I

    move-result v7

    .line 200
    invoke-direct {p0, v5}, Ldet;->F(I)Lddo;

    move-result-object v8

    if-eqz v8, :cond_13

    .line 201
    invoke-interface {v8, v7}, Lddo;->a(I)Z

    move-result v8

    if-eqz v8, :cond_12

    goto :goto_b

    .line 204
    :cond_12
    invoke-static {v4, v7, v2}, Ldfh;->W(IILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    goto/16 :goto_e

    .line 201
    :cond_13
    :goto_b
    invoke-static {v6}, Ldet;->D(I)J

    move-result-wide v8

    .line 202
    invoke-static {p1, v8, v9, v7}, Ldfz;->s(Ljava/lang/Object;JI)V

    .line 203
    invoke-direct {p0, p1, v5}, Ldet;->N(Ljava/lang/Object;I)V

    goto/16 :goto_e

    .line 204
    :pswitch_4c
    invoke-static {v6}, Ldet;->D(I)J

    move-result-wide v6

    .line 205
    invoke-interface {p2}, Ldfc;->j()I

    move-result v4

    invoke-static {p1, v6, v7, v4}, Ldfz;->s(Ljava/lang/Object;JI)V

    .line 206
    invoke-direct {p0, p1, v5}, Ldet;->N(Ljava/lang/Object;I)V

    goto/16 :goto_e

    :pswitch_4d
    invoke-static {v6}, Ldet;->D(I)J

    move-result-wide v6

    .line 207
    invoke-interface {p2}, Ldfc;->q()Ldcl;

    move-result-object v4

    invoke-static {p1, v6, v7, v4}, Ldfz;->u(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 208
    invoke-direct {p0, p1, v5}, Ldet;->N(Ljava/lang/Object;I)V

    goto/16 :goto_e

    .line 209
    :pswitch_4e
    invoke-direct {p0, p1, v5}, Ldet;->R(Ljava/lang/Object;I)Z

    move-result v4

    if-eqz v4, :cond_14

    invoke-static {v6}, Ldet;->D(I)J

    move-result-wide v7

    invoke-static {v6}, Ldet;->D(I)J

    move-result-wide v9

    .line 210
    invoke-static {p1, v9, v10}, Ldfz;->h(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    .line 211
    invoke-direct {p0, v5}, Ldet;->G(I)Ldfg;

    move-result-object v5

    .line 212
    invoke-interface {p2, v5, p3}, Ldfc;->u(Ldfg;Ldcz;)Ljava/lang/Object;

    move-result-object v5

    .line 213
    invoke-static {v4, v5}, Ldds;->e(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    .line 214
    invoke-static {p1, v7, v8, v4}, Ldfz;->u(Ljava/lang/Object;JLjava/lang/Object;)V

    goto/16 :goto_e

    :cond_14
    invoke-static {v6}, Ldet;->D(I)J

    move-result-wide v6

    .line 215
    invoke-direct {p0, v5}, Ldet;->G(I)Ldfg;

    move-result-object v4

    .line 216
    invoke-interface {p2, v4, p3}, Ldfc;->u(Ldfg;Ldcz;)Ljava/lang/Object;

    move-result-object v4

    .line 217
    invoke-static {p1, v6, v7, v4}, Ldfz;->u(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 218
    invoke-direct {p0, p1, v5}, Ldet;->N(Ljava/lang/Object;I)V

    goto/16 :goto_e

    .line 219
    :pswitch_4f
    invoke-direct {p0, p1, v6, p2}, Ldet;->M(Ljava/lang/Object;ILdfc;)V

    .line 220
    invoke-direct {p0, p1, v5}, Ldet;->N(Ljava/lang/Object;I)V

    goto/16 :goto_e

    :pswitch_50
    invoke-static {v6}, Ldet;->D(I)J

    move-result-wide v6

    .line 221
    invoke-interface {p2}, Ldfc;->T()Z

    move-result v4

    invoke-static {p1, v6, v7, v4}, Ldfz;->m(Ljava/lang/Object;JZ)V

    .line 222
    invoke-direct {p0, p1, v5}, Ldet;->N(Ljava/lang/Object;I)V

    goto/16 :goto_e

    :pswitch_51
    invoke-static {v6}, Ldet;->D(I)J

    move-result-wide v6

    .line 223
    invoke-interface {p2}, Ldfc;->f()I

    move-result v4

    invoke-static {p1, v6, v7, v4}, Ldfz;->s(Ljava/lang/Object;JI)V

    .line 224
    invoke-direct {p0, p1, v5}, Ldet;->N(Ljava/lang/Object;I)V

    goto/16 :goto_e

    :pswitch_52
    invoke-static {v6}, Ldet;->D(I)J

    move-result-wide v6

    .line 225
    invoke-interface {p2}, Ldfc;->k()J

    move-result-wide v8

    invoke-static {p1, v6, v7, v8, v9}, Ldfz;->t(Ljava/lang/Object;JJ)V

    .line 226
    invoke-direct {p0, p1, v5}, Ldet;->N(Ljava/lang/Object;I)V

    goto :goto_e

    :pswitch_53
    invoke-static {v6}, Ldet;->D(I)J

    move-result-wide v6

    .line 227
    invoke-interface {p2}, Ldfc;->g()I

    move-result v4

    invoke-static {p1, v6, v7, v4}, Ldfz;->s(Ljava/lang/Object;JI)V

    .line 228
    invoke-direct {p0, p1, v5}, Ldet;->N(Ljava/lang/Object;I)V

    goto :goto_e

    :pswitch_54
    invoke-static {v6}, Ldet;->D(I)J

    move-result-wide v6

    .line 229
    invoke-interface {p2}, Ldfc;->o()J

    move-result-wide v8

    invoke-static {p1, v6, v7, v8, v9}, Ldfz;->t(Ljava/lang/Object;JJ)V

    .line 230
    invoke-direct {p0, p1, v5}, Ldet;->N(Ljava/lang/Object;I)V

    goto :goto_e

    :pswitch_55
    invoke-static {v6}, Ldet;->D(I)J

    move-result-wide v6

    .line 231
    invoke-interface {p2}, Ldfc;->l()J

    move-result-wide v8

    invoke-static {p1, v6, v7, v8, v9}, Ldfz;->t(Ljava/lang/Object;JJ)V

    .line 232
    invoke-direct {p0, p1, v5}, Ldet;->N(Ljava/lang/Object;I)V

    goto :goto_e

    :pswitch_56
    invoke-static {v6}, Ldet;->D(I)J

    move-result-wide v6

    .line 233
    invoke-interface {p2}, Ldfc;->b()F

    move-result v4

    invoke-static {p1, v6, v7, v4}, Ldfz;->r(Ljava/lang/Object;JF)V

    .line 234
    invoke-direct {p0, p1, v5}, Ldet;->N(Ljava/lang/Object;I)V

    goto :goto_e

    :pswitch_57
    invoke-static {v6}, Ldet;->D(I)J

    move-result-wide v6

    .line 235
    invoke-interface {p2}, Ldfc;->a()D

    move-result-wide v8

    invoke-static {p1, v6, v7, v8, v9}, Ldfz;->q(Ljava/lang/Object;JD)V

    .line 236
    invoke-direct {p0, p1, v5}, Ldet;->N(Ljava/lang/Object;I)V
    :try_end_4
    .catch Lddt; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    goto :goto_e

    .line 237
    :cond_15
    :goto_c
    :try_start_5
    invoke-virtual {v1, v2, p2}, Lev;->J(Ljava/lang/Object;Ldfc;)Z

    move-result v4
    :try_end_5
    .catch Lddt; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    if-nez v4, :cond_17

    iget p2, p0, Ldet;->l:I

    :goto_d
    iget p3, p0, Ldet;->m:I

    if-ge p2, p3, :cond_16

    iget-object p3, p0, Ldet;->k:[I

    .line 240
    aget p3, p3, p2

    .line 241
    invoke-direct {p0, p1, p3, v2}, Ldet;->ab(Ljava/lang/Object;ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    add-int/lit8 p2, p2, 0x1

    goto :goto_d

    :cond_16
    if-eqz v2, :cond_1a

    goto/16 :goto_2

    .line 242
    :cond_17
    nop

    :goto_e
    goto/16 :goto_0

    :catchall_1
    move-exception p2

    goto :goto_11

    :catch_0
    move-exception v4

    goto :goto_f

    .line 245
    :catch_1
    move-exception v4

    :goto_f
    if-nez v2, :cond_18

    .line 238
    :try_start_6
    invoke-static {p1}, Lev;->O(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .line 239
    :cond_18
    invoke-virtual {v1, v2, p2}, Lev;->J(Ljava/lang/Object;Ldfc;)Z

    move-result v4
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    if-nez v4, :cond_0

    iget p2, p0, Ldet;->l:I

    :goto_10
    iget p3, p0, Ldet;->m:I

    if-ge p2, p3, :cond_19

    iget-object p3, p0, Ldet;->k:[I

    .line 240
    aget p3, p3, p2

    .line 241
    invoke-direct {p0, p1, p3, v2}, Ldet;->ab(Ljava/lang/Object;ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    add-int/lit8 p2, p2, 0x1

    goto :goto_10

    :cond_19
    if-eqz v2, :cond_1a

    goto/16 :goto_2

    .line 242
    :cond_1a
    return-void

    .line 246
    :catchall_2
    move-exception p2

    goto :goto_11

    .line 236
    :catchall_3
    move-exception p2

    :goto_11
    iget p3, p0, Ldet;->l:I

    :goto_12
    iget v0, p0, Ldet;->m:I

    if-ge p3, v0, :cond_1b

    iget-object v0, p0, Ldet;->k:[I

    .line 240
    aget v0, v0, p3

    .line 241
    invoke-direct {p0, p1, v0, v2}, Ldet;->ab(Ljava/lang/Object;ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    add-int/lit8 p3, p3, 0x1

    goto :goto_12

    .line 242
    :cond_1b
    if-eqz v2, :cond_1c

    check-cast v2, Ldfr;

    invoke-static {p1, v2}, Lev;->N(Ljava/lang/Object;Ldfr;)V

    .line 246
    :cond_1c
    throw p2

    .line 1
    :cond_1d
    goto :goto_14

    :goto_13
    throw v0

    :goto_14
    goto :goto_13

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

    :pswitch_data_1
    .packed-switch 0x9
        :pswitch_12
        :pswitch_12
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x0
        :pswitch_57
        :pswitch_56
        :pswitch_55
        :pswitch_54
        :pswitch_53
        :pswitch_52
        :pswitch_51
        :pswitch_50
        :pswitch_4f
        :pswitch_4e
        :pswitch_4d
        :pswitch_4c
        :pswitch_4b
        :pswitch_4a
        :pswitch_49
        :pswitch_48
        :pswitch_47
        :pswitch_46
        :pswitch_45
        :pswitch_44
        :pswitch_43
        :pswitch_42
        :pswitch_41
        :pswitch_40
        :pswitch_3f
        :pswitch_3e
        :pswitch_3d
        :pswitch_3c
        :pswitch_3b
        :pswitch_3a
        :pswitch_39
        :pswitch_38
        :pswitch_37
        :pswitch_36
        :pswitch_35
        :pswitch_34
        :pswitch_33
        :pswitch_32
        :pswitch_31
        :pswitch_30
        :pswitch_2f
        :pswitch_2e
        :pswitch_2d
        :pswitch_2c
        :pswitch_2b
        :pswitch_2a
        :pswitch_29
        :pswitch_28
        :pswitch_27
        :pswitch_26
        :pswitch_25
        :pswitch_24
        :pswitch_23
        :pswitch_22
        :pswitch_21
        :pswitch_20
        :pswitch_1f
        :pswitch_1e
        :pswitch_1d
        :pswitch_1c
        :pswitch_1b
        :pswitch_1a
        :pswitch_19
        :pswitch_18
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
    .end packed-switch
.end method

.method public final i(Ljava/lang/Object;[BIILdca;)V
    .locals 8

    .line 1
    iget-boolean v0, p0, Ldet;->j:Z

    if-eqz v0, :cond_0

    invoke-direct/range {p0 .. p5}, Ldet;->X(Ljava/lang/Object;[BIILdca;)V

    return-void

    :cond_0
    const/4 v6, 0x0

    .line 2
    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move v4, p3

    move v5, p4

    move-object v7, p5

    invoke-virtual/range {v1 .. v7}, Ldet;->c(Ljava/lang/Object;[BIIILdca;)I

    return-void
.end method

.method public final j(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 8

    .line 1
    iget-object v0, p0, Ldet;->c:[I

    array-length v0, v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_2

    .line 2
    invoke-direct {p0, v2}, Ldet;->C(I)I

    move-result v3

    invoke-static {v3}, Ldet;->D(I)J

    move-result-wide v4

    invoke-static {v3}, Ldet;->B(I)I

    move-result v3

    packed-switch v3, :pswitch_data_0

    goto/16 :goto_3

    .line 3
    :pswitch_0
    invoke-direct {p0, v2}, Ldet;->z(I)I

    move-result v3

    const v6, 0xfffff

    and-int/2addr v3, v6

    int-to-long v6, v3

    .line 4
    invoke-static {p1, v6, v7}, Ldfz;->d(Ljava/lang/Object;J)I

    move-result v3

    .line 5
    invoke-static {p2, v6, v7}, Ldfz;->d(Ljava/lang/Object;J)I

    move-result v6

    if-ne v3, v6, :cond_0

    .line 6
    invoke-static {p1, v4, v5}, Ldfz;->h(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    invoke-static {p2, v4, v5}, Ldfz;->h(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    .line 7
    invoke-static {v3, v4}, Ldfh;->q(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    goto/16 :goto_2

    .line 8
    :pswitch_1
    invoke-static {p1, v4, v5}, Ldfz;->h(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    invoke-static {p2, v4, v5}, Ldfz;->h(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    .line 9
    invoke-static {v3, v4}, Ldfh;->q(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    goto :goto_1

    .line 10
    :pswitch_2
    invoke-static {p1, v4, v5}, Ldfz;->h(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    invoke-static {p2, v4, v5}, Ldfz;->h(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    .line 11
    invoke-static {v3, v4}, Ldfh;->q(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    .line 9
    :goto_1
    if-nez v3, :cond_1

    goto/16 :goto_2

    .line 12
    :pswitch_3
    invoke-direct {p0, p1, p2, v2}, Ldet;->P(Ljava/lang/Object;Ljava/lang/Object;I)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 13
    invoke-static {p1, v4, v5}, Ldfz;->h(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    invoke-static {p2, v4, v5}, Ldfz;->h(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    .line 14
    invoke-static {v3, v4}, Ldfh;->q(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    goto/16 :goto_3

    .line 15
    :pswitch_4
    invoke-direct {p0, p1, p2, v2}, Ldet;->P(Ljava/lang/Object;Ljava/lang/Object;I)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 16
    invoke-static {p1, v4, v5}, Ldfz;->f(Ljava/lang/Object;J)J

    move-result-wide v6

    invoke-static {p2, v4, v5}, Ldfz;->f(Ljava/lang/Object;J)J

    move-result-wide v3

    cmp-long v5, v6, v3

    if-nez v5, :cond_0

    goto/16 :goto_3

    .line 17
    :pswitch_5
    invoke-direct {p0, p1, p2, v2}, Ldet;->P(Ljava/lang/Object;Ljava/lang/Object;I)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 18
    invoke-static {p1, v4, v5}, Ldfz;->d(Ljava/lang/Object;J)I

    move-result v3

    invoke-static {p2, v4, v5}, Ldfz;->d(Ljava/lang/Object;J)I

    move-result v4

    if-ne v3, v4, :cond_0

    goto/16 :goto_3

    .line 19
    :pswitch_6
    invoke-direct {p0, p1, p2, v2}, Ldet;->P(Ljava/lang/Object;Ljava/lang/Object;I)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 20
    invoke-static {p1, v4, v5}, Ldfz;->f(Ljava/lang/Object;J)J

    move-result-wide v6

    invoke-static {p2, v4, v5}, Ldfz;->f(Ljava/lang/Object;J)J

    move-result-wide v3

    cmp-long v5, v6, v3

    if-nez v5, :cond_0

    goto/16 :goto_3

    .line 21
    :pswitch_7
    invoke-direct {p0, p1, p2, v2}, Ldet;->P(Ljava/lang/Object;Ljava/lang/Object;I)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 22
    invoke-static {p1, v4, v5}, Ldfz;->d(Ljava/lang/Object;J)I

    move-result v3

    invoke-static {p2, v4, v5}, Ldfz;->d(Ljava/lang/Object;J)I

    move-result v4

    if-ne v3, v4, :cond_0

    goto/16 :goto_3

    .line 23
    :pswitch_8
    invoke-direct {p0, p1, p2, v2}, Ldet;->P(Ljava/lang/Object;Ljava/lang/Object;I)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 24
    invoke-static {p1, v4, v5}, Ldfz;->d(Ljava/lang/Object;J)I

    move-result v3

    invoke-static {p2, v4, v5}, Ldfz;->d(Ljava/lang/Object;J)I

    move-result v4

    if-ne v3, v4, :cond_0

    goto/16 :goto_3

    .line 25
    :pswitch_9
    invoke-direct {p0, p1, p2, v2}, Ldet;->P(Ljava/lang/Object;Ljava/lang/Object;I)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 26
    invoke-static {p1, v4, v5}, Ldfz;->d(Ljava/lang/Object;J)I

    move-result v3

    invoke-static {p2, v4, v5}, Ldfz;->d(Ljava/lang/Object;J)I

    move-result v4

    if-ne v3, v4, :cond_0

    goto/16 :goto_3

    .line 27
    :pswitch_a
    invoke-direct {p0, p1, p2, v2}, Ldet;->P(Ljava/lang/Object;Ljava/lang/Object;I)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 28
    invoke-static {p1, v4, v5}, Ldfz;->h(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    invoke-static {p2, v4, v5}, Ldfz;->h(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    .line 29
    invoke-static {v3, v4}, Ldfh;->q(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    goto/16 :goto_3

    .line 30
    :pswitch_b
    invoke-direct {p0, p1, p2, v2}, Ldet;->P(Ljava/lang/Object;Ljava/lang/Object;I)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 31
    invoke-static {p1, v4, v5}, Ldfz;->h(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    invoke-static {p2, v4, v5}, Ldfz;->h(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    .line 32
    invoke-static {v3, v4}, Ldfh;->q(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    goto/16 :goto_3

    .line 33
    :pswitch_c
    invoke-direct {p0, p1, p2, v2}, Ldet;->P(Ljava/lang/Object;Ljava/lang/Object;I)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 34
    invoke-static {p1, v4, v5}, Ldfz;->h(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    invoke-static {p2, v4, v5}, Ldfz;->h(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    .line 35
    invoke-static {v3, v4}, Ldfh;->q(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    goto/16 :goto_3

    .line 36
    :pswitch_d
    invoke-direct {p0, p1, p2, v2}, Ldet;->P(Ljava/lang/Object;Ljava/lang/Object;I)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 37
    invoke-static {p1, v4, v5}, Ldfz;->w(Ljava/lang/Object;J)Z

    move-result v3

    invoke-static {p2, v4, v5}, Ldfz;->w(Ljava/lang/Object;J)Z

    move-result v4

    if-ne v3, v4, :cond_0

    goto/16 :goto_3

    .line 38
    :pswitch_e
    invoke-direct {p0, p1, p2, v2}, Ldet;->P(Ljava/lang/Object;Ljava/lang/Object;I)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 39
    invoke-static {p1, v4, v5}, Ldfz;->d(Ljava/lang/Object;J)I

    move-result v3

    invoke-static {p2, v4, v5}, Ldfz;->d(Ljava/lang/Object;J)I

    move-result v4

    if-ne v3, v4, :cond_0

    goto/16 :goto_3

    .line 40
    :pswitch_f
    invoke-direct {p0, p1, p2, v2}, Ldet;->P(Ljava/lang/Object;Ljava/lang/Object;I)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 41
    invoke-static {p1, v4, v5}, Ldfz;->f(Ljava/lang/Object;J)J

    move-result-wide v6

    invoke-static {p2, v4, v5}, Ldfz;->f(Ljava/lang/Object;J)J

    move-result-wide v3

    cmp-long v5, v6, v3

    if-nez v5, :cond_0

    goto/16 :goto_3

    .line 42
    :pswitch_10
    invoke-direct {p0, p1, p2, v2}, Ldet;->P(Ljava/lang/Object;Ljava/lang/Object;I)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 43
    invoke-static {p1, v4, v5}, Ldfz;->d(Ljava/lang/Object;J)I

    move-result v3

    invoke-static {p2, v4, v5}, Ldfz;->d(Ljava/lang/Object;J)I

    move-result v4

    if-ne v3, v4, :cond_0

    goto :goto_3

    .line 44
    :pswitch_11
    invoke-direct {p0, p1, p2, v2}, Ldet;->P(Ljava/lang/Object;Ljava/lang/Object;I)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 45
    invoke-static {p1, v4, v5}, Ldfz;->f(Ljava/lang/Object;J)J

    move-result-wide v6

    invoke-static {p2, v4, v5}, Ldfz;->f(Ljava/lang/Object;J)J

    move-result-wide v3

    cmp-long v5, v6, v3

    if-nez v5, :cond_0

    goto :goto_3

    .line 46
    :pswitch_12
    invoke-direct {p0, p1, p2, v2}, Ldet;->P(Ljava/lang/Object;Ljava/lang/Object;I)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 47
    invoke-static {p1, v4, v5}, Ldfz;->f(Ljava/lang/Object;J)J

    move-result-wide v6

    invoke-static {p2, v4, v5}, Ldfz;->f(Ljava/lang/Object;J)J

    move-result-wide v3

    cmp-long v5, v6, v3

    if-nez v5, :cond_0

    goto :goto_3

    .line 48
    :pswitch_13
    invoke-direct {p0, p1, p2, v2}, Ldet;->P(Ljava/lang/Object;Ljava/lang/Object;I)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 49
    invoke-static {p1, v4, v5}, Ldfz;->c(Ljava/lang/Object;J)F

    move-result v3

    invoke-static {v3}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v3

    .line 50
    invoke-static {p2, v4, v5}, Ldfz;->c(Ljava/lang/Object;J)F

    move-result v4

    invoke-static {v4}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v4

    if-ne v3, v4, :cond_0

    goto :goto_3

    .line 51
    :pswitch_14
    invoke-direct {p0, p1, p2, v2}, Ldet;->P(Ljava/lang/Object;Ljava/lang/Object;I)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 52
    invoke-static {p1, v4, v5}, Ldfz;->b(Ljava/lang/Object;J)D

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v6

    .line 53
    invoke-static {p2, v4, v5}, Ldfz;->b(Ljava/lang/Object;J)D

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v3

    cmp-long v5, v6, v3

    if-nez v5, :cond_0

    goto :goto_3

    .line 7
    :cond_0
    :goto_2
    return v1

    .line 2
    :cond_1
    :goto_3
    add-int/lit8 v2, v2, 0x3

    goto/16 :goto_0

    .line 54
    :cond_2
    invoke-static {p1}, Lev;->M(Ljava/lang/Object;)Ldfr;

    move-result-object v0

    .line 55
    invoke-static {p2}, Lev;->M(Ljava/lang/Object;)Ldfr;

    move-result-object v2

    .line 56
    invoke-virtual {v0, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    return v1

    :cond_3
    iget-boolean v0, p0, Ldet;->h:Z

    if-eqz v0, :cond_4

    .line 57
    invoke-static {p1}, Lhl;->o(Ljava/lang/Object;)Lddb;

    move-result-object p1

    .line 58
    invoke-static {p2}, Lhl;->o(Ljava/lang/Object;)Lddb;

    move-result-object p2

    .line 59
    invoke-virtual {p1, p2}, Lddb;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1

    :cond_4
    const/4 p1, 0x1

    return p1

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_14
        :pswitch_13
        :pswitch_12
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
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public final k(Ljava/lang/Object;)Z
    .locals 17

    .line 1
    move-object/from16 v6, p0

    move-object/from16 v7, p1

    const v8, 0xfffff

    const/4 v9, 0x0

    const v0, 0xfffff

    const/4 v1, 0x0

    const/4 v10, 0x0

    :goto_0
    iget v2, v6, Ldet;->l:I

    const/4 v3, 0x1

    if-ge v10, v2, :cond_8

    iget-object v2, v6, Ldet;->k:[I

    aget v11, v2, v10

    .line 2
    invoke-direct {v6, v11}, Ldet;->s(I)I

    move-result v12

    .line 3
    invoke-direct {v6, v11}, Ldet;->C(I)I

    move-result v13

    iget-object v2, v6, Ldet;->c:[I

    add-int/lit8 v4, v11, 0x2

    .line 4
    aget v2, v2, v4

    and-int v4, v2, v8

    ushr-int/lit8 v2, v2, 0x14

    shl-int v14, v3, v2

    if-eq v4, v0, :cond_1

    if-eq v4, v8, :cond_0

    sget-object v0, Ldet;->b:Lsun/misc/Unsafe;

    int-to-long v1, v4

    .line 5
    invoke-virtual {v0, v7, v1, v2}, Lsun/misc/Unsafe;->getInt(Ljava/lang/Object;J)I

    move-result v1

    move/from16 v16, v1

    move v15, v4

    goto :goto_1

    .line 25
    :cond_0
    move/from16 v16, v1

    move v15, v4

    goto :goto_1

    :cond_1
    move v15, v0

    move/from16 v16, v1

    .line 5
    :goto_1
    const/high16 v0, 0x10000000

    and-int/2addr v0, v13

    if-eqz v0, :cond_3

    .line 6
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move v2, v11

    move v3, v15

    move/from16 v4, v16

    move v5, v14

    invoke-direct/range {v0 .. v5}, Ldet;->S(Ljava/lang/Object;IIII)Z

    move-result v0

    if-eqz v0, :cond_2

    goto :goto_2

    .line 25
    :cond_2
    return v9

    .line 6
    :cond_3
    :goto_2
    invoke-static {v13}, Ldet;->B(I)I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    goto/16 :goto_4

    .line 22
    :sswitch_0
    invoke-direct {v6, v7, v12, v11}, Ldet;->U(Ljava/lang/Object;II)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 23
    invoke-direct {v6, v11}, Ldet;->G(I)Ldfg;

    move-result-object v0

    invoke-static {v7, v13, v0}, Ldet;->T(Ljava/lang/Object;ILdfg;)Z

    move-result v0

    if-nez v0, :cond_7

    return v9

    .line 12
    :sswitch_1
    invoke-static {v13}, Ldet;->D(I)J

    move-result-wide v0

    .line 13
    invoke-static {v7, v0, v1}, Ldfz;->h(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v0

    .line 14
    check-cast v0, Ldem;

    .line 15
    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_7

    .line 16
    invoke-direct {v6, v11}, Ldet;->H(I)Ljava/lang/Object;

    move-result-object v1

    .line 17
    invoke-static {v1}, Lev;->U(Ljava/lang/Object;)Ldek;

    move-result-object v1

    iget-object v1, v1, Ldek;->c:Ldgc;

    iget-object v1, v1, Ldgc;->s:Ldgd;

    .line 18
    sget-object v2, Ldgd;->i:Ldgd;

    if-ne v1, v2, :cond_7

    .line 19
    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x0

    :cond_4
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_7

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    if-nez v1, :cond_5

    .line 20
    sget-object v1, Ldez;->a:Ldez;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v1, v3}, Ldez;->a(Ljava/lang/Class;)Ldfg;

    move-result-object v1

    .line 21
    :cond_5
    invoke-interface {v1, v2}, Ldfg;->k(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4

    return v9

    .line 6
    :sswitch_2
    invoke-static {v13}, Ldet;->D(I)J

    move-result-wide v0

    .line 7
    invoke-static {v7, v0, v1}, Ldfz;->h(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 8
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_7

    .line 9
    invoke-direct {v6, v11}, Ldet;->G(I)Ldfg;

    move-result-object v1

    const/4 v2, 0x0

    .line 10
    :goto_3
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_7

    .line 11
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    .line 12
    invoke-interface {v1, v3}, Ldfg;->k(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_6

    return v9

    :cond_6
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    .line 24
    :sswitch_3
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move v2, v11

    move v3, v15

    move/from16 v4, v16

    move v5, v14

    invoke-direct/range {v0 .. v5}, Ldet;->S(Ljava/lang/Object;IIII)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 25
    invoke-direct {v6, v11}, Ldet;->G(I)Ldfg;

    move-result-object v0

    invoke-static {v7, v13, v0}, Ldet;->T(Ljava/lang/Object;ILdfg;)Z

    move-result v0

    if-nez v0, :cond_7

    return v9

    .line 6
    :cond_7
    :goto_4
    add-int/lit8 v10, v10, 0x1

    move v0, v15

    move/from16 v1, v16

    goto/16 :goto_0

    .line 25
    :cond_8
    iget-boolean v0, v6, Ldet;->h:Z

    if-eqz v0, :cond_9

    .line 26
    invoke-static/range {p1 .. p1}, Lhl;->o(Ljava/lang/Object;)Lddb;

    move-result-object v0

    invoke-virtual {v0}, Lddb;->i()Z

    move-result v0

    if-nez v0, :cond_9

    return v9

    :cond_9
    return v3

    :sswitch_data_0
    .sparse-switch
        0x9 -> :sswitch_3
        0x11 -> :sswitch_3
        0x1b -> :sswitch_2
        0x31 -> :sswitch_2
        0x32 -> :sswitch_1
        0x3c -> :sswitch_0
        0x44 -> :sswitch_0
    .end sparse-switch
.end method

.method public final l(Ljava/lang/Object;Ldcv;)V
    .locals 12

    .line 1
    iget-boolean v0, p0, Ldet;->j:Z

    if-eqz v0, :cond_7

    iget-boolean v0, p0, Ldet;->h:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-static {p1}, Lhl;->o(Ljava/lang/Object;)Lddb;

    move-result-object v0

    .line 2
    invoke-virtual {v0}, Lddb;->h()Z

    move-result v2

    if-nez v2, :cond_0

    .line 3
    invoke-virtual {v0}, Lddb;->d()Ljava/util/Iterator;

    move-result-object v0

    .line 4
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    goto :goto_0

    .line 206
    :cond_0
    move-object v0, v1

    move-object v2, v0

    .line 4
    :goto_0
    iget-object v3, p0, Ldet;->c:[I

    .line 5
    array-length v3, v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    :goto_1
    if-ge v5, v3, :cond_4

    .line 6
    invoke-direct {p0, v5}, Ldet;->C(I)I

    move-result v6

    .line 7
    invoke-direct {p0, v5}, Ldet;->s(I)I

    move-result v7

    :goto_2
    if-eqz v2, :cond_2

    .line 8
    invoke-static {v2}, Lhl;->n(Ljava/util/Map$Entry;)V

    const v8, 0x13f38d82

    if-lt v7, v8, :cond_2

    .line 9
    invoke-static {p2, v2}, Lhl;->r(Ldcv;Ljava/util/Map$Entry;)V

    .line 10
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    goto :goto_2

    :cond_1
    move-object v2, v1

    goto :goto_2

    :cond_2
    invoke-static {v6}, Ldet;->B(I)I

    move-result v8

    const/4 v9, 0x1

    packed-switch v8, :pswitch_data_0

    goto/16 :goto_3

    .line 11
    :pswitch_0
    invoke-direct {p0, p1, v7, v5}, Ldet;->U(Ljava/lang/Object;II)Z

    move-result v8

    if-eqz v8, :cond_3

    invoke-static {v6}, Ldet;->D(I)J

    move-result-wide v8

    .line 12
    invoke-static {p1, v8, v9}, Ldfz;->h(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v6

    .line 13
    invoke-direct {p0, v5}, Ldet;->G(I)Ldfg;

    move-result-object v8

    .line 14
    invoke-virtual {p2, v7, v6, v8}, Ldcv;->h(ILjava/lang/Object;Ldfg;)V

    goto/16 :goto_3

    .line 15
    :pswitch_1
    invoke-direct {p0, p1, v7, v5}, Ldet;->U(Ljava/lang/Object;II)Z

    move-result v8

    if-eqz v8, :cond_3

    invoke-static {v6}, Ldet;->D(I)J

    move-result-wide v8

    .line 16
    invoke-static {p1, v8, v9}, Ldet;->E(Ljava/lang/Object;J)J

    move-result-wide v8

    invoke-virtual {p2, v7, v8, v9}, Ldcv;->p(IJ)V

    goto/16 :goto_3

    .line 17
    :pswitch_2
    invoke-direct {p0, p1, v7, v5}, Ldet;->U(Ljava/lang/Object;II)Z

    move-result v8

    if-eqz v8, :cond_3

    invoke-static {v6}, Ldet;->D(I)J

    move-result-wide v8

    .line 18
    invoke-static {p1, v8, v9}, Ldet;->t(Ljava/lang/Object;J)I

    move-result v6

    invoke-virtual {p2, v7, v6}, Ldcv;->o(II)V

    goto/16 :goto_3

    .line 19
    :pswitch_3
    invoke-direct {p0, p1, v7, v5}, Ldet;->U(Ljava/lang/Object;II)Z

    move-result v8

    if-eqz v8, :cond_3

    invoke-static {v6}, Ldet;->D(I)J

    move-result-wide v8

    .line 20
    invoke-static {p1, v8, v9}, Ldet;->E(Ljava/lang/Object;J)J

    move-result-wide v8

    invoke-virtual {p2, v7, v8, v9}, Ldcv;->n(IJ)V

    goto/16 :goto_3

    .line 21
    :pswitch_4
    invoke-direct {p0, p1, v7, v5}, Ldet;->U(Ljava/lang/Object;II)Z

    move-result v8

    if-eqz v8, :cond_3

    invoke-static {v6}, Ldet;->D(I)J

    move-result-wide v8

    .line 22
    invoke-static {p1, v8, v9}, Ldet;->t(Ljava/lang/Object;J)I

    move-result v6

    invoke-virtual {p2, v7, v6}, Ldcv;->m(II)V

    goto/16 :goto_3

    .line 23
    :pswitch_5
    invoke-direct {p0, p1, v7, v5}, Ldet;->U(Ljava/lang/Object;II)Z

    move-result v8

    if-eqz v8, :cond_3

    invoke-static {v6}, Ldet;->D(I)J

    move-result-wide v8

    .line 24
    invoke-static {p1, v8, v9}, Ldet;->t(Ljava/lang/Object;J)I

    move-result v6

    invoke-virtual {p2, v7, v6}, Ldcv;->d(II)V

    goto/16 :goto_3

    .line 25
    :pswitch_6
    invoke-direct {p0, p1, v7, v5}, Ldet;->U(Ljava/lang/Object;II)Z

    move-result v8

    if-eqz v8, :cond_3

    invoke-static {v6}, Ldet;->D(I)J

    move-result-wide v8

    .line 26
    invoke-static {p1, v8, v9}, Ldet;->t(Ljava/lang/Object;J)I

    move-result v6

    invoke-virtual {p2, v7, v6}, Ldcv;->r(II)V

    goto/16 :goto_3

    .line 27
    :pswitch_7
    invoke-direct {p0, p1, v7, v5}, Ldet;->U(Ljava/lang/Object;II)Z

    move-result v8

    if-eqz v8, :cond_3

    invoke-static {v6}, Ldet;->D(I)J

    move-result-wide v8

    .line 28
    invoke-static {p1, v8, v9}, Ldfz;->h(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ldcl;

    .line 29
    invoke-virtual {p2, v7, v6}, Ldcv;->b(ILdcl;)V

    goto/16 :goto_3

    .line 30
    :pswitch_8
    invoke-direct {p0, p1, v7, v5}, Ldet;->U(Ljava/lang/Object;II)Z

    move-result v8

    if-eqz v8, :cond_3

    invoke-static {v6}, Ldet;->D(I)J

    move-result-wide v8

    .line 31
    invoke-static {p1, v8, v9}, Ldfz;->h(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v6

    .line 32
    invoke-direct {p0, v5}, Ldet;->G(I)Ldfg;

    move-result-object v8

    invoke-virtual {p2, v7, v6, v8}, Ldcv;->k(ILjava/lang/Object;Ldfg;)V

    goto/16 :goto_3

    .line 33
    :pswitch_9
    invoke-direct {p0, p1, v7, v5}, Ldet;->U(Ljava/lang/Object;II)Z

    move-result v8

    if-eqz v8, :cond_3

    invoke-static {v6}, Ldet;->D(I)J

    move-result-wide v8

    .line 34
    invoke-static {p1, v8, v9}, Ldfz;->h(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v6

    invoke-static {v7, v6, p2}, Ldet;->aa(ILjava/lang/Object;Ldcv;)V

    goto/16 :goto_3

    .line 35
    :pswitch_a
    invoke-direct {p0, p1, v7, v5}, Ldet;->U(Ljava/lang/Object;II)Z

    move-result v8

    if-eqz v8, :cond_3

    invoke-static {v6}, Ldet;->D(I)J

    move-result-wide v8

    .line 36
    invoke-static {p1, v8, v9}, Ldet;->V(Ljava/lang/Object;J)Z

    move-result v6

    invoke-virtual {p2, v7, v6}, Ldcv;->a(IZ)V

    goto/16 :goto_3

    .line 37
    :pswitch_b
    invoke-direct {p0, p1, v7, v5}, Ldet;->U(Ljava/lang/Object;II)Z

    move-result v8

    if-eqz v8, :cond_3

    invoke-static {v6}, Ldet;->D(I)J

    move-result-wide v8

    .line 38
    invoke-static {p1, v8, v9}, Ldet;->t(Ljava/lang/Object;J)I

    move-result v6

    invoke-virtual {p2, v7, v6}, Ldcv;->e(II)V

    goto/16 :goto_3

    .line 39
    :pswitch_c
    invoke-direct {p0, p1, v7, v5}, Ldet;->U(Ljava/lang/Object;II)Z

    move-result v8

    if-eqz v8, :cond_3

    invoke-static {v6}, Ldet;->D(I)J

    move-result-wide v8

    .line 40
    invoke-static {p1, v8, v9}, Ldet;->E(Ljava/lang/Object;J)J

    move-result-wide v8

    invoke-virtual {p2, v7, v8, v9}, Ldcv;->f(IJ)V

    goto/16 :goto_3

    .line 41
    :pswitch_d
    invoke-direct {p0, p1, v7, v5}, Ldet;->U(Ljava/lang/Object;II)Z

    move-result v8

    if-eqz v8, :cond_3

    invoke-static {v6}, Ldet;->D(I)J

    move-result-wide v8

    .line 42
    invoke-static {p1, v8, v9}, Ldet;->t(Ljava/lang/Object;J)I

    move-result v6

    invoke-virtual {p2, v7, v6}, Ldcv;->i(II)V

    goto/16 :goto_3

    .line 43
    :pswitch_e
    invoke-direct {p0, p1, v7, v5}, Ldet;->U(Ljava/lang/Object;II)Z

    move-result v8

    if-eqz v8, :cond_3

    invoke-static {v6}, Ldet;->D(I)J

    move-result-wide v8

    .line 44
    invoke-static {p1, v8, v9}, Ldet;->E(Ljava/lang/Object;J)J

    move-result-wide v8

    invoke-virtual {p2, v7, v8, v9}, Ldcv;->s(IJ)V

    goto/16 :goto_3

    .line 45
    :pswitch_f
    invoke-direct {p0, p1, v7, v5}, Ldet;->U(Ljava/lang/Object;II)Z

    move-result v8

    if-eqz v8, :cond_3

    invoke-static {v6}, Ldet;->D(I)J

    move-result-wide v8

    .line 46
    invoke-static {p1, v8, v9}, Ldet;->E(Ljava/lang/Object;J)J

    move-result-wide v8

    invoke-virtual {p2, v7, v8, v9}, Ldcv;->j(IJ)V

    goto/16 :goto_3

    .line 47
    :pswitch_10
    invoke-direct {p0, p1, v7, v5}, Ldet;->U(Ljava/lang/Object;II)Z

    move-result v8

    if-eqz v8, :cond_3

    invoke-static {v6}, Ldet;->D(I)J

    move-result-wide v8

    .line 48
    invoke-static {p1, v8, v9}, Ldet;->p(Ljava/lang/Object;J)F

    move-result v6

    invoke-virtual {p2, v7, v6}, Ldcv;->g(IF)V

    goto/16 :goto_3

    .line 49
    :pswitch_11
    invoke-direct {p0, p1, v7, v5}, Ldet;->U(Ljava/lang/Object;II)Z

    move-result v8

    if-eqz v8, :cond_3

    invoke-static {v6}, Ldet;->D(I)J

    move-result-wide v8

    .line 50
    invoke-static {p1, v8, v9}, Ldet;->o(Ljava/lang/Object;J)D

    move-result-wide v8

    invoke-virtual {p2, v7, v8, v9}, Ldcv;->c(ID)V

    goto/16 :goto_3

    :pswitch_12
    invoke-static {v6}, Ldet;->D(I)J

    move-result-wide v8

    .line 51
    invoke-static {p1, v8, v9}, Ldfz;->h(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v6

    invoke-direct {p0, p2, v7, v6, v5}, Ldet;->Z(Ldcv;ILjava/lang/Object;I)V

    goto/16 :goto_3

    .line 52
    :pswitch_13
    invoke-direct {p0, v5}, Ldet;->s(I)I

    move-result v7

    invoke-static {v6}, Ldet;->D(I)J

    move-result-wide v8

    .line 53
    invoke-static {p1, v8, v9}, Ldfz;->h(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/List;

    .line 54
    invoke-direct {p0, v5}, Ldet;->G(I)Ldfg;

    move-result-object v8

    .line 55
    invoke-static {v7, v6, p2, v8}, Ldfh;->I(ILjava/util/List;Ldcv;Ldfg;)V

    goto/16 :goto_3

    .line 56
    :pswitch_14
    invoke-direct {p0, v5}, Ldet;->s(I)I

    move-result v7

    invoke-static {v6}, Ldet;->D(I)J

    move-result-wide v10

    .line 57
    invoke-static {p1, v10, v11}, Ldfz;->h(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/List;

    .line 58
    invoke-static {v7, v6, p2, v9}, Ldfh;->P(ILjava/util/List;Ldcv;Z)V

    goto/16 :goto_3

    .line 59
    :pswitch_15
    invoke-direct {p0, v5}, Ldet;->s(I)I

    move-result v7

    invoke-static {v6}, Ldet;->D(I)J

    move-result-wide v10

    .line 60
    invoke-static {p1, v10, v11}, Ldfz;->h(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/List;

    .line 61
    invoke-static {v7, v6, p2, v9}, Ldfh;->O(ILjava/util/List;Ldcv;Z)V

    goto/16 :goto_3

    .line 62
    :pswitch_16
    invoke-direct {p0, v5}, Ldet;->s(I)I

    move-result v7

    invoke-static {v6}, Ldet;->D(I)J

    move-result-wide v10

    .line 63
    invoke-static {p1, v10, v11}, Ldfz;->h(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/List;

    .line 64
    invoke-static {v7, v6, p2, v9}, Ldfh;->N(ILjava/util/List;Ldcv;Z)V

    goto/16 :goto_3

    .line 65
    :pswitch_17
    invoke-direct {p0, v5}, Ldet;->s(I)I

    move-result v7

    invoke-static {v6}, Ldet;->D(I)J

    move-result-wide v10

    .line 66
    invoke-static {p1, v10, v11}, Ldfz;->h(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/List;

    .line 67
    invoke-static {v7, v6, p2, v9}, Ldfh;->M(ILjava/util/List;Ldcv;Z)V

    goto/16 :goto_3

    .line 68
    :pswitch_18
    invoke-direct {p0, v5}, Ldet;->s(I)I

    move-result v7

    invoke-static {v6}, Ldet;->D(I)J

    move-result-wide v10

    .line 69
    invoke-static {p1, v10, v11}, Ldfz;->h(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/List;

    .line 70
    invoke-static {v7, v6, p2, v9}, Ldfh;->E(ILjava/util/List;Ldcv;Z)V

    goto/16 :goto_3

    .line 71
    :pswitch_19
    invoke-direct {p0, v5}, Ldet;->s(I)I

    move-result v7

    invoke-static {v6}, Ldet;->D(I)J

    move-result-wide v10

    .line 72
    invoke-static {p1, v10, v11}, Ldfz;->h(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/List;

    .line 73
    invoke-static {v7, v6, p2, v9}, Ldfh;->R(ILjava/util/List;Ldcv;Z)V

    goto/16 :goto_3

    .line 74
    :pswitch_1a
    invoke-direct {p0, v5}, Ldet;->s(I)I

    move-result v7

    invoke-static {v6}, Ldet;->D(I)J

    move-result-wide v10

    .line 75
    invoke-static {p1, v10, v11}, Ldfz;->h(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/List;

    .line 76
    invoke-static {v7, v6, p2, v9}, Ldfh;->B(ILjava/util/List;Ldcv;Z)V

    goto/16 :goto_3

    .line 77
    :pswitch_1b
    invoke-direct {p0, v5}, Ldet;->s(I)I

    move-result v7

    invoke-static {v6}, Ldet;->D(I)J

    move-result-wide v10

    .line 78
    invoke-static {p1, v10, v11}, Ldfz;->h(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/List;

    .line 79
    invoke-static {v7, v6, p2, v9}, Ldfh;->F(ILjava/util/List;Ldcv;Z)V

    goto/16 :goto_3

    .line 80
    :pswitch_1c
    invoke-direct {p0, v5}, Ldet;->s(I)I

    move-result v7

    invoke-static {v6}, Ldet;->D(I)J

    move-result-wide v10

    .line 81
    invoke-static {p1, v10, v11}, Ldfz;->h(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/List;

    .line 82
    invoke-static {v7, v6, p2, v9}, Ldfh;->G(ILjava/util/List;Ldcv;Z)V

    goto/16 :goto_3

    .line 83
    :pswitch_1d
    invoke-direct {p0, v5}, Ldet;->s(I)I

    move-result v7

    invoke-static {v6}, Ldet;->D(I)J

    move-result-wide v10

    .line 84
    invoke-static {p1, v10, v11}, Ldfz;->h(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/List;

    .line 85
    invoke-static {v7, v6, p2, v9}, Ldfh;->J(ILjava/util/List;Ldcv;Z)V

    goto/16 :goto_3

    .line 86
    :pswitch_1e
    invoke-direct {p0, v5}, Ldet;->s(I)I

    move-result v7

    invoke-static {v6}, Ldet;->D(I)J

    move-result-wide v10

    .line 87
    invoke-static {p1, v10, v11}, Ldfz;->h(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/List;

    .line 88
    invoke-static {v7, v6, p2, v9}, Ldfh;->S(ILjava/util/List;Ldcv;Z)V

    goto/16 :goto_3

    .line 89
    :pswitch_1f
    invoke-direct {p0, v5}, Ldet;->s(I)I

    move-result v7

    invoke-static {v6}, Ldet;->D(I)J

    move-result-wide v10

    .line 90
    invoke-static {p1, v10, v11}, Ldfz;->h(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/List;

    .line 91
    invoke-static {v7, v6, p2, v9}, Ldfh;->K(ILjava/util/List;Ldcv;Z)V

    goto/16 :goto_3

    .line 92
    :pswitch_20
    invoke-direct {p0, v5}, Ldet;->s(I)I

    move-result v7

    invoke-static {v6}, Ldet;->D(I)J

    move-result-wide v10

    .line 93
    invoke-static {p1, v10, v11}, Ldfz;->h(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/List;

    .line 94
    invoke-static {v7, v6, p2, v9}, Ldfh;->H(ILjava/util/List;Ldcv;Z)V

    goto/16 :goto_3

    .line 95
    :pswitch_21
    invoke-direct {p0, v5}, Ldet;->s(I)I

    move-result v7

    invoke-static {v6}, Ldet;->D(I)J

    move-result-wide v10

    .line 96
    invoke-static {p1, v10, v11}, Ldfz;->h(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/List;

    .line 97
    invoke-static {v7, v6, p2, v9}, Ldfh;->D(ILjava/util/List;Ldcv;Z)V

    goto/16 :goto_3

    .line 98
    :pswitch_22
    invoke-direct {p0, v5}, Ldet;->s(I)I

    move-result v7

    invoke-static {v6}, Ldet;->D(I)J

    move-result-wide v8

    .line 99
    invoke-static {p1, v8, v9}, Ldfz;->h(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/List;

    .line 100
    invoke-static {v7, v6, p2, v4}, Ldfh;->P(ILjava/util/List;Ldcv;Z)V

    goto/16 :goto_3

    .line 101
    :pswitch_23
    invoke-direct {p0, v5}, Ldet;->s(I)I

    move-result v7

    invoke-static {v6}, Ldet;->D(I)J

    move-result-wide v8

    .line 102
    invoke-static {p1, v8, v9}, Ldfz;->h(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/List;

    .line 103
    invoke-static {v7, v6, p2, v4}, Ldfh;->O(ILjava/util/List;Ldcv;Z)V

    goto/16 :goto_3

    .line 104
    :pswitch_24
    invoke-direct {p0, v5}, Ldet;->s(I)I

    move-result v7

    invoke-static {v6}, Ldet;->D(I)J

    move-result-wide v8

    .line 105
    invoke-static {p1, v8, v9}, Ldfz;->h(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/List;

    .line 106
    invoke-static {v7, v6, p2, v4}, Ldfh;->N(ILjava/util/List;Ldcv;Z)V

    goto/16 :goto_3

    .line 107
    :pswitch_25
    invoke-direct {p0, v5}, Ldet;->s(I)I

    move-result v7

    invoke-static {v6}, Ldet;->D(I)J

    move-result-wide v8

    .line 108
    invoke-static {p1, v8, v9}, Ldfz;->h(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/List;

    .line 109
    invoke-static {v7, v6, p2, v4}, Ldfh;->M(ILjava/util/List;Ldcv;Z)V

    goto/16 :goto_3

    .line 110
    :pswitch_26
    invoke-direct {p0, v5}, Ldet;->s(I)I

    move-result v7

    invoke-static {v6}, Ldet;->D(I)J

    move-result-wide v8

    .line 111
    invoke-static {p1, v8, v9}, Ldfz;->h(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/List;

    .line 112
    invoke-static {v7, v6, p2, v4}, Ldfh;->E(ILjava/util/List;Ldcv;Z)V

    goto/16 :goto_3

    .line 113
    :pswitch_27
    invoke-direct {p0, v5}, Ldet;->s(I)I

    move-result v7

    invoke-static {v6}, Ldet;->D(I)J

    move-result-wide v8

    .line 114
    invoke-static {p1, v8, v9}, Ldfz;->h(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/List;

    .line 115
    invoke-static {v7, v6, p2, v4}, Ldfh;->R(ILjava/util/List;Ldcv;Z)V

    goto/16 :goto_3

    .line 116
    :pswitch_28
    invoke-direct {p0, v5}, Ldet;->s(I)I

    move-result v7

    invoke-static {v6}, Ldet;->D(I)J

    move-result-wide v8

    .line 117
    invoke-static {p1, v8, v9}, Ldfz;->h(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/List;

    .line 118
    invoke-static {v7, v6, p2}, Ldfh;->C(ILjava/util/List;Ldcv;)V

    goto/16 :goto_3

    .line 119
    :pswitch_29
    invoke-direct {p0, v5}, Ldet;->s(I)I

    move-result v7

    invoke-static {v6}, Ldet;->D(I)J

    move-result-wide v8

    .line 120
    invoke-static {p1, v8, v9}, Ldfz;->h(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/List;

    .line 121
    invoke-direct {p0, v5}, Ldet;->G(I)Ldfg;

    move-result-object v8

    .line 122
    invoke-static {v7, v6, p2, v8}, Ldfh;->L(ILjava/util/List;Ldcv;Ldfg;)V

    goto/16 :goto_3

    .line 123
    :pswitch_2a
    invoke-direct {p0, v5}, Ldet;->s(I)I

    move-result v7

    invoke-static {v6}, Ldet;->D(I)J

    move-result-wide v8

    .line 124
    invoke-static {p1, v8, v9}, Ldfz;->h(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/List;

    .line 125
    invoke-static {v7, v6, p2}, Ldfh;->Q(ILjava/util/List;Ldcv;)V

    goto/16 :goto_3

    .line 126
    :pswitch_2b
    invoke-direct {p0, v5}, Ldet;->s(I)I

    move-result v7

    invoke-static {v6}, Ldet;->D(I)J

    move-result-wide v8

    .line 127
    invoke-static {p1, v8, v9}, Ldfz;->h(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/List;

    .line 128
    invoke-static {v7, v6, p2, v4}, Ldfh;->B(ILjava/util/List;Ldcv;Z)V

    goto/16 :goto_3

    .line 129
    :pswitch_2c
    invoke-direct {p0, v5}, Ldet;->s(I)I

    move-result v7

    invoke-static {v6}, Ldet;->D(I)J

    move-result-wide v8

    .line 130
    invoke-static {p1, v8, v9}, Ldfz;->h(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/List;

    .line 131
    invoke-static {v7, v6, p2, v4}, Ldfh;->F(ILjava/util/List;Ldcv;Z)V

    goto/16 :goto_3

    .line 132
    :pswitch_2d
    invoke-direct {p0, v5}, Ldet;->s(I)I

    move-result v7

    invoke-static {v6}, Ldet;->D(I)J

    move-result-wide v8

    .line 133
    invoke-static {p1, v8, v9}, Ldfz;->h(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/List;

    .line 134
    invoke-static {v7, v6, p2, v4}, Ldfh;->G(ILjava/util/List;Ldcv;Z)V

    goto/16 :goto_3

    .line 135
    :pswitch_2e
    invoke-direct {p0, v5}, Ldet;->s(I)I

    move-result v7

    invoke-static {v6}, Ldet;->D(I)J

    move-result-wide v8

    .line 136
    invoke-static {p1, v8, v9}, Ldfz;->h(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/List;

    .line 137
    invoke-static {v7, v6, p2, v4}, Ldfh;->J(ILjava/util/List;Ldcv;Z)V

    goto/16 :goto_3

    .line 138
    :pswitch_2f
    invoke-direct {p0, v5}, Ldet;->s(I)I

    move-result v7

    invoke-static {v6}, Ldet;->D(I)J

    move-result-wide v8

    .line 139
    invoke-static {p1, v8, v9}, Ldfz;->h(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/List;

    .line 140
    invoke-static {v7, v6, p2, v4}, Ldfh;->S(ILjava/util/List;Ldcv;Z)V

    goto/16 :goto_3

    .line 141
    :pswitch_30
    invoke-direct {p0, v5}, Ldet;->s(I)I

    move-result v7

    invoke-static {v6}, Ldet;->D(I)J

    move-result-wide v8

    .line 142
    invoke-static {p1, v8, v9}, Ldfz;->h(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/List;

    .line 143
    invoke-static {v7, v6, p2, v4}, Ldfh;->K(ILjava/util/List;Ldcv;Z)V

    goto/16 :goto_3

    .line 144
    :pswitch_31
    invoke-direct {p0, v5}, Ldet;->s(I)I

    move-result v7

    invoke-static {v6}, Ldet;->D(I)J

    move-result-wide v8

    .line 145
    invoke-static {p1, v8, v9}, Ldfz;->h(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/List;

    .line 146
    invoke-static {v7, v6, p2, v4}, Ldfh;->H(ILjava/util/List;Ldcv;Z)V

    goto/16 :goto_3

    .line 147
    :pswitch_32
    invoke-direct {p0, v5}, Ldet;->s(I)I

    move-result v7

    invoke-static {v6}, Ldet;->D(I)J

    move-result-wide v8

    .line 148
    invoke-static {p1, v8, v9}, Ldfz;->h(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/List;

    .line 149
    invoke-static {v7, v6, p2, v4}, Ldfh;->D(ILjava/util/List;Ldcv;Z)V

    goto/16 :goto_3

    .line 150
    :pswitch_33
    invoke-direct {p0, p1, v5}, Ldet;->R(Ljava/lang/Object;I)Z

    move-result v8

    if-eqz v8, :cond_3

    invoke-static {v6}, Ldet;->D(I)J

    move-result-wide v8

    .line 151
    invoke-static {p1, v8, v9}, Ldfz;->h(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v6

    .line 152
    invoke-direct {p0, v5}, Ldet;->G(I)Ldfg;

    move-result-object v8

    .line 153
    invoke-virtual {p2, v7, v6, v8}, Ldcv;->h(ILjava/lang/Object;Ldfg;)V

    goto/16 :goto_3

    .line 154
    :pswitch_34
    invoke-direct {p0, p1, v5}, Ldet;->R(Ljava/lang/Object;I)Z

    move-result v8

    if-eqz v8, :cond_3

    invoke-static {v6}, Ldet;->D(I)J

    move-result-wide v8

    .line 155
    invoke-static {p1, v8, v9}, Ldfz;->f(Ljava/lang/Object;J)J

    move-result-wide v8

    .line 156
    invoke-virtual {p2, v7, v8, v9}, Ldcv;->p(IJ)V

    goto/16 :goto_3

    .line 157
    :pswitch_35
    invoke-direct {p0, p1, v5}, Ldet;->R(Ljava/lang/Object;I)Z

    move-result v8

    if-eqz v8, :cond_3

    invoke-static {v6}, Ldet;->D(I)J

    move-result-wide v8

    .line 158
    invoke-static {p1, v8, v9}, Ldfz;->d(Ljava/lang/Object;J)I

    move-result v6

    .line 159
    invoke-virtual {p2, v7, v6}, Ldcv;->o(II)V

    goto/16 :goto_3

    .line 160
    :pswitch_36
    invoke-direct {p0, p1, v5}, Ldet;->R(Ljava/lang/Object;I)Z

    move-result v8

    if-eqz v8, :cond_3

    invoke-static {v6}, Ldet;->D(I)J

    move-result-wide v8

    .line 161
    invoke-static {p1, v8, v9}, Ldfz;->f(Ljava/lang/Object;J)J

    move-result-wide v8

    .line 162
    invoke-virtual {p2, v7, v8, v9}, Ldcv;->n(IJ)V

    goto/16 :goto_3

    .line 163
    :pswitch_37
    invoke-direct {p0, p1, v5}, Ldet;->R(Ljava/lang/Object;I)Z

    move-result v8

    if-eqz v8, :cond_3

    invoke-static {v6}, Ldet;->D(I)J

    move-result-wide v8

    .line 164
    invoke-static {p1, v8, v9}, Ldfz;->d(Ljava/lang/Object;J)I

    move-result v6

    .line 165
    invoke-virtual {p2, v7, v6}, Ldcv;->m(II)V

    goto/16 :goto_3

    .line 166
    :pswitch_38
    invoke-direct {p0, p1, v5}, Ldet;->R(Ljava/lang/Object;I)Z

    move-result v8

    if-eqz v8, :cond_3

    invoke-static {v6}, Ldet;->D(I)J

    move-result-wide v8

    .line 167
    invoke-static {p1, v8, v9}, Ldfz;->d(Ljava/lang/Object;J)I

    move-result v6

    .line 168
    invoke-virtual {p2, v7, v6}, Ldcv;->d(II)V

    goto/16 :goto_3

    .line 169
    :pswitch_39
    invoke-direct {p0, p1, v5}, Ldet;->R(Ljava/lang/Object;I)Z

    move-result v8

    if-eqz v8, :cond_3

    invoke-static {v6}, Ldet;->D(I)J

    move-result-wide v8

    .line 170
    invoke-static {p1, v8, v9}, Ldfz;->d(Ljava/lang/Object;J)I

    move-result v6

    .line 171
    invoke-virtual {p2, v7, v6}, Ldcv;->r(II)V

    goto/16 :goto_3

    .line 172
    :pswitch_3a
    invoke-direct {p0, p1, v5}, Ldet;->R(Ljava/lang/Object;I)Z

    move-result v8

    if-eqz v8, :cond_3

    invoke-static {v6}, Ldet;->D(I)J

    move-result-wide v8

    .line 173
    invoke-static {p1, v8, v9}, Ldfz;->h(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ldcl;

    .line 174
    invoke-virtual {p2, v7, v6}, Ldcv;->b(ILdcl;)V

    goto/16 :goto_3

    .line 175
    :pswitch_3b
    invoke-direct {p0, p1, v5}, Ldet;->R(Ljava/lang/Object;I)Z

    move-result v8

    if-eqz v8, :cond_3

    invoke-static {v6}, Ldet;->D(I)J

    move-result-wide v8

    .line 176
    invoke-static {p1, v8, v9}, Ldfz;->h(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v6

    .line 177
    invoke-direct {p0, v5}, Ldet;->G(I)Ldfg;

    move-result-object v8

    invoke-virtual {p2, v7, v6, v8}, Ldcv;->k(ILjava/lang/Object;Ldfg;)V

    goto/16 :goto_3

    .line 178
    :pswitch_3c
    invoke-direct {p0, p1, v5}, Ldet;->R(Ljava/lang/Object;I)Z

    move-result v8

    if-eqz v8, :cond_3

    invoke-static {v6}, Ldet;->D(I)J

    move-result-wide v8

    .line 179
    invoke-static {p1, v8, v9}, Ldfz;->h(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v6

    invoke-static {v7, v6, p2}, Ldet;->aa(ILjava/lang/Object;Ldcv;)V

    goto/16 :goto_3

    .line 180
    :pswitch_3d
    invoke-direct {p0, p1, v5}, Ldet;->R(Ljava/lang/Object;I)Z

    move-result v8

    if-eqz v8, :cond_3

    invoke-static {v6}, Ldet;->D(I)J

    move-result-wide v8

    .line 181
    invoke-static {p1, v8, v9}, Ldfz;->w(Ljava/lang/Object;J)Z

    move-result v6

    .line 182
    invoke-virtual {p2, v7, v6}, Ldcv;->a(IZ)V

    goto/16 :goto_3

    .line 183
    :pswitch_3e
    invoke-direct {p0, p1, v5}, Ldet;->R(Ljava/lang/Object;I)Z

    move-result v8

    if-eqz v8, :cond_3

    invoke-static {v6}, Ldet;->D(I)J

    move-result-wide v8

    .line 184
    invoke-static {p1, v8, v9}, Ldfz;->d(Ljava/lang/Object;J)I

    move-result v6

    .line 185
    invoke-virtual {p2, v7, v6}, Ldcv;->e(II)V

    goto :goto_3

    .line 186
    :pswitch_3f
    invoke-direct {p0, p1, v5}, Ldet;->R(Ljava/lang/Object;I)Z

    move-result v8

    if-eqz v8, :cond_3

    invoke-static {v6}, Ldet;->D(I)J

    move-result-wide v8

    .line 187
    invoke-static {p1, v8, v9}, Ldfz;->f(Ljava/lang/Object;J)J

    move-result-wide v8

    .line 188
    invoke-virtual {p2, v7, v8, v9}, Ldcv;->f(IJ)V

    goto :goto_3

    .line 189
    :pswitch_40
    invoke-direct {p0, p1, v5}, Ldet;->R(Ljava/lang/Object;I)Z

    move-result v8

    if-eqz v8, :cond_3

    invoke-static {v6}, Ldet;->D(I)J

    move-result-wide v8

    .line 190
    invoke-static {p1, v8, v9}, Ldfz;->d(Ljava/lang/Object;J)I

    move-result v6

    .line 191
    invoke-virtual {p2, v7, v6}, Ldcv;->i(II)V

    goto :goto_3

    .line 192
    :pswitch_41
    invoke-direct {p0, p1, v5}, Ldet;->R(Ljava/lang/Object;I)Z

    move-result v8

    if-eqz v8, :cond_3

    invoke-static {v6}, Ldet;->D(I)J

    move-result-wide v8

    .line 193
    invoke-static {p1, v8, v9}, Ldfz;->f(Ljava/lang/Object;J)J

    move-result-wide v8

    .line 194
    invoke-virtual {p2, v7, v8, v9}, Ldcv;->s(IJ)V

    goto :goto_3

    .line 195
    :pswitch_42
    invoke-direct {p0, p1, v5}, Ldet;->R(Ljava/lang/Object;I)Z

    move-result v8

    if-eqz v8, :cond_3

    invoke-static {v6}, Ldet;->D(I)J

    move-result-wide v8

    .line 196
    invoke-static {p1, v8, v9}, Ldfz;->f(Ljava/lang/Object;J)J

    move-result-wide v8

    .line 197
    invoke-virtual {p2, v7, v8, v9}, Ldcv;->j(IJ)V

    goto :goto_3

    .line 198
    :pswitch_43
    invoke-direct {p0, p1, v5}, Ldet;->R(Ljava/lang/Object;I)Z

    move-result v8

    if-eqz v8, :cond_3

    invoke-static {v6}, Ldet;->D(I)J

    move-result-wide v8

    .line 199
    invoke-static {p1, v8, v9}, Ldfz;->c(Ljava/lang/Object;J)F

    move-result v6

    .line 200
    invoke-virtual {p2, v7, v6}, Ldcv;->g(IF)V

    goto :goto_3

    .line 201
    :pswitch_44
    invoke-direct {p0, p1, v5}, Ldet;->R(Ljava/lang/Object;I)Z

    move-result v8

    if-eqz v8, :cond_3

    invoke-static {v6}, Ldet;->D(I)J

    move-result-wide v8

    .line 202
    invoke-static {p1, v8, v9}, Ldfz;->b(Ljava/lang/Object;J)D

    move-result-wide v8

    .line 203
    invoke-virtual {p2, v7, v8, v9}, Ldcv;->c(ID)V

    .line 10
    :cond_3
    :goto_3
    add-int/lit8 v5, v5, 0x3

    goto/16 :goto_1

    .line 203
    :cond_4
    nop

    :goto_4
    if-eqz v2, :cond_6

    .line 204
    invoke-static {p2, v2}, Lhl;->r(Ldcv;Ljava/util/Map$Entry;)V

    .line 205
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    goto :goto_4

    :cond_5
    move-object v2, v1

    goto :goto_4

    .line 206
    :cond_6
    invoke-static {p1, p2}, Ldet;->ad(Ljava/lang/Object;Ldcv;)V

    return-void

    .line 207
    :cond_7
    invoke-direct {p0, p1, p2}, Ldet;->Y(Ljava/lang/Object;Ldcv;)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_44
        :pswitch_43
        :pswitch_42
        :pswitch_41
        :pswitch_40
        :pswitch_3f
        :pswitch_3e
        :pswitch_3d
        :pswitch_3c
        :pswitch_3b
        :pswitch_3a
        :pswitch_39
        :pswitch_38
        :pswitch_37
        :pswitch_36
        :pswitch_35
        :pswitch_34
        :pswitch_33
        :pswitch_32
        :pswitch_31
        :pswitch_30
        :pswitch_2f
        :pswitch_2e
        :pswitch_2d
        :pswitch_2c
        :pswitch_2b
        :pswitch_2a
        :pswitch_29
        :pswitch_28
        :pswitch_27
        :pswitch_26
        :pswitch_25
        :pswitch_24
        :pswitch_23
        :pswitch_22
        :pswitch_21
        :pswitch_20
        :pswitch_1f
        :pswitch_1e
        :pswitch_1d
        :pswitch_1c
        :pswitch_1b
        :pswitch_1a
        :pswitch_19
        :pswitch_18
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
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
