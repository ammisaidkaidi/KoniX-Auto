.class public final synthetic Laol;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic a:Landroid/widget/CompoundButton;

.field public final synthetic b:Larh;


# direct methods
.method public synthetic constructor <init>(Landroid/widget/CompoundButton;Larh;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Laol;->a:Landroid/widget/CompoundButton;

    iput-object p2, p0, Laol;->b:Larh;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 2

    .line 1
    iget-object p1, p0, Laol;->a:Landroid/widget/CompoundButton;

    iget-object v0, p0, Laol;->b:Larh;

    sget v1, Laoo;->p:I

    invoke-virtual {p1}, Landroid/widget/CompoundButton;->toggle()V

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Larh;->a()V

    :cond_0
    return-void
.end method
