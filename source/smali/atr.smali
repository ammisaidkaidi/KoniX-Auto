.class public final Latr;
.super Ljava/lang/Object;
.source "PG"


# instance fields
.field private a:Landroid/media/AudioFocusRequest;

.field private b:Ljava/lang/Boolean;

.field private c:I


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()Lats;
    .locals 4

    .line 1
    iget-object v0, p0, Latr;->a:Landroid/media/AudioFocusRequest;

    if-eqz v0, :cond_1

    iget v1, p0, Latr;->c:I

    if-eqz v1, :cond_1

    iget-object v2, p0, Latr;->b:Ljava/lang/Boolean;

    if-nez v2, :cond_0

    goto :goto_0

    .line 5
    :cond_0
    new-instance v3, Lats;

    .line 6
    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    invoke-direct {v3, v0, v1, v2}, Lats;-><init>(Landroid/media/AudioFocusRequest;IZ)V

    return-object v3

    .line 1
    :cond_1
    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Latr;->a:Landroid/media/AudioFocusRequest;

    if-nez v1, :cond_2

    .line 2
    const-string v1, " audioFocusRequest"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_2
    iget v1, p0, Latr;->c:I

    if-nez v1, :cond_3

    .line 3
    const-string v1, " lossReceived"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_3
    iget-object v1, p0, Latr;->b:Ljava/lang/Boolean;

    if-nez v1, :cond_4

    .line 4
    const-string v1, " expectedFocusLoss"

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

    iput-object p1, p0, Latr;->b:Ljava/lang/Boolean;

    return-void
.end method

.method public final c(I)V
    .locals 1

    .line 1
    if-eqz p1, :cond_0

    iput p1, p0, Latr;->c:I

    return-void

    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    const-string v0, "Null lossReceived"

    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final d(Landroid/media/AudioFocusRequest;)V
    .locals 4

    .line 1
    invoke-virtual {p1}, Landroid/media/AudioFocusRequest;->getAudioAttributes()Landroid/media/AudioAttributes;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    .line 4
    :cond_0
    const/4 v0, 0x0

    .line 1
    :goto_0
    invoke-static {v0}, Lex;->l(Z)V

    .line 2
    invoke-virtual {p1}, Landroid/media/AudioFocusRequest;->getAudioAttributes()Landroid/media/AudioAttributes;

    move-result-object v0

    invoke-virtual {v0}, Landroid/media/AudioAttributes;->getUsage()I

    move-result v0

    if-eq v0, v2, :cond_2

    const/16 v3, 0xc

    if-eq v0, v3, :cond_2

    const/16 v3, 0x10

    if-ne v0, v3, :cond_1

    const/4 v1, 0x1

    goto :goto_1

    .line 4
    :cond_1
    goto :goto_1

    :cond_2
    const/4 v1, 0x1

    .line 3
    :goto_1
    invoke-static {v1}, Lex;->l(Z)V

    if-eqz p1, :cond_3

    .line 4
    iput-object p1, p0, Latr;->a:Landroid/media/AudioFocusRequest;

    return-void

    .line 3
    :cond_3
    new-instance p1, Ljava/lang/NullPointerException;

    .line 4
    const-string v0, "Null audioFocusRequest"

    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
