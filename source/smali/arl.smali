.class public final synthetic Larl;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Ljava/lang/ref/WeakReference;

.field public final synthetic b:Ljava/lang/CharSequence;

.field public final synthetic c:Landroid/text/PrecomputedText$Params;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/ref/WeakReference;Ljava/lang/CharSequence;Landroid/text/PrecomputedText$Params;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Larl;->a:Ljava/lang/ref/WeakReference;

    iput-object p2, p0, Larl;->b:Ljava/lang/CharSequence;

    iput-object p3, p0, Larl;->c:Landroid/text/PrecomputedText$Params;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    .line 1
    iget-object v0, p0, Larl;->a:Ljava/lang/ref/WeakReference;

    iget-object v1, p0, Larl;->b:Ljava/lang/CharSequence;

    iget-object v2, p0, Larl;->c:Landroid/text/PrecomputedText$Params;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    if-nez v3, :cond_0

    return-void

    .line 2
    :cond_0
    invoke-static {v1, v2}, Landroid/text/PrecomputedText;->create(Ljava/lang/CharSequence;Landroid/text/PrecomputedText$Params;)Landroid/text/PrecomputedText;

    move-result-object v2

    new-instance v4, Lark;

    invoke-direct {v4, v0, v2, v1}, Lark;-><init>(Ljava/lang/ref/WeakReference;Landroid/text/PrecomputedText;Ljava/lang/CharSequence;)V

    .line 3
    invoke-virtual {v3, v4}, Landroid/widget/TextView;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
