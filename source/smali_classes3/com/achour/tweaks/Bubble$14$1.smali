.class Lcom/achour/tweaks/Bubble$14$1;
.super Ljava/lang/Object;
.source "Bubble.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/achour/tweaks/Bubble$14;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/achour/tweaks/Bubble$14;


# direct methods
.method constructor <init>(Lcom/achour/tweaks/Bubble$14;)V
    .locals 0

    .line 328
    iput-object p1, p0, Lcom/achour/tweaks/Bubble$14$1;->this$0:Lcom/achour/tweaks/Bubble$14;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 329
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v0

    invoke-static {v0}, Landroid/os/Process;->killProcess(I)V

    return-void
.end method
