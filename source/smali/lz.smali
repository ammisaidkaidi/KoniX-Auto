.class final Llz;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Landroid/widget/PopupWindow$OnDismissListener;


# instance fields
.field final synthetic a:Lma;


# direct methods
.method public constructor <init>(Lma;)V
    .locals 0

    iput-object p1, p0, Llz;->a:Lma;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onDismiss()V
    .locals 1

    .line 1
    iget-object v0, p0, Llz;->a:Lma;

    invoke-virtual {v0}, Lma;->c()V

    return-void
.end method
