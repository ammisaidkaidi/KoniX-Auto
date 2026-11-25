.class public final Lbyp;
.super Ljava/lang/Object;
.source "PG"


# instance fields
.field public a:Ljava/lang/Integer;

.field public b:Ljava/lang/Boolean;

.field public c:Lcoc;

.field public d:Ljava/lang/Boolean;

.field public e:Ljava/lang/Boolean;

.field public f:I

.field private g:Ljava/lang/Boolean;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>([B)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object p1, Lcns;->a:Lcns;

    iput-object p1, p0, Lbyp;->c:Lcoc;

    return-void
.end method


# virtual methods
.method public final a()Lbyq;
    .locals 9

    .line 1
    iget v1, p0, Lbyp;->f:I

    if-eqz v1, :cond_1

    iget-object v0, p0, Lbyp;->a:Ljava/lang/Integer;

    if-eqz v0, :cond_1

    iget-object v2, p0, Lbyp;->b:Ljava/lang/Boolean;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lbyp;->d:Ljava/lang/Boolean;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lbyp;->g:Ljava/lang/Boolean;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lbyp;->e:Ljava/lang/Boolean;

    if-nez v2, :cond_0

    goto :goto_0

    .line 8
    :cond_0
    new-instance v8, Lbyq;

    .line 9
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v2

    iget-object v0, p0, Lbyp;->b:Ljava/lang/Boolean;

    .line 10
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    iget-object v4, p0, Lbyp;->c:Lcoc;

    iget-object v0, p0, Lbyp;->d:Ljava/lang/Boolean;

    .line 11
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    iget-object v0, p0, Lbyp;->g:Ljava/lang/Boolean;

    .line 12
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v6

    iget-object v0, p0, Lbyp;->e:Ljava/lang/Boolean;

    .line 13
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v7

    move-object v0, v8

    invoke-direct/range {v0 .. v7}, Lbyq;-><init>(IIZLcoc;ZZZ)V

    return-object v8

    .line 1
    :cond_1
    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget v1, p0, Lbyp;->f:I

    if-nez v1, :cond_2

    .line 2
    const-string v1, " enablement"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_2
    iget-object v1, p0, Lbyp;->a:Ljava/lang/Integer;

    if-nez v1, :cond_3

    .line 3
    const-string v1, " rateLimitPerSecond"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_3
    iget-object v1, p0, Lbyp;->b:Ljava/lang/Boolean;

    if-nez v1, :cond_4

    .line 4
    const-string v1, " recordMetricPerProcess"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_4
    iget-object v1, p0, Lbyp;->d:Ljava/lang/Boolean;

    if-nez v1, :cond_5

    .line 5
    const-string v1, " forceGcBeforeRecordMemory"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_5
    iget-object v1, p0, Lbyp;->g:Ljava/lang/Boolean;

    if-nez v1, :cond_6

    .line 6
    const-string v1, " captureDebugMetrics"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_6
    iget-object v1, p0, Lbyp;->e:Ljava/lang/Boolean;

    if-nez v1, :cond_7

    .line 7
    const-string v1, " captureMemoryInfo"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_7
    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "Missing required properties:"

    invoke-virtual {v2, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 8
    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public final b(Z)V
    .locals 0

    .line 1
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    iput-object p1, p0, Lbyp;->g:Ljava/lang/Boolean;

    return-void
.end method

.method public final c(Z)V
    .locals 1

    const/4 v0, 0x1

    if-eq v0, p1, :cond_0

    const/4 p1, 0x2

    goto :goto_0

    :cond_0
    const/4 p1, 0x3

    :goto_0
    iput p1, p0, Lbyp;->f:I

    return-void
.end method
