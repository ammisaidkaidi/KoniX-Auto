.class public abstract Ldbv;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Lder;


# instance fields
.field public q:I


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Ldbv;->q:I

    return-void
.end method

.method static final i()Ldfq;
    .locals 1

    .line 1
    new-instance v0, Ldfq;

    invoke-direct {v0}, Ldfq;-><init>()V

    return-object v0
.end method


# virtual methods
.method public d()I
    .locals 1

    const/4 v0, 0x0

    throw v0
.end method

.method public final e()Ldcl;
    .locals 5

    .line 1
    :try_start_0
    invoke-virtual {p0}, Ldbv;->m()I

    move-result v0

    sget-object v1, Ldcl;->b:Ldcl;

    .line 2
    new-array v0, v0, [B

    .line 3
    invoke-static {v0}, Ldcu;->ai([B)Ldcu;

    move-result-object v1

    .line 4
    invoke-virtual {p0, v1}, Ldbv;->aG(Ldcu;)V

    .line 5
    invoke-static {v1, v0}, Lhl;->t(Ldcu;[B)Ldcl;

    move-result-object v0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 7
    return-object v0

    .line 5
    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/RuntimeException;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    .line 6
    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    new-instance v4, Ljava/lang/StringBuilder;

    add-int/lit8 v3, v3, 0x48

    invoke-direct {v4, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v3, "Serializing "

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " to a ByteString threw an IOException (should never happen)."

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 7
    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public f(I)V
    .locals 0

    const/4 p1, 0x0

    throw p1
.end method

.method public final g(Ljava/io/OutputStream;)V
    .locals 1

    .line 1
    invoke-virtual {p0}, Ldbv;->m()I

    move-result v0

    invoke-static {v0}, Ldcu;->U(I)I

    move-result v0

    .line 2
    invoke-static {p1, v0}, Ldcu;->aj(Ljava/io/OutputStream;I)Ldcu;

    move-result-object p1

    .line 3
    invoke-virtual {p0, p1}, Ldbv;->aG(Ldcu;)V

    .line 2
    check-cast p1, Ldcr;

    iget v0, p1, Ldcr;->c:I

    if-lez v0, :cond_0

    .line 4
    invoke-virtual {p1}, Ldcr;->i()V

    :cond_0
    return-void
.end method

.method public final h()[B
    .locals 5

    .line 1
    :try_start_0
    invoke-virtual {p0}, Ldbv;->m()I

    move-result v0

    new-array v0, v0, [B

    .line 2
    invoke-static {v0}, Ldcu;->ai([B)Ldcu;

    move-result-object v1

    .line 3
    invoke-virtual {p0, v1}, Ldbv;->aG(Ldcu;)V

    .line 4
    invoke-virtual {v1}, Ldcu;->ak()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 6
    return-object v0

    .line 4
    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/RuntimeException;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    .line 5
    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    new-instance v4, Ljava/lang/StringBuilder;

    add-int/lit8 v3, v3, 0x48

    invoke-direct {v4, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v3, "Serializing "

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " to a byte array threw an IOException (should never happen)."

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 6
    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method
