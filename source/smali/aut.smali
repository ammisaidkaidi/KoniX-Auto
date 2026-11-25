.class public final synthetic Laut;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Landroid/media/AudioManager$OnAudioFocusChangeListener;


# instance fields
.field public final synthetic a:Lauw;


# direct methods
.method public synthetic constructor <init>(Lauw;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Laut;->a:Lauw;

    return-void
.end method


# virtual methods
.method public final onAudioFocusChange(I)V
    .locals 4

    .line 1
    iget-object v0, p0, Laut;->a:Lauw;

    invoke-static {p1}, Laul;->c(I)Ljava/lang/String;

    iget-object v1, v0, Lauw;->h:Ljava/util/concurrent/ExecutorService;

    .line 2
    invoke-interface {v1}, Ljava/util/concurrent/ExecutorService;->isShutdown()Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, v0, Lauw;->h:Ljava/util/concurrent/ExecutorService;

    new-instance v2, Lauv;

    const/4 v3, 0x0

    invoke-direct {v2, v0, p1, v3}, Lauv;-><init>(Lauw;II)V

    .line 3
    invoke-interface {v1, v2}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method
