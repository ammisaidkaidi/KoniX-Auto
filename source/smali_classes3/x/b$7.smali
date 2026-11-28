.class Lx/b$7;
.super Ljava/lang/Object;
.source "b.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lx/b;->togglePanel()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 220
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 222
    invoke-static {}, Lx/a;->enabled()Z

    move-result p1

    .line 223
    xor-int/lit8 p1, p1, 0x1

    invoke-static {p1}, Lx/a;->setEnabled(Z)V

    .line 224
    invoke-static {}, Lx/b;->access$700()Landroid/content/Context;

    move-result-object v0

    if-eqz p1, :cond_0

    const-string p1, "\u0627\u0644\u062a\u0637\u0628\u064a\u0642 \u064a\u0639\u0645\u0644"

    goto :goto_0

    :cond_0
    const-string p1, "\u0627\u0644\u062a\u0637\u0628\u064a\u0642 \u0645\u062a\u0648\u0642\u0641 (\u0644\u0627 \u0627\u062a\u0635\u0627\u0644 \u062a\u0644\u0642\u0627\u0626\u064a)"

    :goto_0
    const/4 v1, 0x0

    invoke-static {v0, p1, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    .line 225
    invoke-static {}, Lx/b;->access$600()V

    .line 226
    return-void
.end method
