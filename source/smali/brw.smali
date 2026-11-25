.class public final Lbrw;
.super Ljava/lang/Object;
.source "PG"


# instance fields
.field public final a:Lbry;


# direct methods
.method public constructor <init>(Lcoc;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Lcoc;->c()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lbry;

    iput-object p1, p0, Lbrw;->a:Lbry;

    return-void
.end method
