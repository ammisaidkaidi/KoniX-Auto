.class public final Lamn;
.super Ljava/lang/Object;
.source "PG"


# instance fields
.field public final a:Landroid/app/AlertDialog$Builder;

.field public final b:Landroid/content/Context;

.field public c:Landroid/view/ViewGroup;

.field public final d:Landroid/view/View$OnApplyWindowInsetsListener;

.field public final e:Landroid/content/DialogInterface$OnDismissListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lamm;

    invoke-direct {v0}, Lamm;-><init>()V

    iput-object v0, p0, Lamn;->d:Landroid/view/View$OnApplyWindowInsetsListener;

    new-instance v0, Laml;

    invoke-direct {v0, p0}, Laml;-><init>(Lamn;)V

    iput-object v0, p0, Lamn;->e:Landroid/content/DialogInterface$OnDismissListener;

    .line 2
    new-instance v0, Landroid/app/AlertDialog$Builder;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;I)V

    iput-object v0, p0, Lamn;->a:Landroid/app/AlertDialog$Builder;

    .line 3
    const-string v0, "input_method"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    iput-object p1, p0, Lamn;->b:Landroid/content/Context;

    return-void
.end method
