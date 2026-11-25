.class public final synthetic Lbeo;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lcom/google/android/apps/auto/aareceiver/ui/AndroidAutoHeadunitActivity;

.field public final synthetic b:Z


# direct methods
.method public synthetic constructor <init>(Lcom/google/android/apps/auto/aareceiver/ui/AndroidAutoHeadunitActivity;Z)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lbeo;->a:Lcom/google/android/apps/auto/aareceiver/ui/AndroidAutoHeadunitActivity;

    iput-boolean p2, p0, Lbeo;->b:Z

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .line 1
    iget-object v0, p0, Lbeo;->a:Lcom/google/android/apps/auto/aareceiver/ui/AndroidAutoHeadunitActivity;

    iget-boolean v1, p0, Lbeo;->b:Z

    invoke-static {}, Ldkj;->c()Z

    move-result v2

    if-eqz v2, :cond_1

    if-eqz v1, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    invoke-virtual {v0}, Lbfi;->x()V

    return-void

    .line 1
    :cond_1
    :goto_0
    if-nez v1, :cond_3

    iget-object v1, v0, Lcom/google/android/apps/auto/aareceiver/ui/AndroidAutoHeadunitActivity;->w:Lbgz;

    if-eqz v1, :cond_2

    .line 2
    invoke-virtual {v1}, Lbgz;->h()V

    :cond_2
    invoke-virtual {v0}, Lcom/google/android/apps/auto/aareceiver/ui/AndroidAutoHeadunitActivity;->isFinishing()Z

    move-result v1

    if-nez v1, :cond_3

    invoke-virtual {v0}, Lcom/google/android/apps/auto/aareceiver/ui/AndroidAutoHeadunitActivity;->finish()V

    :cond_3
    return-void
.end method
