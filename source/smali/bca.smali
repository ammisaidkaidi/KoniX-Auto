.class final Lbca;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Lacq;


# instance fields
.field a:I

.field final synthetic b:Lbcb;


# direct methods
.method public constructor <init>(Lbcb;)V
    .locals 0

    iput-object p1, p0, Lbca;->b:Lbcb;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x0

    iput p1, p0, Lbca;->a:I

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 4

    .line 1
    iget-object v0, p0, Lbca;->b:Lbcb;

    invoke-virtual {v0}, Lbcb;->as()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lbca;->b:Lbcb;

    iget-object v1, v0, Lbcb;->ad:Landroid/widget/Toast;

    const v2, 0x7f100049

    .line 2
    invoke-virtual {v0, v2}, Lbcb;->F(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/Toast;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, v0, Lbcb;->ad:Landroid/widget/Toast;

    .line 3
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    return-void

    :cond_0
    iget v0, p0, Lbca;->a:I

    const/4 v1, 0x1

    add-int/2addr v0, v1

    iput v0, p0, Lbca;->a:I

    const/16 v2, 0xa

    if-ne v0, v2, :cond_1

    iget-object v0, p0, Lbca;->b:Lbcb;

    iget-object v2, v0, Lbcb;->f:Landroid/content/SharedPreferences;

    .line 4
    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    const v3, 0x7f10004d

    .line 5
    invoke-virtual {v0, v3}, Lbcb;->F(I)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v2, v0, v1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 6
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    iget-object v0, p0, Lbca;->b:Lbcb;

    iget v1, p0, Lbca;->a:I

    .line 7
    invoke-virtual {v0, v1}, Lbcb;->ar(I)V

    const/4 v0, 0x0

    iput v0, p0, Lbca;->a:I

    return-void

    :cond_1
    const/4 v1, 0x7

    if-lt v0, v1, :cond_2

    iget-object v1, p0, Lbca;->b:Lbcb;

    .line 8
    invoke-virtual {v1, v0}, Lbcb;->ar(I)V

    :cond_2
    return-void
.end method
