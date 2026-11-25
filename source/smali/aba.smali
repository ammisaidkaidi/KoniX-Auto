.class final Laba;
.super Labo;
.source "PG"


# instance fields
.field final synthetic a:Lgb;


# direct methods
.method public constructor <init>(Ljava/lang/Object;Lgb;)V
    .locals 0

    .line 1
    iput-object p2, p0, Laba;->a:Lgb;

    invoke-direct {p0, p1}, Labo;-><init>(Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public final bridge synthetic a(Ljava/lang/Object;)V
    .locals 2

    .line 1
    check-cast p1, Landroid/support/v4/media/MediaBrowserCompat$MediaItem;

    iget v0, p0, Labo;->h:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_0

    iget-object p1, p0, Laba;->a:Lgb;

    const/4 v0, -0x1

    const/4 v1, 0x0

    .line 2
    invoke-virtual {p1, v0, v1}, Lgb;->b(ILandroid/os/Bundle;)V

    return-void

    :cond_0
    new-instance v0, Landroid/os/Bundle;

    .line 3
    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 4
    const-string v1, "media_item"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    iget-object p1, p0, Laba;->a:Lgb;

    const/4 v1, 0x0

    .line 5
    invoke-virtual {p1, v1, v0}, Lgb;->b(ILandroid/os/Bundle;)V

    return-void
.end method
