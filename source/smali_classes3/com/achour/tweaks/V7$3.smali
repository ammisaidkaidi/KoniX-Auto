.class Lcom/achour/tweaks/V7$3;
.super Ljava/lang/Object;
.source "V7.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/achour/tweaks/V7;->onStatus(IIILandroid/car/projection/ProjectionStatus;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic val$newS:I


# direct methods
.method constructor <init>(I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 227
    iput p1, p0, Lcom/achour/tweaks/V7$3;->val$newS:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 230
    :try_start_0
    iget v0, p0, Lcom/achour/tweaks/V7$3;->val$newS:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_1

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    goto :goto_0

    .line 231
    :cond_0
    invoke-static {}, Lcom/achour/tweaks/V7;->hideRail()V

    goto :goto_1

    .line 230
    :cond_1
    :goto_0
    invoke-static {}, Lcom/achour/tweaks/V7;->evalRail()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    .line 232
    :catchall_0
    move-exception v0

    :goto_1
    nop

    .line 233
    return-void
.end method
