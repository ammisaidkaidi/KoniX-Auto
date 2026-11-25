.class public Latm;
.super Lata;
.source "PG"

# interfaces
.implements Ldht;


# instance fields
.field private final g:Ldhk;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Lata;-><init>()V

    new-instance v0, Ldhk;

    new-instance v1, Latl;

    .line 2
    invoke-direct {v1, p0}, Latl;-><init>(Latm;)V

    invoke-direct {v0, v1}, Ldhk;-><init>(Latl;)V

    iput-object v0, p0, Latm;->g:Ldhk;

    return-void
.end method


# virtual methods
.method public final aT()Ljava/lang/Object;
    .locals 1

    .line 1
    iget-object v0, p0, Latm;->g:Ldhk;

    invoke-virtual {v0}, Ldhk;->aT()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public final onCreate()V
    .locals 3

    .line 1
    invoke-virtual {p0}, Latm;->aT()Ljava/lang/Object;

    move-result-object v0

    move-object v1, p0

    check-cast v1, Lcom/google/android/apps/auto/aareceiver/AndroidAutoReceiverApp;

    .line 2
    new-instance v2, Latk;

    invoke-direct {v2}, Latk;-><init>()V

    iput-object v2, v1, Lata;->b:Latk;

    .line 1
    check-cast v0, Latj;

    iget-object v2, v0, Latj;->g:Ldny;

    .line 3
    invoke-interface {v2}, Ldny;->a()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Laxz;

    iput-object v2, v1, Lata;->c:Laxz;

    .line 1
    iget-object v2, v0, Latj;->f:Ldny;

    .line 4
    invoke-interface {v2}, Ldny;->a()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/UserManager;

    iput-object v2, v1, Lata;->d:Landroid/os/UserManager;

    .line 1
    iget-object v2, v0, Latj;->h:Ldny;

    .line 5
    invoke-interface {v2}, Ldny;->a()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lbtz;

    iput-object v2, v1, Lata;->e:Lbtz;

    .line 1
    iget-object v0, v0, Latj;->i:Ldny;

    .line 6
    invoke-interface {v0}, Ldny;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ldgq;

    iput-object v0, v1, Lata;->f:Ldgq;

    .line 7
    invoke-super {p0}, Lata;->onCreate()V

    return-void
.end method
