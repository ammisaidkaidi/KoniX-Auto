.class Lx/d$Onb;
.super Ljava/lang/Object;
.source "d.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lx/d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Onb"
.end annotation


# instance fields
.field private final accept:Landroid/widget/Button;

.field private final dlg:Landroid/app/Dialog;

.field private idx:I

.field private final img:Landroid/widget/ImageView;

.field private final label:Landroid/widget/TextView;

.field private final next:Landroid/widget/Button;

.field private final prev:Landroid/widget/Button;

.field private final sp:Landroid/content/SharedPreferences;


# direct methods
.method constructor <init>(Landroid/app/Dialog;Landroid/widget/ImageView;Landroid/widget/TextView;Landroid/widget/Button;Landroid/widget/Button;Landroid/widget/Button;Landroid/content/SharedPreferences;)V
    .locals 1

    .line 179
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 176
    const/4 v0, 0x0

    iput v0, p0, Lx/d$Onb;->idx:I

    .line 180
    iput-object p1, p0, Lx/d$Onb;->dlg:Landroid/app/Dialog;

    .line 181
    iput-object p2, p0, Lx/d$Onb;->img:Landroid/widget/ImageView;

    .line 182
    iput-object p3, p0, Lx/d$Onb;->label:Landroid/widget/TextView;

    .line 183
    iput-object p4, p0, Lx/d$Onb;->prev:Landroid/widget/Button;

    .line 184
    iput-object p5, p0, Lx/d$Onb;->next:Landroid/widget/Button;

    .line 185
    iput-object p6, p0, Lx/d$Onb;->accept:Landroid/widget/Button;

    .line 186
    iput-object p7, p0, Lx/d$Onb;->sp:Landroid/content/SharedPreferences;

    .line 187
    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 201
    :try_start_0
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    .line 202
    const/16 v0, 0x65

    const/4 v1, 0x1

    if-ne p1, v0, :cond_0

    .line 203
    iget p1, p0, Lx/d$Onb;->idx:I

    if-lez p1, :cond_2

    iget p1, p0, Lx/d$Onb;->idx:I

    sub-int/2addr p1, v1

    iput p1, p0, Lx/d$Onb;->idx:I

    invoke-virtual {p0}, Lx/d$Onb;->refresh()V

    goto :goto_1

    .line 204
    :cond_0
    const/16 v0, 0x66

    if-ne p1, v0, :cond_1

    .line 205
    iget p1, p0, Lx/d$Onb;->idx:I

    const/4 v0, 0x4

    if-ge p1, v0, :cond_2

    iget p1, p0, Lx/d$Onb;->idx:I

    add-int/2addr p1, v1

    iput p1, p0, Lx/d$Onb;->idx:I

    invoke-virtual {p0}, Lx/d$Onb;->refresh()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    goto :goto_1

    .line 206
    :cond_1
    const/16 v0, 0x67

    if-ne p1, v0, :cond_2

    .line 208
    :try_start_1
    iget-object p1, p0, Lx/d$Onb;->sp:Landroid/content/SharedPreferences;

    invoke-interface {p1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    const-string v0, "onb_seen"

    invoke-interface {p1, v0, v1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 210
    goto :goto_0

    .line 209
    :catchall_0
    move-exception p1

    .line 211
    :goto_0
    :try_start_2
    iget-object p1, p0, Lx/d$Onb;->dlg:Landroid/app/Dialog;

    invoke-virtual {p1}, Landroid/app/Dialog;->dismiss()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 214
    :cond_2
    :goto_1
    goto :goto_2

    .line 213
    :catchall_1
    move-exception p1

    .line 215
    :goto_2
    return-void
.end method

.method refresh()V
    .locals 5

    .line 190
    iget-object v0, p0, Lx/d$Onb;->img:Landroid/widget/ImageView;

    invoke-static {}, Lx/d;->access$000()[I

    move-result-object v1

    iget v2, p0, Lx/d$Onb;->idx:I

    aget v1, v1, v2

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 191
    iget-object v0, p0, Lx/d$Onb;->label:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget v2, p0, Lx/d$Onb;->idx:I

    const/4 v3, 0x1

    add-int/2addr v2, v3

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " / "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/4 v2, 0x5

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 192
    iget-object v0, p0, Lx/d$Onb;->prev:Landroid/widget/Button;

    iget v1, p0, Lx/d$Onb;->idx:I

    const/4 v2, 0x0

    if-lez v1, :cond_0

    move v1, v3

    goto :goto_0

    :cond_0
    move v1, v2

    :goto_0
    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 193
    iget v0, p0, Lx/d$Onb;->idx:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_1

    goto :goto_1

    :cond_1
    move v3, v2

    .line 194
    :goto_1
    iget-object v0, p0, Lx/d$Onb;->next:Landroid/widget/Button;

    const/16 v1, 0x8

    if-eqz v3, :cond_2

    move v4, v1

    goto :goto_2

    :cond_2
    move v4, v2

    :goto_2
    invoke-virtual {v0, v4}, Landroid/widget/Button;->setVisibility(I)V

    .line 195
    iget-object v0, p0, Lx/d$Onb;->accept:Landroid/widget/Button;

    if-eqz v3, :cond_3

    goto :goto_3

    :cond_3
    move v2, v1

    :goto_3
    invoke-virtual {v0, v2}, Landroid/widget/Button;->setVisibility(I)V

    .line 196
    return-void
.end method
