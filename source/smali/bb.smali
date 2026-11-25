.class final Lbb;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lbc;


# direct methods
.method public constructor <init>(Lbc;)V
    .locals 0

    iput-object p1, p0, Lbb;->a:Lbc;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .line 1
    iget-object v0, p0, Lbb;->a:Lbc;

    iget-object v1, v0, Lbc;->b:Landroid/view/ViewGroup;

    iget-object v0, v0, Lbc;->c:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->endViewTransition(Landroid/view/View;)V

    iget-object v0, p0, Lbb;->a:Lbc;

    iget-object v0, v0, Lbc;->d:Lbe;

    .line 2
    invoke-virtual {v0}, Lbf;->b()V

    return-void
.end method
