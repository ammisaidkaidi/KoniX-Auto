.class Lx/i$3;
.super Ljava/lang/Object;
.source "i.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lx/i;->onStatus(IIILandroid/car/projection/ProjectionStatus;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic val$ns:I

.field final synthetic val$tr:I


# direct methods
.method constructor <init>(II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 281
    iput p1, p0, Lx/i$3;->val$ns:I

    iput p2, p0, Lx/i$3;->val$tr:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 284
    iget v0, p0, Lx/i$3;->val$ns:I

    iget v1, p0, Lx/i$3;->val$tr:I

    invoke-static {v0, v1}, Lx/i;->applyBubbleState(II)V

    .line 285
    return-void
.end method
