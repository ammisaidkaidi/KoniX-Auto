.class public final Laqm;
.super Landroidx/constraintlayout/widget/ConstraintLayout;
.source "PG"


# instance fields
.field public final h:Landroid/view/inputmethod/InputMethodManager;

.field public final i:Laqs;

.field public final j:Landroid/widget/ImageView;

.field public final k:Landroid/widget/EditText;

.field public l:Ljava/lang/CharSequence;

.field public m:Z

.field public final n:Landroid/view/View;

.field public final o:I

.field public final p:I

.field public final q:I

.field public r:Ljava/util/Set;

.field public s:Ljava/util/Set;

.field public t:Ljava/util/Set;

.field public u:Ljava/util/Set;

.field public v:Z

.field private final w:Larr;

.field private final x:Landroid/text/TextWatcher;

.field private y:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 6

    .line 1
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1}, Landroidx/constraintlayout/widget/ConstraintLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    new-instance v0, Laql;

    invoke-direct {v0, p0}, Laql;-><init>(Laqm;)V

    iput-object v0, p0, Laqm;->w:Larr;

    .line 2
    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    move-result-object v0

    iput-object v0, p0, Laqm;->r:Ljava/util/Set;

    .line 3
    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    move-result-object v0

    iput-object v0, p0, Laqm;->s:Ljava/util/Set;

    .line 4
    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    move-result-object v0

    iput-object v0, p0, Laqm;->t:Ljava/util/Set;

    .line 5
    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    move-result-object v0

    iput-object v0, p0, Laqm;->u:Ljava/util/Set;

    new-instance v0, Laqk;

    invoke-direct {v0, p0}, Laqk;-><init>(Laqm;)V

    iput-object v0, p0, Laqm;->x:Landroid/text/TextWatcher;

    iput-boolean v1, p0, Laqm;->v:Z

    iput-boolean v1, p0, Laqm;->y:Z

    .line 6
    invoke-virtual {p0}, Laqm;->getContext()Landroid/content/Context;

    move-result-object v2

    const-class v3, Landroid/view/inputmethod/InputMethodManager;

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/inputmethod/InputMethodManager;

    iput-object v2, p0, Laqm;->h:Landroid/view/inputmethod/InputMethodManager;

    .line 7
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v2

    .line 8
    const v3, 0x7f0c0045

    const/4 v4, 0x1

    invoke-virtual {v2, v3, p0, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 9
    const v2, 0x7f0900bb

    invoke-static {p0, v2}, Laro;->g(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/EditText;

    iput-object v2, p0, Laqm;->k:Landroid/widget/EditText;

    .line 10
    const v3, 0x7f0900bd

    invoke-static {p0, v3}, Laro;->g(Landroid/view/View;I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    iput-object v3, p0, Laqm;->j:Landroid/widget/ImageView;

    .line 11
    const v3, 0x7f0900bc

    invoke-static {p0, v3}, Laro;->g(Landroid/view/View;I)Landroid/view/View;

    move-result-object v3

    iput-object v3, p0, Laqm;->n:Landroid/view/View;

    new-instance v5, Laqh;

    invoke-direct {v5, p0, v4}, Laqh;-><init>(Laqm;I)V

    .line 12
    invoke-virtual {v3, v5}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 13
    const/16 v4, 0x8

    invoke-virtual {v3, v4}, Landroid/view/View;->setVisibility(I)V

    .line 14
    invoke-virtual {v2}, Landroid/widget/EditText;->getPaddingStart()I

    move-result v3

    iput v3, p0, Laqm;->o:I

    .line 15
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0700d6

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    iput v3, p0, Laqm;->p:I

    .line 16
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0700d3

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    iput v4, p0, Laqm;->q:I

    .line 17
    invoke-virtual {v2, v1}, Landroid/widget/EditText;->setSaveEnabled(Z)V

    .line 18
    invoke-virtual {v2, v3, v1, v4, v1}, Landroid/widget/EditText;->setPaddingRelative(IIII)V

    new-instance v3, Laqh;

    invoke-direct {v3, p0, v1}, Laqh;-><init>(Laqm;I)V

    .line 19
    invoke-virtual {v2, v3}, Landroid/widget/EditText;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    new-instance v1, Laqi;

    invoke-direct {v1, p0}, Laqi;-><init>(Laqm;)V

    .line 20
    invoke-virtual {v2, v1}, Landroid/widget/EditText;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 21
    invoke-virtual {v2, v0}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    new-instance v0, Laqj;

    invoke-direct {v0, p0}, Laqj;-><init>(Laqm;)V

    .line 22
    invoke-virtual {v2, v0}, Landroid/widget/EditText;->setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V

    new-instance v0, Laqs;

    .line 23
    invoke-direct {v0, p1}, Laqs;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Laqm;->i:Laqs;

    .line 24
    invoke-virtual {v0, v2}, Laqs;->e(Landroid/widget/TextView;)V

    .line 25
    instance-of p1, v2, Lcom/android/car/ui/toolbar/CarUiEditText;

    if-eqz p1, :cond_0

    .line 26
    check-cast v2, Lcom/android/car/ui/toolbar/CarUiEditText;

    .line 27
    invoke-virtual {v0}, Laqs;->c()Lj$/util/function/BiConsumer;

    move-result-object p1

    iput-object p1, v2, Lcom/android/car/ui/toolbar/CarUiEditText;->a:Lj$/util/function/BiConsumer;

    :cond_0
    return-void
.end method


# virtual methods
.method public final e()V
    .locals 2

    .line 1
    iget-object v0, p0, Laqm;->k:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->clearFocus()V

    iget-object v0, p0, Laqm;->s:Ljava/util/Set;

    .line 2
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Runnable;

    .line 3
    invoke-interface {v1}, Ljava/lang/Runnable;->run()V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Laqm;->u:Ljava/util/Set;

    .line 4
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lara;

    .line 5
    invoke-interface {v1}, Lara;->a()V

    goto :goto_1

    :cond_1
    return-void
.end method

.method protected final onAttachedToWindow()V
    .locals 2

    .line 1
    invoke-super {p0}, Landroidx/constraintlayout/widget/ConstraintLayout;->onAttachedToWindow()V

    .line 2
    invoke-virtual {p0}, Laqm;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lars;->b(Landroid/content/Context;)Lars;

    move-result-object v0

    iget-object v1, p0, Laqm;->w:Larr;

    invoke-virtual {v0, v1}, Lars;->c(Larr;)V

    return-void
.end method

.method protected final onDetachedFromWindow()V
    .locals 2

    .line 1
    invoke-super {p0}, Landroidx/constraintlayout/widget/ConstraintLayout;->onDetachedFromWindow()V

    .line 2
    invoke-virtual {p0}, Laqm;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lars;->b(Landroid/content/Context;)Lars;

    move-result-object v0

    iget-object v1, p0, Laqm;->w:Larr;

    invoke-virtual {v0, v1}, Lars;->e(Larr;)V

    return-void
.end method

.method public final onVisibilityChanged(Landroid/view/View;I)V
    .locals 2

    .line 1
    invoke-super {p0, p1, p2}, Landroidx/constraintlayout/widget/ConstraintLayout;->onVisibilityChanged(Landroid/view/View;I)V

    .line 2
    invoke-virtual {p0}, Laqm;->isShown()Z

    move-result p1

    if-eqz p1, :cond_1

    iget-boolean p2, p0, Laqm;->y:Z

    if-nez p2, :cond_1

    iget-object p2, p0, Laqm;->k:Landroid/widget/EditText;

    .line 3
    invoke-virtual {p2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p2

    invoke-interface {p2}, Landroid/text/Editable;->length()I

    move-result p2

    iget-object v0, p0, Laqm;->n:Landroid/view/View;

    const/4 v1, 0x0

    if-lez p2, :cond_0

    const/4 p2, 0x0

    goto :goto_0

    .line 6
    :cond_0
    const/16 p2, 0x8

    .line 4
    :goto_0
    invoke-virtual {v0, p2}, Landroid/view/View;->setVisibility(I)V

    iget-object p2, p0, Laqm;->k:Landroid/widget/EditText;

    .line 5
    invoke-virtual {p2}, Landroid/widget/EditText;->requestFocus()Z

    iget-object p2, p0, Laqm;->h:Landroid/view/inputmethod/InputMethodManager;

    iget-object v0, p0, Laqm;->k:Landroid/widget/EditText;

    .line 6
    invoke-virtual {p2, v0, v1}, Landroid/view/inputmethod/InputMethodManager;->showSoftInput(Landroid/view/View;I)Z

    :cond_1
    iput-boolean p1, p0, Laqm;->y:Z

    return-void
.end method
