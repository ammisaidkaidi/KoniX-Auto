.class public final synthetic Lbfj;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic a:Lcom/google/android/apps/auto/aareceiver/ui/ErrorMessageActivity;


# direct methods
.method public synthetic constructor <init>(Lcom/google/android/apps/auto/aareceiver/ui/ErrorMessageActivity;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lbfj;->a:Lcom/google/android/apps/auto/aareceiver/ui/ErrorMessageActivity;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 0

    .line 1
    iget-object p1, p0, Lbfj;->a:Lcom/google/android/apps/auto/aareceiver/ui/ErrorMessageActivity;

    invoke-virtual {p1}, Lcom/google/android/apps/auto/aareceiver/ui/ErrorMessageActivity;->finish()V

    return-void
.end method
