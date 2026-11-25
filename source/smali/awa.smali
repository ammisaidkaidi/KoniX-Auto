.class final Lawa;
.super Ljava/lang/Object;
.source "PG"


# instance fields
.field final synthetic a:Lawh;


# direct methods
.method public constructor <init>(Lawh;)V
    .locals 0

    iput-object p1, p0, Lawa;->a:Lawh;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lawa;->a:Lawh;

    iget-object v1, v0, Lawh;->b:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lawg;

    if-eqz p1, :cond_0

    iget-object v1, v0, Lawh;->d:Lbah;

    iget-object p1, p1, Lawg;->a:Landroid/bluetooth/BluetoothDevice;

    .line 2
    invoke-virtual {v1, p1}, Lbah;->k(Landroid/bluetooth/BluetoothDevice;)V

    iget-object p1, v0, Lawh;->d:Lbah;

    iget-object p1, p1, Lbah;->h:Lbbl;

    if-eqz p1, :cond_0

    iget-object p1, v0, Lawh;->d:Lbah;

    iget-object p1, p1, Lbah;->h:Lbbl;

    .line 3
    invoke-virtual {p1}, Lbbl;->a()V

    :cond_0
    return-void
.end method
