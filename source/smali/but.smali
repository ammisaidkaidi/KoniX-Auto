.class public final Lbut;
.super Ljava/lang/Object;
.source "PG"


# instance fields
.field public final a:Ljava/util/WeakHashMap;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/WeakHashMap;

    invoke-direct {v0}, Ljava/util/WeakHashMap;-><init>()V

    iput-object v0, p0, Lbut;->a:Ljava/util/WeakHashMap;

    new-instance v0, Lbuq;

    .line 2
    invoke-direct {v0, p0}, Lbuq;-><init>(Lbut;)V

    return-void
.end method
