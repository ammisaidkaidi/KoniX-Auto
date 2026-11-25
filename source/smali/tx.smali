.class public final Ltx;
.super Ljava/lang/Object;
.source "PG"


# instance fields
.field public final a:Lzn;

.field public final b:Ljava/util/ArrayList;


# direct methods
.method public constructor <init>(Lzn;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ltx;->a:Lzn;

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Ltx;->b:Ljava/util/ArrayList;

    return-void
.end method
