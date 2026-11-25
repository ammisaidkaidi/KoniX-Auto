.class public Lcom/google/android/apps/auto/aareceiver/telecom/InCallServiceImpl;
.super Lbcv;
.source "PG"


# instance fields
.field public a:Lbcx;

.field private final b:Lbcy;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Lbcv;-><init>()V

    new-instance v0, Lbcy;

    .line 2
    invoke-direct {v0, p0}, Lbcy;-><init>(Lcom/google/android/apps/auto/aareceiver/telecom/InCallServiceImpl;)V

    iput-object v0, p0, Lcom/google/android/apps/auto/aareceiver/telecom/InCallServiceImpl;->b:Lbcy;

    new-instance v0, Lbcw;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lbcw;-><init>(I)V

    iput-object v0, p0, Lcom/google/android/apps/auto/aareceiver/telecom/InCallServiceImpl;->a:Lbcx;

    return-void
.end method


# virtual methods
.method public final onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 2

    .line 1
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "inCallServiceLocalBindingAction"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p1, p0, Lcom/google/android/apps/auto/aareceiver/telecom/InCallServiceImpl;->b:Lbcy;

    return-object p1

    .line 2
    :cond_0
    invoke-super {p0, p1}, Lbcv;->onBind(Landroid/content/Intent;)Landroid/os/IBinder;

    move-result-object p1

    return-object p1
.end method

.method public final onCallAdded(Landroid/telecom/Call;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/apps/auto/aareceiver/telecom/InCallServiceImpl;->a:Lbcx;

    invoke-interface {v0, p1}, Lbcx;->a(Landroid/telecom/Call;)V

    return-void
.end method

.method public final onCallRemoved(Landroid/telecom/Call;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/apps/auto/aareceiver/telecom/InCallServiceImpl;->a:Lbcx;

    invoke-interface {v0, p1}, Lbcx;->b(Landroid/telecom/Call;)V

    return-void
.end method
