.class final Lbct;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Landroid/content/ServiceConnection;


# instance fields
.field final synthetic a:Lbcu;


# direct methods
.method public constructor <init>(Lbcu;)V
    .locals 0

    iput-object p1, p0, Lbct;->a:Lbcu;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 3

    .line 1
    iget-object p1, p0, Lbct;->a:Lbcu;

    check-cast p2, Lbcy;

    iget-object p2, p2, Lbcy;->a:Lcom/google/android/apps/auto/aareceiver/telecom/InCallServiceImpl;

    iput-object p2, p1, Lbcu;->e:Lcom/google/android/apps/auto/aareceiver/telecom/InCallServiceImpl;

    iget-object p2, p1, Lbcu;->e:Lcom/google/android/apps/auto/aareceiver/telecom/InCallServiceImpl;

    iget-object v0, p1, Lbcu;->g:Lbcx;

    iput-object v0, p2, Lcom/google/android/apps/auto/aareceiver/telecom/InCallServiceImpl;->a:Lbcx;

    if-nez p2, :cond_0

    sget-object p1, Lbcu;->a:Lcsz;

    invoke-virtual {p1}, Lcsv;->c()Lctq;

    move-result-object p1

    const/16 p2, 0xc4

    .line 2
    const-string v0, "com/google/android/apps/auto/aareceiver/telecom/CallAvailabilityMonitor"

    const-string v1, "checkAllActivePhoneCallsAndUpdateCallAvailability"

    const-string v2, "CallAvailabilityMonitor.java"

    invoke-interface {p1, v0, v1, p2, v2}, Lcsx;->h(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Lctq;

    move-result-object p1

    check-cast p1, Lcsx;

    const-string p2, "InCallService not initialized."

    invoke-interface {p1, p2}, Lcsx;->n(Ljava/lang/String;)V

    return-void

    .line 3
    :cond_0
    invoke-virtual {p2}, Lcom/google/android/apps/auto/aareceiver/telecom/InCallServiceImpl;->getCalls()Ljava/util/List;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_1
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telecom/Call;

    .line 4
    invoke-virtual {p1, v0}, Lbcu;->c(Landroid/telecom/Call;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object p1, p1, Lbcu;->c:Lcom/google/android/projection/protocol/GalReceiver;

    const/4 p2, 0x0

    .line 5
    invoke-virtual {p1, p2}, Lcom/google/android/projection/protocol/GalReceiver;->nativeSetCallAvailability(Z)V

    :cond_2
    return-void
.end method

.method public final onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 0

    .line 1
    iget-object p1, p0, Lbct;->a:Lbcu;

    invoke-virtual {p1}, Lbcu;->b()V

    return-void
.end method
