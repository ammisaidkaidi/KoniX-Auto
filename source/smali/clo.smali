.class public final Lclo;
.super Ljava/lang/Object;
.source "PG"


# instance fields
.field public a:Ljava/lang/Runnable;

.field final synthetic b:Lcom/google/android/projection/protocol/GalReceiver;


# direct methods
.method public constructor <init>(Lcom/google/android/projection/protocol/GalReceiver;)V
    .locals 0

    iput-object p1, p0, Lclo;->b:Lcom/google/android/projection/protocol/GalReceiver;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Runnable;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lclo;->b:Lcom/google/android/projection/protocol/GalReceiver;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/google/android/projection/protocol/GalReceiver;->e:Z

    if-eqz p1, :cond_0

    iput-object p1, p0, Lclo;->a:Ljava/lang/Runnable;

    iget-object p1, p0, Lclo;->b:Lcom/google/android/projection/protocol/GalReceiver;

    invoke-virtual {p1}, Lcom/google/android/projection/protocol/GalReceiver;->nativeFlushControllerChannelQueue()V

    return-void

    :cond_0
    iget-object p1, p0, Lclo;->b:Lcom/google/android/projection/protocol/GalReceiver;

    .line 2
    invoke-virtual {p1}, Lcom/google/android/projection/protocol/GalReceiver;->nativePrepareShutdown()V

    return-void
.end method
