.class final Lke;
.super Lhw;
.source "PG"


# instance fields
.field final synthetic a:Lkh;


# direct methods
.method public constructor <init>(Lkh;)V
    .locals 0

    iput-object p1, p0, Lke;->a:Lkh;

    invoke-direct {p0}, Lhw;-><init>()V

    return-void
.end method


# virtual methods
.method public final b()V
    .locals 2

    .line 1
    iget-object v0, p0, Lke;->a:Lkh;

    const/4 v1, 0x0

    iput-object v1, v0, Lkh;->m:Lkw;

    iget-object v0, v0, Lkh;->c:Landroid/support/v7/widget/ActionBarContainer;

    invoke-virtual {v0}, Landroid/support/v7/widget/ActionBarContainer;->requestLayout()V

    return-void
.end method
