.class public Lng;
.super Landroid/widget/AutoCompleteTextView;
.source "PG"


# static fields
.field private static final a:[I


# instance fields
.field private final b:Lnh;

.field private final c:Lom;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/4 v0, 0x1

    new-array v0, v0, [I

    const/4 v1, 0x0

    const v2, 0x1010176

    aput v2, v0, v1

    sput-object v0, Lng;->a:[I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 1
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lng;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .line 2
    const v0, 0x7f040040

    invoke-direct {p0, p1, p2, v0}, Lng;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 2

    .line 3
    invoke-static {p1}, Lsj;->a(Landroid/content/Context;)V

    invoke-direct {p0, p1, p2, p3}, Landroid/widget/AutoCompleteTextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 4
    invoke-virtual {p0}, Lng;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p0, p1}, Lsh;->d(Landroid/view/View;Landroid/content/Context;)V

    .line 5
    invoke-virtual {p0}, Lng;->getContext()Landroid/content/Context;

    move-result-object p1

    sget-object v0, Lng;->a:[I

    invoke-static {p1, p2, v0, p3}, Lsm;->q(Landroid/content/Context;Landroid/util/AttributeSet;[II)Lsm;

    move-result-object p1

    .line 6
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lsm;->p(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 7
    invoke-virtual {p1, v0}, Lsm;->h(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p0, v0}, Lng;->setDropDownBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 8
    :cond_0
    invoke-virtual {p1}, Lsm;->n()V

    new-instance p1, Lnh;

    .line 9
    invoke-direct {p1, p0}, Lnh;-><init>(Landroid/view/View;)V

    iput-object p1, p0, Lng;->b:Lnh;

    .line 10
    invoke-virtual {p1, p2, p3}, Lnh;->b(Landroid/util/AttributeSet;I)V

    new-instance p1, Lom;

    .line 11
    invoke-direct {p1, p0}, Lom;-><init>(Landroid/widget/TextView;)V

    iput-object p1, p0, Lng;->c:Lom;

    .line 12
    invoke-virtual {p1, p2, p3}, Lom;->b(Landroid/util/AttributeSet;I)V

    .line 13
    invoke-virtual {p1}, Lom;->a()V

    return-void
.end method


# virtual methods
.method protected final drawableStateChanged()V
    .locals 1

    .line 1
    invoke-super {p0}, Landroid/widget/AutoCompleteTextView;->drawableStateChanged()V

    iget-object v0, p0, Lng;->b:Lnh;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Lnh;->a()V

    :cond_0
    iget-object v0, p0, Lng;->c:Lom;

    if-eqz v0, :cond_1

    .line 3
    invoke-virtual {v0}, Lom;->a()V

    :cond_1
    return-void
.end method

.method public final onCreateInputConnection(Landroid/view/inputmethod/EditorInfo;)Landroid/view/inputmethod/InputConnection;
    .locals 1

    .line 1
    invoke-super {p0, p1}, Landroid/widget/AutoCompleteTextView;->onCreateInputConnection(Landroid/view/inputmethod/EditorInfo;)Landroid/view/inputmethod/InputConnection;

    move-result-object v0

    invoke-static {v0, p1, p0}, Lhm;->b(Landroid/view/inputmethod/InputConnection;Landroid/view/inputmethod/EditorInfo;Landroid/view/View;)V

    return-object v0
.end method

.method public final setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Landroid/widget/AutoCompleteTextView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object p1, p0, Lng;->b:Lnh;

    if-eqz p1, :cond_0

    .line 2
    invoke-virtual {p1}, Lnh;->e()V

    :cond_0
    return-void
.end method

.method public final setBackgroundResource(I)V
    .locals 1

    .line 1
    invoke-super {p0, p1}, Landroid/widget/AutoCompleteTextView;->setBackgroundResource(I)V

    iget-object v0, p0, Lng;->b:Lnh;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0, p1}, Lnh;->c(I)V

    :cond_0
    return-void
.end method

.method public final setDropDownBackgroundResource(I)V
    .locals 1

    .line 1
    invoke-virtual {p0}, Lng;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p1}, Lkj;->b(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    invoke-virtual {p0, p1}, Lng;->setDropDownBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public final setTextAppearance(Landroid/content/Context;I)V
    .locals 1

    .line 1
    invoke-super {p0, p1, p2}, Landroid/widget/AutoCompleteTextView;->setTextAppearance(Landroid/content/Context;I)V

    iget-object v0, p0, Lng;->c:Lom;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0, p1, p2}, Lom;->c(Landroid/content/Context;I)V

    :cond_0
    return-void
.end method
