.class final Lacv;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lada;


# direct methods
.method public constructor <init>(Lada;)V
    .locals 0

    iput-object p1, p0, Lacv;->a:Lada;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    .line 1
    iget-object v0, p0, Lacv;->a:Lada;

    iget-object v0, v0, Lada;->b:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v0, v0}, Landroid/support/v7/widget/RecyclerView;->focusableViewAvailable(Landroid/view/View;)V

    return-void
.end method
