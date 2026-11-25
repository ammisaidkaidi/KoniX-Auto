.class Labk;
.super Labh;
.source "PG"


# direct methods
.method public constructor <init>(Labi;Landroid/content/Context;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Labh;-><init>(Labi;Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public final onLoadItem(Ljava/lang/String;Landroid/service/media/MediaBrowserService$Result;)V
    .locals 1

    .line 1
    new-instance v0, Labp;

    invoke-direct {v0, p2}, Labp;-><init>(Landroid/service/media/MediaBrowserService$Result;)V

    new-instance p2, Labj;

    invoke-direct {p2, p1, v0}, Labj;-><init>(Ljava/lang/Object;Labp;)V

    invoke-static {p2}, Labz;->d(Labo;)V

    return-void
.end method
