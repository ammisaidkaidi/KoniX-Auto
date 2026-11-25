.class public final synthetic Lbfb;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lcom/google/android/apps/auto/aareceiver/ui/ClusterActivity;

.field public final synthetic b:Ldas;


# direct methods
.method public synthetic constructor <init>(Lcom/google/android/apps/auto/aareceiver/ui/ClusterActivity;Ldas;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lbfb;->a:Lcom/google/android/apps/auto/aareceiver/ui/ClusterActivity;

    iput-object p2, p0, Lbfb;->b:Ldas;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .line 1
    iget-object v0, p0, Lbfb;->a:Lcom/google/android/apps/auto/aareceiver/ui/ClusterActivity;

    iget-object v1, p0, Lbfb;->b:Ldas;

    iget-object v0, v0, Lcom/google/android/apps/auto/aareceiver/ui/ClusterActivity;->w:Lbgz;

    invoke-virtual {v0, v1}, Lbgz;->f(Ldas;)V

    return-void
.end method
