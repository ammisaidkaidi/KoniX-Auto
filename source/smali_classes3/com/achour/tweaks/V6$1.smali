.class Lcom/achour/tweaks/V6$1;
.super Ljava/lang/Object;
.source "V6.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/achour/tweaks/V6;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 61
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 0

    .line 64
    invoke-static {}, Lcom/achour/tweaks/V6;->stallTick()V

    .line 65
    return-void
.end method
