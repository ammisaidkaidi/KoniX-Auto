.class public final Laso;
.super Lasl;
.source "PG"


# instance fields
.field public a:Ljava/util/List;

.field public b:Lgy;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lasl;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 2
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Laso;->a:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public final a(Lamo;)V
    .locals 1

    .line 1
    invoke-static {p1}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Laso;->a:Ljava/util/List;

    iget-object v0, p0, Laso;->b:Lgy;

    if-nez v0, :cond_0

    new-instance v0, Lasm;

    invoke-direct {v0, p0}, Lasm;-><init>(Laso;)V

    .line 2
    invoke-static {p0, v0}, Lgy;->a(Landroid/view/View;Ljava/lang/Runnable;)Lgy;

    move-result-object v0

    iput-object v0, p0, Laso;->b:Lgy;

    .line 3
    :cond_0
    invoke-virtual {p1}, Lamo;->a()Ljava/lang/CharSequence;

    move-result-object p1

    invoke-virtual {p0, p1}, Laso;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public final b(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;
    .locals 14

    .line 1
    invoke-virtual {p0}, Laso;->getLayout()Landroid/text/Layout;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    invoke-virtual {v0}, Landroid/text/Layout;->getWidth()I

    move-result v0

    .line 3
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v8

    const/4 v9, 0x0

    const/4 v1, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    :goto_0
    if-nez v10, :cond_7

    .line 4
    invoke-virtual {p0}, Laso;->getPaint()Landroid/text/TextPaint;

    move-result-object v1

    const/4 v5, 0x1

    int-to-float v6, v0

    const/4 v7, 0x0

    move-object v2, p1

    move v3, v11

    move v4, v8

    invoke-virtual/range {v1 .. v7}, Landroid/text/TextPaint;->breakText(Ljava/lang/CharSequence;IIZF[F)I

    move-result v1

    add-int/2addr v1, v11

    .line 5
    const-string v2, "\n"

    invoke-static {p1, v2, v11, v1}, Landroid/text/TextUtils;->indexOf(Ljava/lang/CharSequence;Ljava/lang/CharSequence;II)I

    move-result v2

    const/4 v3, -0x1

    if-eq v2, v3, :cond_0

    add-int/lit8 v2, v2, 0x1

    .line 6
    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    :cond_0
    const/4 v2, 0x1

    add-int/2addr v12, v2

    const v4, 0x7fffffff

    if-eq v12, v4, :cond_1

    add-int/lit8 v4, v8, -0x1

    if-le v1, v4, :cond_2

    const/4 v10, 0x1

    goto :goto_1

    .line 8
    :cond_1
    const/4 v10, 0x1

    .line 6
    :cond_2
    :goto_1
    if-nez v10, :cond_6

    .line 7
    invoke-interface {p1, v1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v2

    invoke-static {v2}, Ljava/lang/Character;->isWhitespace(C)Z

    move-result v2

    if-nez v2, :cond_6

    const/4 v2, 0x0

    :cond_3
    sub-int v4, v1, v2

    add-int/2addr v4, v3

    .line 8
    invoke-interface {p1, v4}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v4

    invoke-static {v4}, Ljava/lang/Character;->isWhitespace(C)Z

    move-result v4

    if-nez v4, :cond_5

    add-int/lit8 v2, v2, 0x1

    sub-int v4, v1, v2

    if-eq v4, v11, :cond_4

    if-lt v2, v1, :cond_3

    :cond_4
    const/4 v2, 0x0

    :cond_5
    sub-int/2addr v1, v2

    :cond_6
    move v13, v11

    move v11, v1

    move v1, v13

    goto :goto_0

    :cond_7
    new-instance v10, Landroid/text/SpannableStringBuilder;

    .line 9
    invoke-direct {v10}, Landroid/text/SpannableStringBuilder;-><init>()V

    .line 10
    invoke-interface {p1, v9, v1}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v10, v2}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    new-instance v2, Ljava/util/Scanner;

    .line 11
    invoke-interface {p1, v1, v8}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v1}, Ljava/util/Scanner;-><init>(Ljava/lang/String;)V

    .line 12
    invoke-virtual {v2}, Ljava/util/Scanner;->hasNextLine()Z

    move-result v1

    if-eqz v1, :cond_8

    .line 13
    invoke-virtual {v2}, Ljava/util/Scanner;->nextLine()Ljava/lang/String;

    move-result-object v1

    .line 14
    invoke-virtual {p0}, Laso;->getPaint()Landroid/text/TextPaint;

    move-result-object v2

    int-to-float v0, v0

    sget-object v3, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    invoke-static {v1, v2, v0, v3}, Landroid/text/TextUtils;->ellipsize(Ljava/lang/CharSequence;Landroid/text/TextPaint;FLandroid/text/TextUtils$TruncateAt;)Ljava/lang/CharSequence;

    move-result-object v0

    .line 15
    invoke-virtual {v10, v0}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 16
    instance-of v0, p1, Landroid/text/Spanned;

    if-eqz v0, :cond_8

    .line 17
    move-object v2, p1

    check-cast v2, Landroid/text/Spanned;

    const/4 v3, 0x0

    .line 18
    invoke-virtual {v10}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v4

    const-class v5, Ljava/lang/Object;

    const/4 v7, 0x0

    .line 17
    move-object v6, v10

    invoke-static/range {v2 .. v7}, Landroid/text/TextUtils;->copySpansFrom(Landroid/text/Spanned;IILjava/lang/Class;Landroid/text/Spannable;I)V

    :cond_8
    return-object v10
.end method
