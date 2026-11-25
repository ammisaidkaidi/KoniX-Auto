.class final Laql;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Larr;


# instance fields
.field final synthetic a:Laqm;


# direct methods
.method public constructor <init>(Laqm;)V
    .locals 0

    iput-object p1, p0, Laql;->a:Laqm;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Landroid/car/drivingstate/CarUxRestrictions;)V
    .locals 4

    .line 1
    invoke-virtual {p1}, Landroid/car/drivingstate/CarUxRestrictions;->getActiveRestrictions()I

    move-result p1

    and-int/lit8 p1, p1, 0x8

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eqz p1, :cond_1

    iget-object p1, p0, Laql;->a:Laqm;

    iput-boolean v0, p1, Laqm;->m:Z

    iget-object v0, p1, Laqm;->k:Landroid/widget/EditText;

    if-nez v0, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    invoke-virtual {v0}, Landroid/widget/EditText;->getContext()Landroid/content/Context;

    move-result-object v2

    const v3, 0x7f10002a

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/EditText;->setHint(Ljava/lang/CharSequence;)V

    iget-object p1, p1, Laqm;->k:Landroid/widget/EditText;

    .line 3
    invoke-virtual {p1, v1}, Landroid/widget/EditText;->setEnabled(Z)V

    return-void

    :cond_1
    iget-object p1, p0, Laql;->a:Laqm;

    iput-boolean v1, p1, Laqm;->m:Z

    iget-object v1, p1, Laqm;->k:Landroid/widget/EditText;

    if-eqz v1, :cond_2

    iget-object v2, p1, Laqm;->l:Ljava/lang/CharSequence;

    .line 4
    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setHint(Ljava/lang/CharSequence;)V

    iget-object p1, p1, Laqm;->k:Landroid/widget/EditText;

    .line 5
    invoke-virtual {p1, v0}, Landroid/widget/EditText;->setEnabled(Z)V

    return-void

    .line 1
    :cond_2
    :goto_0
    return-void
.end method
