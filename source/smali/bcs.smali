.class final Lbcs;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Lbcx;


# instance fields
.field final synthetic a:Lbcu;


# direct methods
.method public constructor <init>(Lbcu;)V
    .locals 0

    iput-object p1, p0, Lbcs;->a:Lbcu;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Landroid/telecom/Call;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lbcs;->a:Lbcu;

    invoke-virtual {v0, p1}, Lbcu;->c(Landroid/telecom/Call;)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lbcs;->a:Lbcu;

    iget-object p1, p1, Lbcu;->c:Lcom/google/android/projection/protocol/GalReceiver;

    const/4 v0, 0x0

    .line 2
    invoke-virtual {p1, v0}, Lcom/google/android/projection/protocol/GalReceiver;->nativeSetCallAvailability(Z)V

    :cond_0
    return-void
.end method

.method public final b(Landroid/telecom/Call;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lbcs;->a:Lbcu;

    invoke-virtual {v0, p1}, Lbcu;->c(Landroid/telecom/Call;)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lbcs;->a:Lbcu;

    iget-object p1, p1, Lbcu;->c:Lcom/google/android/projection/protocol/GalReceiver;

    const/4 v0, 0x1

    .line 2
    invoke-virtual {p1, v0}, Lcom/google/android/projection/protocol/GalReceiver;->nativeSetCallAvailability(Z)V

    :cond_0
    return-void
.end method
