.class public Ldea;
.super Ljava/lang/Object;
.source "PG"


# instance fields
.field protected volatile a:Lder;

.field public volatile b:Ldcl;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    .line 1
    invoke-static {}, Ldcz;->a()Ldcz;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()Ldcl;
    .locals 1

    .line 1
    iget-object v0, p0, Ldea;->b:Ldcl;

    if-eqz v0, :cond_0

    iget-object v0, p0, Ldea;->b:Ldcl;

    return-object v0

    :cond_0
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Ldea;->b:Ldcl;

    if-eqz v0, :cond_1

    iget-object v0, p0, Ldea;->b:Ldcl;

    monitor-exit p0

    return-object v0

    :cond_1
    iget-object v0, p0, Ldea;->a:Lder;

    if-nez v0, :cond_2

    .line 2
    sget-object v0, Ldcl;->b:Ldcl;

    iput-object v0, p0, Ldea;->b:Ldcl;

    goto :goto_0

    .line 4
    :cond_2
    iget-object v0, p0, Ldea;->a:Lder;

    .line 3
    invoke-interface {v0}, Lder;->e()Ldcl;

    move-result-object v0

    iput-object v0, p0, Ldea;->b:Ldcl;

    .line 2
    :goto_0
    iget-object v0, p0, Ldea;->b:Ldcl;

    .line 4
    monitor-exit p0

    return-object v0

    .line 3
    :catchall_0
    move-exception v0

    .line 5
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public final b(Lder;)Lder;
    .locals 1

    .line 4
    iget-object v0, p0, Ldea;->a:Lder;

    if-eqz v0, :cond_0

    :goto_0
    goto :goto_2

    :cond_0
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Ldea;->a:Lder;

    if-eqz v0, :cond_1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :cond_1
    :try_start_1
    iput-object p1, p0, Ldea;->a:Lder;

    .line 1
    sget-object v0, Ldcl;->b:Ldcl;

    iput-object v0, p0, Ldea;->b:Ldcl;
    :try_end_1
    .catch Lddu; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 3
    :catch_0
    move-exception v0

    :try_start_2
    iput-object p1, p0, Ldea;->a:Lder;

    .line 2
    sget-object p1, Ldcl;->b:Ldcl;

    iput-object p1, p0, Ldea;->b:Ldcl;

    .line 3
    :goto_1
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 4
    :goto_2
    iget-object p1, p0, Ldea;->a:Lder;

    return-object p1

    .line 3
    :catchall_0
    move-exception p1

    :try_start_3
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_4

    :goto_3
    throw p1

    :goto_4
    goto :goto_3
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 2

    .line 1
    if-ne p0, p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    instance-of v0, p1, Ldea;

    if-nez v0, :cond_1

    const/4 p1, 0x0

    return p1

    .line 2
    :cond_1
    check-cast p1, Ldea;

    iget-object v0, p0, Ldea;->a:Lder;

    .line 3
    iget-object v1, p1, Ldea;->a:Lder;

    if-nez v0, :cond_3

    if-eqz v1, :cond_2

    goto :goto_0

    .line 7
    :cond_2
    invoke-virtual {p0}, Ldea;->a()Ldcl;

    move-result-object v0

    invoke-virtual {p1}, Ldea;->a()Ldcl;

    move-result-object p1

    invoke-virtual {v0, p1}, Ldcl;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1

    .line 3
    :cond_3
    :goto_0
    if-eqz v0, :cond_5

    if-nez v1, :cond_4

    goto :goto_1

    .line 6
    :cond_4
    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1

    .line 3
    :cond_5
    :goto_1
    if-eqz v0, :cond_6

    .line 4
    invoke-interface {v0}, Lder;->j()Lder;

    move-result-object v1

    invoke-virtual {p1, v1}, Ldea;->b(Lder;)Lder;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1

    .line 5
    :cond_6
    invoke-interface {v1}, Lder;->j()Lder;

    move-result-object p1

    invoke-virtual {p0, p1}, Ldea;->b(Lder;)Lder;

    move-result-object p1

    invoke-virtual {p1, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public hashCode()I
    .locals 1

    const/4 v0, 0x1

    return v0
.end method
