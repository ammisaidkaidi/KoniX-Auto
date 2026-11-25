.class public final Lbwi;
.super Ljava/lang/Object;
.source "PG"


# instance fields
.field public a:Ljava/lang/String;

.field public b:Ldot;

.field public c:Ljava/lang/String;

.field public d:Ljava/lang/Long;

.field public e:Lbus;

.field private f:Ljava/lang/Boolean;

.field private g:Ldpz;

.field private h:Ljava/lang/Boolean;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()Lbwj;
    .locals 11

    .line 1
    iget-object v0, p0, Lbwi;->f:Ljava/lang/Boolean;

    if-eqz v0, :cond_1

    iget-object v1, p0, Lbwi;->g:Ldpz;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lbwi;->h:Ljava/lang/Boolean;

    if-nez v1, :cond_0

    goto :goto_0

    .line 5
    :cond_0
    new-instance v1, Lbwj;

    iget-object v3, p0, Lbwi;->a:Ljava/lang/String;

    .line 6
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    iget-object v5, p0, Lbwi;->g:Ldpz;

    iget-object v6, p0, Lbwi;->b:Ldot;

    iget-object v7, p0, Lbwi;->c:Ljava/lang/String;

    iget-object v8, p0, Lbwi;->d:Ljava/lang/Long;

    iget-object v0, p0, Lbwi;->h:Ljava/lang/Boolean;

    .line 7
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v9

    iget-object v10, p0, Lbwi;->e:Lbus;

    move-object v2, v1

    invoke-direct/range {v2 .. v10}, Lbwj;-><init>(Ljava/lang/String;ZLdpz;Ldot;Ljava/lang/String;Ljava/lang/Long;ZLbus;)V

    return-object v1

    .line 1
    :cond_1
    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lbwi;->f:Ljava/lang/Boolean;

    if-nez v1, :cond_2

    .line 2
    const-string v1, " isEventNameConstant"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_2
    iget-object v1, p0, Lbwi;->g:Ldpz;

    if-nez v1, :cond_3

    .line 3
    const-string v1, " metric"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_3
    iget-object v1, p0, Lbwi;->h:Ljava/lang/Boolean;

    if-nez v1, :cond_4

    .line 4
    const-string v1, " isUnsampled"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_4
    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "Missing required properties:"

    invoke-virtual {v2, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 5
    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public final b(Z)V
    .locals 0

    .line 1
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    iput-object p1, p0, Lbwi;->f:Ljava/lang/Boolean;

    return-void
.end method

.method public final c(Z)V
    .locals 0

    .line 1
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    iput-object p1, p0, Lbwi;->h:Ljava/lang/Boolean;

    return-void
.end method

.method public final d(Ldpz;)V
    .locals 1

    .line 1
    if-eqz p1, :cond_0

    iput-object p1, p0, Lbwi;->g:Ldpz;

    return-void

    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    const-string v0, "Null metric"

    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
