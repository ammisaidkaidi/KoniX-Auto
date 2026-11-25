.class Lfq;
.super Lfp;
.source "PG"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lfp;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public final m()V
    .locals 2

    .line 1
    iget-object v0, p0, Lfq;->a:Landroid/media/session/MediaSession;

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Landroid/media/session/MediaSession;->setRatingType(I)V

    return-void
.end method
