.class public final synthetic Lauy;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lavb;

.field public final synthetic b:Lbbl;


# direct methods
.method public synthetic constructor <init>(Lavb;Lbbl;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lauy;->a:Lavb;

    iput-object p2, p0, Lauy;->b:Lbbl;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    .line 1
    iget-object v0, p0, Lauy;->a:Lavb;

    iget-object v1, p0, Lauy;->b:Lbbl;

    iget-object v2, v1, Lbbl;->F:Lzn;

    new-instance v3, Lcom/google/android/apps/auto/aareceiver/bluetooth/BluetoothAdapterManager$1;

    invoke-direct {v3, v0, v1}, Lcom/google/android/apps/auto/aareceiver/bluetooth/BluetoothAdapterManager$1;-><init>(Lavb;Lbbl;)V

    invoke-virtual {v2, v3}, Lzn;->b(Lzp;)V

    return-void
.end method
