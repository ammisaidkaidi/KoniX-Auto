.class final Lfs;
.super Lfr;
.source "PG"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lfr;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public final n(Landroid/content/Context;)Landroid/media/session/MediaSession;
    .locals 3

    .line 1
    new-instance v0, Landroid/media/session/MediaSession;

    const-string v1, "AAPMediaSession"

    const/4 v2, 0x0

    invoke-direct {v0, p1, v1, v2}, Landroid/media/session/MediaSession;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/os/Bundle;)V

    return-object v0
.end method
