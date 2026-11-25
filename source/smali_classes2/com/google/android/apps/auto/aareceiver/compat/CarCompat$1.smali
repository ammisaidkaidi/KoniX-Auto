.class Lcom/google/android/apps/auto/aareceiver/compat/CarCompat$1;
.super Ljava/lang/Object;
.source "CarCompat.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/apps/auto/aareceiver/compat/CarCompat;->initApp(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 300
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 303
    invoke-static {}, Lcom/google/android/apps/auto/aareceiver/compat/CarCompat;->access$000()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/apps/auto/aareceiver/compat/CarCompat;->ensurePersistentServiceRunning(Landroid/content/Context;)V

    .line 304
    return-void
.end method
