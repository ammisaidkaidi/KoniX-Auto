.class public final synthetic Lben;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lcom/google/android/apps/auto/aareceiver/ui/AndroidAutoHeadunitActivity;

.field public final synthetic b:Ldas;


# direct methods
.method public synthetic constructor <init>(Lcom/google/android/apps/auto/aareceiver/ui/AndroidAutoHeadunitActivity;Ldas;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lben;->a:Lcom/google/android/apps/auto/aareceiver/ui/AndroidAutoHeadunitActivity;

    iput-object p2, p0, Lben;->b:Ldas;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .line 1
    iget-object v0, p0, Lben;->a:Lcom/google/android/apps/auto/aareceiver/ui/AndroidAutoHeadunitActivity;

    iget-object v1, p0, Lben;->b:Ldas;

    iget-object v0, v0, Lcom/google/android/apps/auto/aareceiver/ui/AndroidAutoHeadunitActivity;->w:Lbgz;

    invoke-virtual {v0, v1}, Lbgz;->f(Ldas;)V

    return-void
.end method
