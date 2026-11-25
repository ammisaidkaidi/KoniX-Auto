.class public final synthetic Laxd;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Landroid/car/CarAppFocusManager$OnAppFocusChangedListener;


# instance fields
.field public final synthetic a:Laxf;


# direct methods
.method public synthetic constructor <init>(Laxf;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Laxd;->a:Laxf;

    return-void
.end method


# virtual methods
.method public final onAppFocusChanged(IZ)V
    .locals 4

    .line 1
    iget-object p1, p0, Laxd;->a:Laxf;

    monitor-enter p1

    :try_start_0
    iget-boolean p2, p1, Laxf;->b:Z

    if-nez p2, :cond_0

    sget-object p2, Laxf;->a:Lcsz;

    invoke-virtual {p2}, Lcsv;->c()Lctq;

    move-result-object p2

    const-string v0, "com/google/android/apps/auto/aareceiver/context/VoiceSessionAppFocusManager"

    const-string v1, "handleAppFocusChange"

    const/16 v2, 0x52

    const-string v3, "VoiceSessionAppFocusManager.java"

    invoke-interface {p2, v0, v1, v2, v3}, Lcsx;->h(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Lctq;

    move-result-object p2

    check-cast p2, Lcsx;

    const-string v0, "handleAppFocusChange called on uninitialized object"

    invoke-interface {p2, v0}, Lcsx;->n(Ljava/lang/String;)V

    .line 2
    :cond_0
    monitor-exit p1

    return-void

    :catchall_0
    move-exception p2

    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p2
.end method
