.class public final Lzc;
.super Lze;
.source "PG"


# direct methods
.method public constructor <init>(Lbr;)V
    .locals 1

    .line 1
    const-string v0, "Attempting to get target fragment from fragment "

    invoke-static {v0, p1}, Ldpx;->d(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 2
    invoke-direct {p0, p1, v0}, Lze;-><init>(Lbr;Ljava/lang/String;)V

    return-void
.end method
