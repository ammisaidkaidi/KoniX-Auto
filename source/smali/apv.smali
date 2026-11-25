.class public final synthetic Lapv;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic a:Lapx;


# direct methods
.method public synthetic constructor <init>(Lapx;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lapv;->a:Lapx;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 0

    .line 1
    iget-object p1, p0, Lapv;->a:Lapx;

    iget-object p1, p1, Lapx;->b:Lapu;

    invoke-virtual {p1}, Lapu;->b()V

    return-void
.end method
