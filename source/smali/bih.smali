.class public final Lbih;
.super Ljava/lang/Object;
.source "PG"


# instance fields
.field public final a:Lbik;

.field b:Z

.field public c:Ljava/util/ArrayList;

.field public d:Ljava/util/ArrayList;

.field public e:Ljava/lang/String;

.field public final f:Ljava/lang/String;

.field public final g:Lbie;

.field public final h:I

.field public i:Lbtc;

.field public final j:Lddh;


# direct methods
.method public constructor <init>(Lbik;Lbie;)V
    .locals 7

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Ldgt;->j:Ldgt;

    .line 2
    invoke-virtual {v0}, Lddk;->n()Lddf;

    move-result-object v0

    check-cast v0, Lddh;

    iput-object v0, p0, Lbih;->j:Lddh;

    const/4 v1, 0x0

    iput-boolean v1, p0, Lbih;->b:Z

    const/4 v2, 0x0

    iput-object v2, p0, Lbih;->c:Ljava/util/ArrayList;

    iput-object v2, p0, Lbih;->d:Ljava/util/ArrayList;

    iput-object p1, p0, Lbih;->a:Lbik;

    iget-object v3, p1, Lbik;->j:Ljava/lang/String;

    iput-object v3, p0, Lbih;->f:Ljava/lang/String;

    iput-object v2, p0, Lbih;->e:Ljava/lang/String;

    iget v2, p1, Lbik;->k:I

    iput v2, p0, Lbih;->h:I

    .line 3
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iget-boolean v4, v0, Lddf;->c:Z

    if-eqz v4, :cond_0

    .line 4
    invoke-virtual {v0}, Lddf;->k()V

    iput-boolean v1, v0, Lddf;->c:Z

    :cond_0
    iget-object v4, v0, Lddh;->b:Lddk;

    .line 5
    check-cast v4, Ldgt;

    iget v5, v4, Ldgt;->a:I

    or-int/lit8 v5, v5, 0x1

    iput v5, v4, Ldgt;->a:I

    iput-wide v2, v4, Ldgt;->b:J

    iget-object v2, v0, Lddh;->b:Lddk;

    .line 6
    check-cast v2, Ldgt;

    iget-wide v2, v2, Ldgt;->b:J

    .line 7
    invoke-static {}, Ljava/util/TimeZone;->getDefault()Ljava/util/TimeZone;

    move-result-object v4

    invoke-virtual {v4, v2, v3}, Ljava/util/TimeZone;->getOffset(J)I

    move-result v2

    div-int/lit16 v2, v2, 0x3e8

    int-to-long v2, v2

    iget-boolean v4, v0, Lddf;->c:Z

    if-eqz v4, :cond_1

    .line 8
    invoke-virtual {v0}, Lddf;->k()V

    iput-boolean v1, v0, Lddf;->c:Z

    :cond_1
    iget-object v4, v0, Lddh;->b:Lddk;

    .line 9
    check-cast v4, Ldgt;

    iget v5, v4, Ldgt;->a:I

    const/high16 v6, 0x10000

    or-int/2addr v5, v6

    iput v5, v4, Ldgt;->a:I

    iput-wide v2, v4, Ldgt;->g:J

    iget-object v2, p1, Lbik;->e:Landroid/content/Context;

    .line 10
    invoke-static {v2}, Lbtj;->b(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object p1, p1, Lbik;->e:Landroid/content/Context;

    .line 11
    invoke-static {p1}, Lbtj;->b(Landroid/content/Context;)Z

    move-result p1

    iget-boolean v2, v0, Lddf;->c:Z

    if-eqz v2, :cond_2

    invoke-virtual {v0}, Lddf;->k()V

    iput-boolean v1, v0, Lddf;->c:Z

    :cond_2
    iget-object v2, v0, Lddh;->b:Lddk;

    .line 12
    check-cast v2, Ldgt;

    iget v3, v2, Ldgt;->a:I

    const/high16 v4, 0x800000

    or-int/2addr v3, v4

    iput v3, v2, Ldgt;->a:I

    iput-boolean p1, v2, Ldgt;->h:Z

    .line 13
    :cond_3
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmp-long p1, v2, v4

    if-eqz p1, :cond_5

    .line 14
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    iget-boolean p1, v0, Lddf;->c:Z

    if-eqz p1, :cond_4

    .line 15
    invoke-virtual {v0}, Lddf;->k()V

    iput-boolean v1, v0, Lddf;->c:Z

    :cond_4
    iget-object p1, v0, Lddh;->b:Lddk;

    .line 16
    check-cast p1, Ldgt;

    iget v0, p1, Ldgt;->a:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p1, Ldgt;->a:I

    iput-wide v2, p1, Ldgt;->c:J

    :cond_5
    iput-object p2, p0, Lbih;->g:Lbie;

    return-void
.end method


# virtual methods
.method public final a()Lho;
    .locals 6

    .line 1
    iget-boolean v0, p0, Lbih;->b:Z

    if-nez v0, :cond_2

    const/4 v0, 0x1

    iput-boolean v0, p0, Lbih;->b:Z

    iget-object v1, p0, Lbih;->a:Lbik;

    iget-object v1, v1, Lbik;->l:Lbkc;

    .line 2
    new-instance v2, Lbir;

    iget-object v3, v1, Lbkc;->h:Lbkf;

    invoke-direct {v2, v1, p0, v3}, Lbir;-><init>(Lbkc;Lbih;Lbkf;)V

    iget-boolean v3, v2, Lcom/google/android/gms/common/api/internal/BasePendingResult;->i:Z

    if-nez v3, :cond_1

    sget-object v3, Lcom/google/android/gms/common/api/internal/BasePendingResult;->b:Ljava/lang/ThreadLocal;

    .line 3
    invoke-virtual {v3}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-eqz v3, :cond_0

    goto :goto_0

    .line 7
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :cond_1
    nop

    .line 3
    :goto_0
    iput-boolean v0, v2, Lcom/google/android/gms/common/api/internal/BasePendingResult;->i:Z

    iget-object v0, v1, Lbkc;->i:Lbln;

    new-instance v3, Lbko;

    .line 4
    invoke-direct {v3, v2}, Lbko;-><init>(Lbku;)V

    iget-object v4, v0, Lbln;->l:Landroid/os/Handler;

    new-instance v5, Lblv;

    iget-object v0, v0, Lbln;->j:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 5
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    invoke-direct {v5, v3, v0, v1}, Lblv;-><init>(Lbkr;ILbkc;)V

    const/4 v0, 0x4

    .line 6
    invoke-virtual {v4, v0, v5}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 7
    invoke-virtual {v4, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-object v2

    .line 1
    :cond_2
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "do not reuse LogEventBuilder"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 4

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "ClearcutLogger.LogEventBuilder["

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 2
    const-string v1, "uploadAccount: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lbih;->e:Ljava/lang/String;

    .line 3
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4
    const-string v1, ", logSourceName: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lbih;->f:Ljava/lang/String;

    .line 5
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 6
    const-string v1, ", qosTier: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lbih;->h:I

    add-int/lit8 v2, v1, -0x1

    const/4 v3, 0x0

    if-eqz v1, :cond_2

    .line 7
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 8
    const-string v1, ", loggingId: null, SourceExtensionByteStringProvider: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lbih;->g:Lbie;

    .line 9
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 10
    const-string v1, ", veMessage: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 11
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 12
    const-string v1, ", testCodes: null, mendelPackages: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lbih;->c:Ljava/util/ArrayList;

    if-eqz v1, :cond_0

    .line 13
    invoke-static {v1}, Lbik;->b(Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 7
    :cond_0
    move-object v1, v3

    .line 14
    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 15
    const-string v1, ", experimentIds: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lbih;->d:Ljava/util/ArrayList;

    if-eqz v1, :cond_1

    .line 16
    invoke-static {v1}, Lbik;->b(Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v3

    goto :goto_1

    .line 24
    :cond_1
    nop

    .line 17
    :goto_1
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 18
    const-string v1, ", experimentTokens: null, experimentTokensBytes: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 19
    sget-object v1, Lbik;->a:Lbjy;

    .line 20
    const-string v1, "null, addPhenotype: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v1, 0x1

    .line 21
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 22
    const-string v1, ", logVerifier: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lbih;->i:Lbtc;

    .line 23
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 24
    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_2
    nop

    .line 7
    throw v3
.end method
