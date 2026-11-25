.class final Labd;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Labe;


# direct methods
.method public constructor <init>(Labe;)V
    .locals 0

    iput-object p1, p0, Labd;->a:Labe;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .line 1
    iget-object v0, p0, Labd;->a:Labe;

    iget-object v1, v0, Labe;->f:Labz;

    iget-object v1, v1, Labz;->b:Lvb;

    iget-object v0, v0, Labe;->g:Labx;

    invoke-virtual {v0}, Labx;->a()Landroid/os/IBinder;

    move-result-object v0

    invoke-virtual {v1, v0}, Lvi;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method
