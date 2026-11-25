.class public abstract Lddk;
.super Ldbv;
.source "PG"


# static fields
.field public static final r:Ljava/util/Map;


# instance fields
.field public s:Ldfr;

.field protected t:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lj$/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Lj$/util/concurrent/ConcurrentHashMap;-><init>()V

    sput-object v0, Lddk;->r:Ljava/util/Map;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ldbv;-><init>()V

    sget-object v0, Ldfr;->a:Ldfr;

    iput-object v0, p0, Lddk;->s:Ldfr;

    const/4 v0, -0x1

    iput v0, p0, Lddk;->t:I

    return-void
.end method

.method public static varargs B(Ljava/lang/reflect/Method;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    :try_start_0
    invoke-virtual {p0, p1, p2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    .line 8
    :catch_0
    move-exception p0

    .line 2
    invoke-virtual {p0}, Ljava/lang/reflect/InvocationTargetException;->getCause()Ljava/lang/Throwable;

    move-result-object p0

    .line 3
    instance-of p1, p0, Ljava/lang/RuntimeException;

    if-nez p1, :cond_1

    .line 5
    instance-of p1, p0, Ljava/lang/Error;

    if-eqz p1, :cond_0

    .line 6
    check-cast p0, Ljava/lang/Error;

    throw p0

    .line 4
    :cond_0
    new-instance p1, Ljava/lang/RuntimeException;

    .line 7
    const-string p2, "Unexpected exception thrown by generated accessor method."

    invoke-direct {p1, p2, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p1

    .line 4
    :cond_1
    check-cast p0, Ljava/lang/RuntimeException;

    throw p0

    .line 1
    :catch_1
    move-exception p0

    new-instance p1, Ljava/lang/RuntimeException;

    .line 8
    const-string p2, "Couldn\'t use Java reflection to implement protocol message reflection."

    invoke-direct {p1, p2, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p1
.end method

.method protected static C(Lder;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .line 1
    new-instance v0, Ldfb;

    invoke-direct {v0, p0, p1, p2}, Ldfb;-><init>(Lder;Ljava/lang/String;[Ljava/lang/Object;)V

    return-object v0
.end method

.method protected static D(Ljava/lang/Class;Lddk;)V
    .locals 1

    .line 1
    sget-object v0, Lddk;->r:Ljava/util/Map;

    invoke-interface {v0, p0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public static F(Lddk;)V
    .locals 0

    .line 1
    if-eqz p0, :cond_1

    invoke-virtual {p0}, Lddk;->l()Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    invoke-static {}, Lddk;->i()Ldfq;

    move-result-object p0

    .line 3
    invoke-virtual {p0}, Ldfq;->a()Lddu;

    move-result-object p0

    .line 4
    throw p0

    :cond_1
    :goto_0
    return-void
.end method

.method public static p(Lddk;[B)Lddk;
    .locals 3

    .line 1
    array-length v0, p1

    .line 2
    invoke-static {}, Ldcz;->a()Ldcz;

    move-result-object v1

    .line 1
    const/4 v2, 0x0

    invoke-static {p0, p1, v2, v0, v1}, Lddk;->t(Lddk;[BIILdcz;)Lddk;

    move-result-object p0

    invoke-static {p0}, Lddk;->F(Lddk;)V

    return-object p0
.end method

.method public static q(Lddk;Ljava/io/InputStream;Ldcz;)Lddk;
    .locals 1

    .line 1
    invoke-static {p1}, Ldcp;->H(Ljava/io/InputStream;)Ldcp;

    move-result-object p1

    .line 2
    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Lddk;->E(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lddk;

    .line 3
    :try_start_0
    sget-object v0, Ldez;->a:Ldez;

    invoke-virtual {v0, p0}, Ldez;->b(Ljava/lang/Object;)Ldfg;

    move-result-object v0

    .line 4
    invoke-static {p1}, Ldcq;->p(Ldcp;)Ldcq;

    move-result-object p1

    invoke-interface {v0, p0, p1, p2}, Ldfg;->h(Ljava/lang/Object;Ldfc;Ldcz;)V

    .line 5
    invoke-interface {v0, p0}, Ldfg;->f(Ljava/lang/Object;)V
    :try_end_0
    .catch Lddu; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 14
    invoke-static {p0}, Lddk;->F(Lddk;)V

    return-object p0

    .line 11
    :catch_0
    move-exception p0

    .line 6
    invoke-virtual {p0}, Ljava/lang/RuntimeException;->getCause()Ljava/lang/Throwable;

    move-result-object p1

    instance-of p1, p1, Lddu;

    if-eqz p1, :cond_0

    .line 7
    invoke-virtual {p0}, Ljava/lang/RuntimeException;->getCause()Ljava/lang/Throwable;

    move-result-object p0

    check-cast p0, Lddu;

    throw p0

    .line 8
    :cond_0
    throw p0

    .line 12
    :catch_1
    move-exception p0

    .line 9
    invoke-virtual {p0}, Ljava/io/IOException;->getCause()Ljava/lang/Throwable;

    move-result-object p1

    instance-of p1, p1, Lddu;

    if-eqz p1, :cond_1

    .line 10
    invoke-virtual {p0}, Ljava/io/IOException;->getCause()Ljava/lang/Throwable;

    move-result-object p0

    check-cast p0, Lddu;

    throw p0

    .line 12
    :cond_1
    new-instance p1, Lddu;

    .line 11
    invoke-direct {p1, p0}, Lddu;-><init>(Ljava/io/IOException;)V

    throw p1

    .line 14
    :catch_2
    move-exception p0

    iget-boolean p1, p0, Lddu;->a:Z

    if-eqz p1, :cond_2

    new-instance p1, Lddu;

    .line 13
    invoke-direct {p1, p0}, Lddu;-><init>(Ljava/io/IOException;)V

    .line 12
    throw p1

    :cond_2
    throw p0
.end method

.method public static r(Lddk;[BLdcz;)Lddk;
    .locals 2

    .line 1
    array-length v0, p1

    .line 2
    const/4 v1, 0x0

    invoke-static {p0, p1, v1, v0, p2}, Lddk;->t(Lddk;[BIILdcz;)Lddk;

    move-result-object p0

    .line 1
    invoke-static {p0}, Lddk;->F(Lddk;)V

    return-object p0
.end method

.method static s(Lddk;Ldcp;Ldcz;)Lddk;
    .locals 1

    .line 1
    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Lddk;->E(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lddk;

    .line 2
    :try_start_0
    sget-object v0, Ldez;->a:Ldez;

    invoke-virtual {v0, p0}, Ldez;->b(Ljava/lang/Object;)Ldfg;

    move-result-object v0

    .line 3
    invoke-static {p1}, Ldcq;->p(Ldcp;)Ldcq;

    move-result-object p1

    invoke-interface {v0, p0, p1, p2}, Ldfg;->h(Ljava/lang/Object;Ldfc;Ldcz;)V

    .line 4
    invoke-interface {v0, p0}, Ldfg;->f(Ljava/lang/Object;)V
    :try_end_0
    .catch Lddu; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    .line 10
    :catch_0
    move-exception p0

    .line 5
    invoke-virtual {p0}, Ljava/lang/RuntimeException;->getCause()Ljava/lang/Throwable;

    move-result-object p1

    instance-of p1, p1, Lddu;

    if-eqz p1, :cond_0

    .line 6
    invoke-virtual {p0}, Ljava/lang/RuntimeException;->getCause()Ljava/lang/Throwable;

    move-result-object p0

    check-cast p0, Lddu;

    throw p0

    .line 7
    :cond_0
    throw p0

    .line 11
    :catch_1
    move-exception p0

    .line 8
    invoke-virtual {p0}, Ljava/io/IOException;->getCause()Ljava/lang/Throwable;

    move-result-object p1

    instance-of p1, p1, Lddu;

    if-eqz p1, :cond_1

    .line 9
    invoke-virtual {p0}, Ljava/io/IOException;->getCause()Ljava/lang/Throwable;

    move-result-object p0

    check-cast p0, Lddu;

    throw p0

    .line 11
    :cond_1
    new-instance p1, Lddu;

    .line 10
    invoke-direct {p1, p0}, Lddu;-><init>(Ljava/io/IOException;)V

    throw p1

    .line 4
    :catch_2
    move-exception p0

    iget-boolean p1, p0, Lddu;->a:Z

    if-eqz p1, :cond_2

    new-instance p1, Lddu;

    .line 12
    invoke-direct {p1, p0}, Lddu;-><init>(Ljava/io/IOException;)V

    .line 11
    throw p1

    :cond_2
    throw p0
.end method

.method public static t(Lddk;[BIILdcz;)Lddk;
    .locals 7

    .line 1
    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Lddk;->E(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lddk;

    .line 2
    :try_start_0
    sget-object v0, Ldez;->a:Ldez;

    invoke-virtual {v0, p0}, Ldez;->b(Ljava/lang/Object;)Ldfg;

    move-result-object v6

    add-int v4, p2, p3

    new-instance v5, Ldca;

    .line 3
    invoke-direct {v5, p4}, Ldca;-><init>(Ldcz;)V

    move-object v0, v6

    move-object v1, p0

    move-object v2, p1

    move v3, p2

    invoke-interface/range {v0 .. v5}, Ldfg;->i(Ljava/lang/Object;[BIILdca;)V

    .line 4
    invoke-interface {v6, p0}, Ldfg;->f(Ljava/lang/Object;)V

    .line 5
    iget p1, p0, Lddk;->q:I

    if-nez p1, :cond_0

    .line 6
    return-object p0

    .line 5
    :cond_0
    new-instance p0, Ljava/lang/RuntimeException;

    .line 6
    invoke-direct {p0}, Ljava/lang/RuntimeException;-><init>()V

    throw p0
    :try_end_0
    .catch Lddu; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    .line 7
    :catch_0
    move-exception p0

    invoke-static {}, Lddu;->i()Lddu;

    move-result-object p0

    throw p0

    .line 11
    :catch_1
    move-exception p0

    .line 8
    invoke-virtual {p0}, Ljava/io/IOException;->getCause()Ljava/lang/Throwable;

    move-result-object p1

    instance-of p1, p1, Lddu;

    if-eqz p1, :cond_1

    .line 9
    invoke-virtual {p0}, Ljava/io/IOException;->getCause()Ljava/lang/Throwable;

    move-result-object p0

    check-cast p0, Lddu;

    throw p0

    .line 11
    :cond_1
    new-instance p1, Lddu;

    .line 10
    invoke-direct {p1, p0}, Lddu;-><init>(Ljava/io/IOException;)V

    throw p1

    .line 6
    :catch_2
    move-exception p0

    iget-boolean p1, p0, Lddu;->a:Z

    if-eqz p1, :cond_2

    new-instance p1, Lddu;

    .line 12
    invoke-direct {p1, p0}, Lddu;-><init>(Ljava/io/IOException;)V

    .line 11
    throw p1

    :cond_2
    throw p0
.end method

.method public static u()Lddp;
    .locals 1

    .line 1
    sget-object v0, Lddl;->b:Lddl;

    return-object v0
.end method

.method public static v(Lddp;)Lddp;
    .locals 1

    .line 1
    invoke-interface {p0}, Lddp;->size()I

    move-result v0

    if-nez v0, :cond_0

    const/16 v0, 0xa

    goto :goto_0

    .line 2
    :cond_0
    add-int/2addr v0, v0

    :goto_0
    invoke-interface {p0, v0}, Lddp;->f(I)Lddp;

    move-result-object p0

    return-object p0
.end method

.method public static w()Lddq;
    .locals 1

    .line 1
    sget-object v0, Ldeg;->b:Ldeg;

    return-object v0
.end method

.method public static x(Lddq;)Lddq;
    .locals 1

    .line 1
    invoke-interface {p0}, Lddq;->size()I

    move-result v0

    if-nez v0, :cond_0

    const/16 v0, 0xa

    goto :goto_0

    .line 2
    :cond_0
    add-int/2addr v0, v0

    :goto_0
    invoke-interface {p0, v0}, Lddq;->a(I)Lddq;

    move-result-object p0

    return-object p0
.end method

.method public static y()Lddr;
    .locals 1

    .line 1
    sget-object v0, Ldfa;->b:Ldfa;

    return-object v0
.end method

.method public static z(Lddr;)Lddr;
    .locals 1

    .line 1
    invoke-interface {p0}, Lddr;->size()I

    move-result v0

    if-nez v0, :cond_0

    const/16 v0, 0xa

    goto :goto_0

    .line 2
    :cond_0
    add-int/2addr v0, v0

    :goto_0
    invoke-interface {p0, v0}, Lddr;->d(I)Lddr;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final A()Ldex;
    .locals 1

    .line 1
    const/4 v0, 0x7

    invoke-virtual {p0, v0}, Lddk;->E(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ldex;

    return-object v0
.end method

.method public final E(I)Ljava/lang/Object;
    .locals 1

    .line 1
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lddk;->a(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method protected abstract a(ILjava/lang/Object;)Ljava/lang/Object;
.end method

.method public final synthetic aF()Ldeq;
    .locals 1

    .line 1
    const/4 v0, 0x5

    invoke-virtual {p0, v0}, Lddk;->E(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lddf;

    return-object v0
.end method

.method public final aG(Ldcu;)V
    .locals 2

    .line 1
    sget-object v0, Ldez;->a:Ldez;

    .line 2
    invoke-virtual {v0, p0}, Ldez;->b(Ljava/lang/Object;)Ldfg;

    move-result-object v0

    iget-object v1, p1, Ldcu;->f:Ldcv;

    if-eqz v1, :cond_0

    goto :goto_0

    .line 4
    :cond_0
    new-instance v1, Ldcv;

    .line 3
    invoke-direct {v1, p1}, Ldcv;-><init>(Ldcu;)V

    .line 4
    :goto_0
    invoke-interface {v0, p0, v1}, Ldfg;->l(Ljava/lang/Object;Ldcv;)V

    return-void
.end method

.method public final synthetic aH()Ldeq;
    .locals 1

    .line 1
    const/4 v0, 0x5

    invoke-virtual {p0, v0}, Lddk;->E(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lddf;

    .line 2
    invoke-virtual {v0, p0}, Lddf;->n(Lddk;)V

    return-object v0
.end method

.method public final d()I
    .locals 1

    iget v0, p0, Lddk;->t:I

    return v0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 3

    .line 1
    if-ne p0, p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 v0, 0x0

    if-nez p1, :cond_1

    return v0

    :cond_1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    if-eq v1, v2, :cond_2

    return v0

    :cond_2
    sget-object v0, Ldez;->a:Ldez;

    invoke-virtual {v0, p0}, Ldez;->b(Ljava/lang/Object;)Ldfg;

    move-result-object v0

    check-cast p1, Lddk;

    invoke-interface {v0, p0, p1}, Ldfg;->j(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public final f(I)V
    .locals 0

    iput p1, p0, Lddk;->t:I

    return-void
.end method

.method public final hashCode()I
    .locals 1

    .line 1
    iget v0, p0, Lddk;->q:I

    if-eqz v0, :cond_0

    return v0

    :cond_0
    sget-object v0, Ldez;->a:Ldez;

    invoke-virtual {v0, p0}, Ldez;->b(Ljava/lang/Object;)Ldfg;

    move-result-object v0

    invoke-interface {v0, p0}, Ldfg;->b(Ljava/lang/Object;)I

    move-result v0

    iput v0, p0, Lddk;->q:I

    return v0
.end method

.method public final synthetic j()Lder;
    .locals 1

    .line 1
    const/4 v0, 0x6

    invoke-virtual {p0, v0}, Lddk;->E(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lddk;

    return-object v0
.end method

.method public final l()Z
    .locals 3

    .line 1
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    .line 2
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lddk;->E(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Byte;

    invoke-virtual {v2}, Ljava/lang/Byte;->byteValue()B

    move-result v2

    if-ne v2, v1, :cond_0

    goto :goto_1

    :cond_0
    if-nez v2, :cond_1

    const/4 v1, 0x0

    goto :goto_1

    .line 3
    :cond_1
    sget-object v2, Ldez;->a:Ldez;

    invoke-virtual {v2, p0}, Ldez;->b(Ljava/lang/Object;)Ldfg;

    move-result-object v2

    invoke-interface {v2, p0}, Ldfg;->k(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v0, :cond_3

    if-eq v1, v2, :cond_2

    const/4 v0, 0x0

    goto :goto_0

    .line 4
    :cond_2
    move-object v0, p0

    .line 3
    :goto_0
    const/4 v1, 0x2

    .line 4
    invoke-virtual {p0, v1, v0}, Lddk;->a(ILjava/lang/Object;)Ljava/lang/Object;

    return v2

    :cond_3
    move v1, v2

    .line 2
    :goto_1
    return v1
.end method

.method public final m()I
    .locals 2

    .line 1
    iget v0, p0, Lddk;->t:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    sget-object v0, Ldez;->a:Ldez;

    invoke-virtual {v0, p0}, Ldez;->b(Ljava/lang/Object;)Ldfg;

    move-result-object v0

    invoke-interface {v0, p0}, Ldfg;->a(Ljava/lang/Object;)I

    move-result v0

    iput v0, p0, Lddk;->t:I

    :cond_0
    return v0
.end method

.method public final n()Lddf;
    .locals 1

    .line 1
    const/4 v0, 0x5

    invoke-virtual {p0, v0}, Lddk;->E(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lddf;

    return-object v0
.end method

.method public final o(Lddk;)Lddf;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lddk;->n()Lddf;

    move-result-object v0

    invoke-virtual {v0, p1}, Lddf;->n(Lddk;)V

    return-object v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 3

    .line 1
    invoke-super {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    .line 2
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 3
    const-string v2, "# "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4
    const/4 v0, 0x0

    invoke-static {p0, v1, v0}, Lev;->T(Lder;Ljava/lang/StringBuilder;I)V

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
