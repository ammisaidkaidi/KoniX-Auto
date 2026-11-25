.class public final Lbbj;
.super Ljava/lang/Object;
.source "PG"


# instance fields
.field final synthetic a:Ljava/lang/Runnable;

.field final synthetic b:Ldas;

.field final synthetic c:Lbbl;


# direct methods
.method public constructor <init>(Lbbl;Ljava/lang/Runnable;Ldas;)V
    .locals 0

    iput-object p1, p0, Lbbj;->c:Lbbl;

    iput-object p2, p0, Lbbj;->a:Ljava/lang/Runnable;

    iput-object p3, p0, Lbbj;->b:Ldas;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lclz;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lbbj;->c:Lbbl;

    iget-object v1, v0, Lbbl;->w:Lbde;

    iget-object v0, v0, Lbbl;->g:Lawp;

    sget-object v2, Lawp;->a:Lawp;

    sget-object v2, Lcly;->a:Lcly;

    invoke-virtual {v0}, Lawp;->ordinal()I

    .line 2
    invoke-virtual {v1}, Lbde;->c()V

    iget-object v0, p0, Lbbj;->c:Lbbl;

    iget-object v0, v0, Lbbl;->i:Landroid/os/Handler;

    iget-object v1, p0, Lbbj;->a:Ljava/lang/Runnable;

    .line 3
    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    iget-object v0, p0, Lbbj;->b:Ldas;

    .line 4
    invoke-virtual {v0, p1}, Ldas;->k(Ljava/lang/Object;)Z

    return-void
.end method

.method public final b()V
    .locals 3

    .line 1
    iget-object v0, p0, Lbbj;->c:Lbbl;

    iget-object v1, v0, Lbbl;->w:Lbde;

    iget-object v0, v0, Lbbl;->g:Lawp;

    sget-object v2, Lawp;->a:Lawp;

    sget-object v2, Lcly;->a:Lcly;

    invoke-virtual {v0}, Lawp;->ordinal()I

    .line 2
    invoke-virtual {v1}, Lbde;->c()V

    iget-object v0, p0, Lbbj;->c:Lbbl;

    iget-object v0, v0, Lbbl;->j:Lcom/google/android/projection/protocol/GalReceiver;

    sget-object v1, Lcly;->g:Lcly;

    .line 3
    invoke-virtual {v0, v1}, Lcom/google/android/projection/protocol/GalReceiver;->c(Lcly;)V

    return-void
.end method
