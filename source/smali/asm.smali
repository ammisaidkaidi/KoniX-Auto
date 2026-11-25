.class public final synthetic Lasm;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Laso;


# direct methods
.method public synthetic constructor <init>(Laso;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lasm;->a:Laso;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 8

    .line 1
    iget-object v0, p0, Lasm;->a:Laso;

    iget-object v1, v0, Laso;->a:Ljava/util/List;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    invoke-virtual {v0}, Laso;->getLayout()Landroid/text/Layout;

    move-result-object v1

    if-nez v1, :cond_0

    new-instance v1, Lasm;

    invoke-direct {v1, v0}, Lasm;-><init>(Laso;)V

    .line 3
    invoke-static {v0, v1}, Lgy;->a(Landroid/view/View;Ljava/lang/Runnable;)Lgy;

    move-result-object v1

    iput-object v1, v0, Laso;->b:Lgy;

    return-void

    :cond_0
    const/4 v1, 0x0

    iput-object v1, v0, Laso;->b:Lgy;

    iget-object v1, v0, Laso;->a:Ljava/util/List;

    .line 4
    invoke-static {v1}, Lj$/util/Collection$-EL;->stream(Ljava/util/Collection;)Lj$/util/stream/Stream;

    move-result-object v1

    sget-object v2, Lasn;->a:Lasn;

    invoke-interface {v1, v2}, Lj$/util/stream/Stream;->allMatch(Lj$/util/function/Predicate;)Z

    move-result v1

    if-eqz v1, :cond_1

    return-void

    :cond_1
    new-instance v1, Landroid/text/SpannableStringBuilder;

    .line 5
    invoke-direct {v1}, Landroid/text/SpannableStringBuilder;-><init>()V

    const/4 v2, 0x0

    const-string v3, ""

    :goto_0
    iget-object v4, v0, Laso;->a:Ljava/util/List;

    .line 6
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-ge v2, v4, :cond_4

    iget-object v4, v0, Laso;->a:Ljava/util/List;

    .line 7
    invoke-interface {v4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lamo;

    .line 8
    invoke-virtual {v1, v3}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    move-result-object v3

    iget-object v5, v4, Lamo;->c:Ljava/util/List;

    .line 9
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    const/4 v6, 0x1

    if-le v5, v6, :cond_3

    iget-object v5, v4, Lamo;->c:Ljava/util/List;

    .line 10
    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_2
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_3

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/CharSequence;

    .line 11
    invoke-interface {v6}, Ljava/lang/CharSequence;->length()I

    iget v7, v4, Lamo;->b:I

    iget v7, v4, Lamo;->a:I

    .line 12
    invoke-virtual {v0, v6}, Laso;->b(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v7

    .line 11
    invoke-static {v6, v7}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_2

    goto :goto_1

    .line 13
    :cond_3
    invoke-virtual {v4}, Lamo;->a()Ljava/lang/CharSequence;

    move-result-object v5

    iget v4, v4, Lamo;->a:I

    invoke-virtual {v0, v5}, Laso;->b(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v6

    .line 8
    :goto_1
    invoke-virtual {v3, v6}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    add-int/lit8 v2, v2, 0x1

    const-string v3, "\n"

    goto :goto_0

    .line 14
    :cond_4
    invoke-virtual {v0, v1}, Laso;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method
