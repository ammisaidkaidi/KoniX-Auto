.class Lx/g$Run;
.super Ljava/lang/Object;
.source "g.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lx/g;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "Run"
.end annotation


# instance fields
.field final mode:I


# direct methods
.method constructor <init>(I)V
    .locals 0

    .line 499
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 500
    iput p1, p0, Lx/g$Run;->mode:I

    .line 501
    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 506
    :try_start_0
    iget v0, p0, Lx/g$Run;->mode:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    .line 507
    invoke-static {}, Lx/g;->exportDiag()V

    goto :goto_0

    .line 508
    :cond_0
    iget v0, p0, Lx/g$Run;->mode:I

    const/4 v1, 0x5

    if-ne v0, v1, :cond_1

    .line 509
    invoke-static {}, Lx/g;->backup()V

    goto :goto_0

    .line 510
    :cond_1
    iget v0, p0, Lx/g$Run;->mode:I

    const/4 v1, 0x6

    if-ne v0, v1, :cond_2

    .line 511
    invoke-static {}, Lx/g;->restore()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 514
    :cond_2
    :goto_0
    goto :goto_1

    .line 513
    :catchall_0
    move-exception v0

    .line 515
    :goto_1
    return-void
.end method
