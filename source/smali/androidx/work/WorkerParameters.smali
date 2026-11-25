.class public final Landroidx/work/WorkerParameters;
.super Ljava/lang/Object;
.source "PG"


# instance fields
.field public a:Ljava/util/UUID;

.field public b:Lagk;

.field public c:Ljava/util/concurrent/Executor;

.field public d:Laha;

.field public e:Lagm;


# direct methods
.method public constructor <init>(Ljava/util/UUID;Lagk;Ljava/util/Collection;Ljava/util/concurrent/Executor;Laha;Lagm;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/work/WorkerParameters;->a:Ljava/util/UUID;

    iput-object p2, p0, Landroidx/work/WorkerParameters;->b:Lagk;

    new-instance p1, Ljava/util/HashSet;

    invoke-direct {p1, p3}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    iput-object p4, p0, Landroidx/work/WorkerParameters;->c:Ljava/util/concurrent/Executor;

    iput-object p5, p0, Landroidx/work/WorkerParameters;->d:Laha;

    iput-object p6, p0, Landroidx/work/WorkerParameters;->e:Lagm;

    return-void
.end method
