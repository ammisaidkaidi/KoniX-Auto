.class public final Lcis;
.super Ljava/lang/Object;
.source "PG"


# instance fields
.field public a:Ljava/lang/Boolean;

.field public b:Lcix;

.field private c:Landroid/net/Uri;

.field private d:Lder;

.field private e:Lcim;

.field private f:Lcqh;

.field private g:Ljava/lang/Boolean;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()Lcit;
    .locals 10

    .line 1
    iget-object v0, p0, Lcis;->f:Lcqh;

    if-nez v0, :cond_0

    invoke-static {}, Lcqh;->p()Lcqh;

    move-result-object v0

    iput-object v0, p0, Lcis;->f:Lcqh;

    :cond_0
    iget-object v2, p0, Lcis;->c:Landroid/net/Uri;

    if-eqz v2, :cond_2

    iget-object v3, p0, Lcis;->d:Lder;

    if-eqz v3, :cond_2

    iget-object v4, p0, Lcis;->e:Lcim;

    if-eqz v4, :cond_2

    iget-object v6, p0, Lcis;->b:Lcix;

    if-eqz v6, :cond_2

    iget-object v0, p0, Lcis;->a:Ljava/lang/Boolean;

    if-eqz v0, :cond_2

    iget-object v1, p0, Lcis;->g:Ljava/lang/Boolean;

    if-nez v1, :cond_1

    goto :goto_0

    .line 9
    :cond_1
    new-instance v9, Lcit;

    iget-object v5, p0, Lcis;->f:Lcqh;

    .line 10
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v7

    iget-object v0, p0, Lcis;->g:Ljava/lang/Boolean;

    .line 11
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v8

    move-object v1, v9

    invoke-direct/range {v1 .. v8}, Lcit;-><init>(Landroid/net/Uri;Lder;Lcim;Lcqh;Lcix;ZZ)V

    return-object v9

    .line 1
    :cond_2
    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcis;->c:Landroid/net/Uri;

    if-nez v1, :cond_3

    .line 3
    const-string v1, " uri"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_3
    iget-object v1, p0, Lcis;->d:Lder;

    if-nez v1, :cond_4

    .line 4
    const-string v1, " schema"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_4
    iget-object v1, p0, Lcis;->e:Lcim;

    if-nez v1, :cond_5

    .line 5
    const-string v1, " handler"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_5
    iget-object v1, p0, Lcis;->b:Lcix;

    if-nez v1, :cond_6

    .line 6
    const-string v1, " variantConfig"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_6
    iget-object v1, p0, Lcis;->a:Ljava/lang/Boolean;

    if-nez v1, :cond_7

    .line 7
    const-string v1, " useGeneratedExtensionRegistry"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_7
    iget-object v1, p0, Lcis;->g:Ljava/lang/Boolean;

    if-nez v1, :cond_8

    .line 8
    const-string v1, " enableTracing"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_8
    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "Missing required properties:"

    invoke-virtual {v2, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 9
    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public final b()V
    .locals 1

    .line 1
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcis;->g:Ljava/lang/Boolean;

    return-void
.end method

.method public final c(Lcim;)V
    .locals 1

    .line 1
    if-eqz p1, :cond_0

    iput-object p1, p0, Lcis;->e:Lcim;

    return-void

    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    const-string v0, "Null handler"

    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final d(Lder;)V
    .locals 1

    .line 1
    if-eqz p1, :cond_0

    iput-object p1, p0, Lcis;->d:Lder;

    return-void

    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    const-string v0, "Null schema"

    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final e(Landroid/net/Uri;)V
    .locals 1

    .line 1
    if-eqz p1, :cond_0

    iput-object p1, p0, Lcis;->c:Landroid/net/Uri;

    return-void

    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    const-string v0, "Null uri"

    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
