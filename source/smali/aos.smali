.class public final synthetic Laos;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Landroid/view/View$OnFocusChangeListener;


# instance fields
.field public final synthetic a:Laox;


# direct methods
.method public synthetic constructor <init>(Laox;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Laos;->a:Laox;

    return-void
.end method


# virtual methods
.method public final onFocusChange(Landroid/view/View;Z)V
    .locals 0

    .line 1
    iget-object p1, p0, Laos;->a:Laox;

    iget-object p1, p1, Laox;->b:Lapj;

    if-eqz p1, :cond_0

    invoke-interface {p1, p2}, Lapj;->setHighlightThumb(Z)V

    :cond_0
    return-void
.end method
