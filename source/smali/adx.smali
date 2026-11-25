.class public final Ladx;
.super Ljava/lang/Object;
.source "PG"


# instance fields
.field public final a:Lafc;

.field public final b:Landroid/content/Context;

.field public final c:Ljava/lang/String;

.field public final d:Laed;

.field public final e:Ljava/util/List;

.field public final f:Ljava/util/List;

.field public final g:Ljava/util/List;

.field public final h:Z

.field public final i:Ljava/util/concurrent/Executor;

.field public final j:Ljava/util/concurrent/Executor;

.field public final k:Z

.field public final l:Z

.field public final m:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Lafc;Laed;Ljava/util/List;ZILjava/util/concurrent/Executor;Ljava/util/concurrent/Executor;ZZ)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p3, p0, Ladx;->a:Lafc;

    iput-object p1, p0, Ladx;->b:Landroid/content/Context;

    iput-object p2, p0, Ladx;->c:Ljava/lang/String;

    iput-object p4, p0, Ladx;->d:Laed;

    iput-object p5, p0, Ladx;->e:Ljava/util/List;

    iput-boolean p6, p0, Ladx;->h:Z

    iput p7, p0, Ladx;->m:I

    iput-object p8, p0, Ladx;->i:Ljava/util/concurrent/Executor;

    iput-object p9, p0, Ladx;->j:Ljava/util/concurrent/Executor;

    iput-boolean p10, p0, Ladx;->k:Z

    iput-boolean p11, p0, Ladx;->l:Z

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Ladx;->f:Ljava/util/List;

    .line 2
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Ladx;->g:Ljava/util/List;

    return-void
.end method
