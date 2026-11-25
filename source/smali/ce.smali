.class final Lce;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Landroid/view/LayoutInflater$Factory2;


# instance fields
.field final a:Lcr;


# direct methods
.method public constructor <init>(Lcr;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lce;->a:Lcr;

    return-void
.end method


# virtual methods
.method public final onCreateView(Landroid/view/View;Ljava/lang/String;Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/view/View;
    .locals 9

    .line 1
    const-class v0, Lbz;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance p1, Lbz;

    iget-object p2, p0, Lce;->a:Lcr;

    .line 2
    invoke-direct {p1, p3, p4, p2}, Lbz;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;Lcr;)V

    return-object p1

    :cond_0
    nop

    .line 3
    const-string v0, "fragment"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    const/4 v0, 0x0

    if-nez p2, :cond_1

    return-object v0

    .line 4
    :cond_1
    const-string p2, "class"

    invoke-interface {p4, v0, p2}, Landroid/util/AttributeSet;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 5
    sget-object v1, Lat;->a:[I

    invoke-virtual {p3, p4, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v1

    const/4 v2, 0x0

    if-nez p2, :cond_2

    .line 6
    invoke-virtual {v1, v2}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object p2

    :cond_2
    nop

    .line 7
    const/4 v3, 0x1

    const/4 v4, -0x1

    invoke-virtual {v1, v3, v4}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v5

    .line 8
    const/4 v6, 0x2

    invoke-virtual {v1, v6}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 9
    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    if-eqz p2, :cond_13

    .line 10
    invoke-virtual {p3}, Landroid/content/Context;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    :try_start_0
    const-class v8, Lbr;

    .line 11
    invoke-static {v1, p2}, Lcb;->a(Ljava/lang/ClassLoader;Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    .line 12
    invoke-virtual {v8, v1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v1
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    if-nez v1, :cond_3

    goto/16 :goto_5

    :cond_3
    if-eqz p1, :cond_4

    .line 13
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v2

    goto :goto_0

    .line 36
    :cond_4
    nop

    .line 13
    :goto_0
    if-ne v2, v4, :cond_7

    if-ne v5, v4, :cond_6

    if-eqz v7, :cond_5

    const/4 v2, -0x1

    const/4 v5, -0x1

    goto :goto_1

    .line 36
    :cond_5
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance p3, Ljava/lang/StringBuilder;

    .line 48
    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {p4}, Landroid/util/AttributeSet;->getPositionDescription()Ljava/lang/String;

    move-result-object p4

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p4, ": Must specify unique android:id, android:tag, or have a parent with an id for "

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 36
    :cond_6
    const/4 v2, -0x1

    goto :goto_1

    :cond_7
    nop

    .line 13
    :goto_1
    if-eq v5, v4, :cond_8

    iget-object v0, p0, Lce;->a:Lcr;

    .line 14
    invoke-virtual {v0, v5}, Lcr;->c(I)Lbr;

    move-result-object v0

    goto :goto_2

    .line 36
    :cond_8
    nop

    .line 14
    :goto_2
    if-nez v0, :cond_9

    if-eqz v7, :cond_9

    iget-object v0, p0, Lce;->a:Lcr;

    .line 15
    invoke-virtual {v0, v7}, Lcr;->d(Ljava/lang/String;)Lbr;

    move-result-object v0

    :cond_9
    if-nez v0, :cond_a

    if-eq v2, v4, :cond_a

    iget-object v0, p0, Lce;->a:Lcr;

    .line 16
    invoke-virtual {v0, v2}, Lcr;->c(I)Lbr;

    move-result-object v0

    :cond_a
    const-string v1, "Fragment "

    if-nez v0, :cond_d

    iget-object p4, p0, Lce;->a:Lcr;

    .line 17
    invoke-virtual {p4}, Lcr;->e()Lcb;

    move-result-object p4

    .line 18
    invoke-virtual {p3}, Landroid/content/Context;->getClassLoader()Ljava/lang/ClassLoader;

    .line 17
    invoke-virtual {p4, p2}, Lcb;->b(Ljava/lang/String;)Lbr;

    move-result-object v0

    .line 19
    iput-boolean v3, v0, Lbr;->v:Z

    if-eqz v5, :cond_b

    move p3, v5

    goto :goto_3

    .line 47
    :cond_b
    move p3, v2

    .line 20
    :goto_3
    iput p3, v0, Lbr;->E:I

    .line 21
    iput v2, v0, Lbr;->F:I

    .line 22
    iput-object v7, v0, Lbr;->G:Ljava/lang/String;

    .line 23
    iput-boolean v3, v0, Lbr;->w:Z

    iget-object p3, p0, Lce;->a:Lcr;

    .line 24
    iput-object p3, v0, Lbr;->A:Lcr;

    iget-object p3, p0, Lce;->a:Lcr;

    iget-object p4, p3, Lcr;->j:Lcc;

    .line 25
    iput-object p4, v0, Lbr;->B:Lcc;

    iget-object p3, p3, Lcr;->j:Lcc;

    iget-object p3, p3, Lcc;->c:Landroid/content/Context;

    .line 26
    iget-object p3, v0, Lbr;->i:Landroid/os/Bundle;

    invoke-virtual {v0}, Lbr;->ae()V

    iget-object p3, p0, Lce;->a:Lcr;

    .line 27
    invoke-virtual {p3, v0}, Lcr;->f(Lbr;)Lcx;

    move-result-object p3

    invoke-static {v6}, Lcr;->R(I)Z

    move-result p4

    if-eqz p4, :cond_c

    new-instance p4, Ljava/lang/StringBuilder;

    .line 28
    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " has been inflated via the <fragment> tag: id=0x"

    invoke-virtual {p4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 29
    invoke-static {v5}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_4

    .line 47
    :cond_c
    goto :goto_4

    :cond_d
    iget-boolean p3, v0, Lbr;->w:Z

    if-nez p3, :cond_12

    .line 32
    iput-boolean v3, v0, Lbr;->w:Z

    iget-object p3, p0, Lce;->a:Lcr;

    iput-object p3, v0, Lbr;->A:Lcr;

    iget-object p3, p0, Lce;->a:Lcr;

    iget-object p4, p3, Lcr;->j:Lcc;

    iput-object p4, v0, Lbr;->B:Lcc;

    iget-object p3, p3, Lcr;->j:Lcc;

    iget-object p3, p3, Lcc;->c:Landroid/content/Context;

    .line 33
    invoke-virtual {v0}, Lbr;->ae()V

    iget-object p3, p0, Lce;->a:Lcr;

    .line 34
    invoke-virtual {p3, v0}, Lcr;->g(Lbr;)Lcx;

    move-result-object p3

    invoke-static {v6}, Lcr;->R(I)Z

    move-result p4

    if-eqz p4, :cond_e

    new-instance p4, Ljava/lang/StringBuilder;

    .line 35
    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Retained Fragment "

    invoke-virtual {p4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " has been re-attached via the <fragment> tag: id=0x"

    invoke-virtual {p4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 36
    invoke-static {v5}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_4

    :cond_e
    nop

    .line 37
    :goto_4
    check-cast p1, Landroid/view/ViewGroup;

    invoke-static {v0, p1}, Lza;->b(Lbr;Landroid/view/ViewGroup;)V

    .line 38
    iput-object p1, v0, Lbr;->O:Landroid/view/ViewGroup;

    .line 39
    invoke-virtual {p3}, Lcx;->d()V

    .line 40
    invoke-virtual {p3}, Lcx;->c()V

    .line 41
    iget-object p1, v0, Lbr;->P:Landroid/view/View;

    if-eqz p1, :cond_11

    .line 42
    if-eqz v5, :cond_f

    .line 43
    invoke-virtual {p1, v5}, Landroid/view/View;->setId(I)V

    .line 44
    :cond_f
    iget-object p1, v0, Lbr;->P:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p1

    if-nez p1, :cond_10

    .line 45
    iget-object p1, v0, Lbr;->P:Landroid/view/View;

    invoke-virtual {p1, v7}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 46
    :cond_10
    iget-object p1, v0, Lbr;->P:Landroid/view/View;

    new-instance p2, Lcd;

    invoke-direct {p2, p0, p3}, Lcd;-><init>(Lce;Lcx;)V

    invoke-virtual {p1, p2}, Landroid/view/View;->addOnAttachStateChangeListener(Landroid/view/View$OnAttachStateChangeListener;)V

    .line 47
    iget-object p1, v0, Lbr;->P:Landroid/view/View;

    return-object p1

    .line 41
    :cond_11
    new-instance p1, Ljava/lang/IllegalStateException;

    new-instance p3, Ljava/lang/StringBuilder;

    .line 42
    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " did not create a view."

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 47
    :cond_12
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance p3, Ljava/lang/StringBuilder;

    .line 30
    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {p4}, Landroid/util/AttributeSet;->getPositionDescription()Ljava/lang/String;

    move-result-object p4

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p4, ": Duplicate id 0x"

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 31
    invoke-static {v5}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object p4

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p4, ", tag "

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p4, ", or parent id 0x"

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 32
    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object p4

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p4, " with another fragment for "

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 48
    :catch_0
    move-exception p1

    .line 12
    :cond_13
    :goto_5
    return-object v0
.end method

.method public final onCreateView(Ljava/lang/String;Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/view/View;
    .locals 1

    .line 49
    const/4 v0, 0x0

    invoke-virtual {p0, v0, p1, p2, p3}, Lce;->onCreateView(Landroid/view/View;Ljava/lang/String;Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/view/View;

    move-result-object p1

    return-object p1
.end method
