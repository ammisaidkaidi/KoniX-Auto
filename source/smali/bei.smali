.class public final synthetic Lbei;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic a:Lcom/google/android/apps/auto/aareceiver/ui/AndroidAutoHeadunitActivity;


# direct methods
.method public synthetic constructor <init>(Lcom/google/android/apps/auto/aareceiver/ui/AndroidAutoHeadunitActivity;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lbei;->a:Lcom/google/android/apps/auto/aareceiver/ui/AndroidAutoHeadunitActivity;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 4

    .line 1
    iget-object p1, p0, Lbei;->a:Lcom/google/android/apps/auto/aareceiver/ui/AndroidAutoHeadunitActivity;

    invoke-static {}, Ldkd;->c()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p1, Lcom/google/android/apps/auto/aareceiver/ui/AndroidAutoHeadunitActivity;->m:Lbah;

    iget-object v0, v0, Lbah;->h:Lbbl;

    if-eqz v0, :cond_0

    iget-object v1, v0, Lbbl;->h:Lawo;

    if-eqz v1, :cond_0

    iget-object v2, p1, Lcom/google/android/apps/auto/aareceiver/ui/AndroidAutoHeadunitActivity;->m:Lbah;

    .line 2
    sget-object v3, Lawp;->a:Lawp;

    invoke-virtual {v2, v1, v3}, Lbah;->v(Lawo;Lawp;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p1, Lcom/google/android/apps/auto/aareceiver/ui/AndroidAutoHeadunitActivity;->m:Lbah;

    iget-object v0, v0, Lbbl;->h:Lawo;

    .line 3
    invoke-virtual {v1, v0}, Lbah;->p(Lawo;)V

    .line 4
    :cond_0
    invoke-virtual {p1}, Lcom/google/android/apps/auto/aareceiver/ui/AndroidAutoHeadunitActivity;->finish()V

    return-void
.end method
