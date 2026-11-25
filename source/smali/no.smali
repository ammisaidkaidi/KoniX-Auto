.class public final Lno;
.super Landroid/widget/EditText;
.source "PG"


# instance fields
.field private final a:Lnh;

.field private final b:Lom;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .line 1
    invoke-static {p1}, Lsj;->a(Landroid/content/Context;)V

    const v0, 0x7f0400e5

    invoke-direct {p0, p1, p2, v0}, Landroid/widget/EditText;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 2
    invoke-virtual {p0}, Lno;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p0, p1}, Lsh;->d(Landroid/view/View;Landroid/content/Context;)V

    new-instance p1, Lnh;

    .line 3
    invoke-direct {p1, p0}, Lnh;-><init>(Landroid/view/View;)V

    iput-object p1, p0, Lno;->a:Lnh;

    .line 4
    invoke-virtual {p1, p2, v0}, Lnh;->b(Landroid/util/AttributeSet;I)V

    new-instance p1, Lom;

    .line 5
    invoke-direct {p1, p0}, Lom;-><init>(Landroid/widget/TextView;)V

    iput-object p1, p0, Lno;->b:Lom;

    .line 6
    invoke-virtual {p1, p2, v0}, Lom;->b(Landroid/util/AttributeSet;I)V

    .line 7
    invoke-virtual {p1}, Lom;->a()V

    return-void
.end method


# virtual methods
.method protected final drawableStateChanged()V
    .locals 1

    .line 1
    invoke-super {p0}, Landroid/widget/EditText;->drawableStateChanged()V

    iget-object v0, p0, Lno;->a:Lnh;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Lnh;->a()V

    :cond_0
    iget-object v0, p0, Lno;->b:Lom;

    if-eqz v0, :cond_1

    .line 3
    invoke-virtual {v0}, Lom;->a()V

    :cond_1
    return-void
.end method

.method public final bridge synthetic getText()Ljava/lang/CharSequence;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lno;->getText()Landroid/text/Editable;

    move-result-object v0

    return-object v0
.end method

.method public final onCreateInputConnection(Landroid/view/inputmethod/EditorInfo;)Landroid/view/inputmethod/InputConnection;
    .locals 3

    .line 1
    invoke-super {p0, p1}, Landroid/widget/EditText;->onCreateInputConnection(Landroid/view/inputmethod/EditorInfo;)Landroid/view/inputmethod/InputConnection;

    move-result-object v0

    .line 2
    invoke-static {p0, v0, p1}, Lom;->e(Landroid/widget/TextView;Landroid/view/inputmethod/InputConnection;Landroid/view/inputmethod/EditorInfo;)V

    .line 3
    invoke-static {v0, p1, p0}, Lhm;->b(Landroid/view/inputmethod/InputConnection;Landroid/view/inputmethod/EditorInfo;Landroid/view/View;)V

    .line 4
    invoke-static {p0}, Lhs;->I(Landroid/view/View;)[Ljava/lang/String;

    move-result-object v1

    if-eqz v0, :cond_0

    if-eqz v1, :cond_0

    .line 5
    iput-object v1, p1, Landroid/view/inputmethod/EditorInfo;->contentMimeTypes:[Ljava/lang/String;

    new-instance v1, Lnx;

    invoke-direct {v1, p0}, Lnx;-><init>(Landroid/view/View;)V

    .line 6
    const-string v2, "editorInfo must be non-null"

    invoke-static {p1, v2}, Lex;->c(Ljava/lang/Object;Ljava/lang/String;)V

    .line 7
    new-instance p1, Lyr;

    invoke-direct {p1, v0, v1}, Lyr;-><init>(Landroid/view/inputmethod/InputConnection;Lnx;)V

    return-object p1

    :cond_0
    return-object v0
.end method

.method public final onDragEvent(Landroid/view/DragEvent;)Z
    .locals 4

    .line 1
    invoke-virtual {p1}, Landroid/view/DragEvent;->getLocalState()Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_5

    .line 2
    invoke-static {p0}, Lhs;->I(Landroid/view/View;)[Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    goto/16 :goto_3

    .line 3
    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 4
    :goto_0
    instance-of v1, v0, Landroid/content/ContextWrapper;

    if-eqz v1, :cond_2

    .line 5
    instance-of v1, v0, Landroid/app/Activity;

    if-eqz v1, :cond_1

    .line 7
    check-cast v0, Landroid/app/Activity;

    goto :goto_1

    .line 6
    :cond_1
    check-cast v0, Landroid/content/ContextWrapper;

    invoke-virtual {v0}, Landroid/content/ContextWrapper;->getBaseContext()Landroid/content/Context;

    move-result-object v0

    goto :goto_0

    .line 21
    :cond_2
    const/4 v0, 0x0

    .line 7
    :goto_1
    if-nez v0, :cond_3

    new-instance v0, Ljava/lang/StringBuilder;

    .line 8
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Can\'t handle drop: no activity: view="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    goto :goto_3

    .line 9
    :cond_3
    invoke-virtual {p1}, Landroid/view/DragEvent;->getAction()I

    move-result v1

    const/4 v2, 0x1

    if-eq v1, v2, :cond_5

    .line 10
    invoke-virtual {p1}, Landroid/view/DragEvent;->getAction()I

    move-result v1

    const/4 v3, 0x3

    if-ne v1, v3, :cond_5

    .line 12
    invoke-virtual {v0, p1}, Landroid/app/Activity;->requestDragAndDropPermissions(Landroid/view/DragEvent;)Landroid/view/DragAndDropPermissions;

    .line 13
    invoke-virtual {p1}, Landroid/view/DragEvent;->getX()F

    move-result v0

    invoke-virtual {p1}, Landroid/view/DragEvent;->getY()F

    move-result v1

    invoke-virtual {p0, v0, v1}, Landroid/widget/TextView;->getOffsetForPosition(FF)I

    move-result v0

    .line 14
    invoke-virtual {p0}, Landroid/widget/TextView;->beginBatchEdit()V

    .line 15
    :try_start_0
    invoke-virtual {p0}, Lno;->getText()Landroid/text/Editable;

    move-result-object v1

    .line 16
    invoke-static {v1, v0}, Landroid/text/Selection;->setSelection(Landroid/text/Spannable;I)V

    .line 17
    invoke-virtual {p1}, Landroid/view/DragEvent;->getClipData()Landroid/content/ClipData;

    move-result-object p1

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1f

    if-lt v0, v1, :cond_4

    new-instance v0, Lgj;

    .line 18
    invoke-direct {v0, p1, v3}, Lgj;-><init>(Landroid/content/ClipData;I)V

    goto :goto_2

    .line 20
    :cond_4
    new-instance v0, Lgl;

    invoke-direct {v0, p1, v3}, Lgl;-><init>(Landroid/content/ClipData;I)V

    .line 17
    :goto_2
    invoke-static {v0}, Lfv;->y(Lgk;)Lgp;

    move-result-object p1

    .line 19
    invoke-static {p0, p1}, Lhs;->j(Landroid/view/View;Lgp;)Lgp;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 20
    invoke-virtual {p0}, Landroid/widget/TextView;->endBatchEdit()V

    return v2

    .line 6
    :catchall_0
    move-exception p1

    .line 20
    invoke-virtual {p0}, Landroid/widget/TextView;->endBatchEdit()V

    .line 21
    throw p1

    .line 11
    :cond_5
    :goto_3
    invoke-super {p0, p1}, Landroid/widget/EditText;->onDragEvent(Landroid/view/DragEvent;)Z

    move-result p1

    return p1
.end method

.method public final onTextContextMenuItem(I)Z
    .locals 5

    .line 1
    const v0, 0x1020022

    const v1, 0x1020031

    if-eq p1, v0, :cond_0

    if-ne p1, v1, :cond_1

    const p1, 0x1020031

    goto :goto_0

    .line 3
    :cond_0
    move v1, p1

    .line 1
    :goto_0
    invoke-static {p0}, Lhs;->I(Landroid/view/View;)[Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_2

    .line 9
    :cond_1
    invoke-super {p0, p1}, Landroid/widget/EditText;->onTextContextMenuItem(I)Z

    move-result p1

    return p1

    .line 2
    :cond_2
    invoke-virtual {p0}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object p1

    const-string v2, "clipboard"

    invoke-virtual {p1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/content/ClipboardManager;

    if-nez p1, :cond_3

    const/4 p1, 0x0

    goto :goto_1

    .line 3
    :cond_3
    invoke-virtual {p1}, Landroid/content/ClipboardManager;->getPrimaryClip()Landroid/content/ClipData;

    move-result-object p1

    .line 2
    :goto_1
    const/4 v2, 0x1

    if-eqz p1, :cond_6

    .line 4
    invoke-virtual {p1}, Landroid/content/ClipData;->getItemCount()I

    move-result v3

    if-lez v3, :cond_6

    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x1f

    if-lt v3, v4, :cond_4

    new-instance v3, Lgj;

    .line 5
    invoke-direct {v3, p1, v2}, Lgj;-><init>(Landroid/content/ClipData;I)V

    goto :goto_2

    .line 8
    :cond_4
    new-instance v3, Lgl;

    invoke-direct {v3, p1, v2}, Lgl;-><init>(Landroid/content/ClipData;I)V

    .line 5
    :goto_2
    nop

    .line 6
    if-ne v1, v0, :cond_5

    const/4 p1, 0x0

    goto :goto_3

    .line 8
    :cond_5
    const/4 p1, 0x1

    .line 6
    :goto_3
    invoke-interface {v3, p1}, Lgk;->c(I)V

    .line 7
    invoke-static {v3}, Lfv;->y(Lgk;)Lgp;

    move-result-object p1

    .line 8
    invoke-static {p0, p1}, Lhs;->j(Landroid/view/View;Lgp;)Lgp;

    :cond_6
    return v2
.end method

.method public final setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Landroid/widget/EditText;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object p1, p0, Lno;->a:Lnh;

    if-eqz p1, :cond_0

    .line 2
    invoke-virtual {p1}, Lnh;->e()V

    :cond_0
    return-void
.end method

.method public final setBackgroundResource(I)V
    .locals 1

    .line 1
    invoke-super {p0, p1}, Landroid/widget/EditText;->setBackgroundResource(I)V

    iget-object v0, p0, Lno;->a:Lnh;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0, p1}, Lnh;->c(I)V

    :cond_0
    return-void
.end method

.method public final setTextAppearance(Landroid/content/Context;I)V
    .locals 1

    .line 1
    invoke-super {p0, p1, p2}, Landroid/widget/EditText;->setTextAppearance(Landroid/content/Context;I)V

    iget-object v0, p0, Lno;->b:Lom;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0, p1, p2}, Lom;->c(Landroid/content/Context;I)V

    :cond_0
    return-void
.end method
