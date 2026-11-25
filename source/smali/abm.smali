.class final Labm;
.super Labk;
.source "PG"


# instance fields
.field final synthetic b:Labn;


# direct methods
.method public constructor <init>(Labn;Landroid/content/Context;)V
    .locals 0

    .line 1
    iput-object p1, p0, Labm;->b:Labn;

    invoke-direct {p0, p1, p2}, Labk;-><init>(Labi;Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public final onLoadChildren(Ljava/lang/String;Landroid/service/media/MediaBrowserService$Result;Landroid/os/Bundle;)V
    .locals 2

    .line 1
    invoke-static {p3}, Lfu;->c(Landroid/os/Bundle;)V

    iget-object v0, p0, Labm;->b:Labn;

    new-instance v1, Labp;

    invoke-direct {v1, p2}, Labp;-><init>(Landroid/service/media/MediaBrowserService$Result;)V

    new-instance p2, Labl;

    invoke-direct {p2, p1, v1, p3}, Labl;-><init>(Ljava/lang/Object;Labp;Landroid/os/Bundle;)V

    iget-object p1, v0, Labn;->e:Labz;

    .line 2
    invoke-virtual {p1, p2}, Labz;->e(Labo;)V

    return-void
.end method
