.class public final Lyr;
.super Landroid/view/inputmethod/InputConnectionWrapper;
.source "PG"


# instance fields
.field final synthetic a:Lnx;


# direct methods
.method public constructor <init>(Landroid/view/inputmethod/InputConnection;Lnx;)V
    .locals 0

    .line 1
    iput-object p2, p0, Lyr;->a:Lnx;

    const/4 p2, 0x0

    invoke-direct {p0, p1, p2}, Landroid/view/inputmethod/InputConnectionWrapper;-><init>(Landroid/view/inputmethod/InputConnection;Z)V

    return-void
.end method


# virtual methods
.method public final commitContent(Landroid/view/inputmethod/InputContentInfo;ILandroid/os/Bundle;)Z
    .locals 7

    .line 2
    iget-object v0, p0, Lyr;->a:Lnx;

    if-nez p1, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    .line 4
    :cond_0
    new-instance v1, Lyt;

    new-instance v2, Lys;

    .line 1
    invoke-direct {v2, p1}, Lys;-><init>(Ljava/lang/Object;)V

    invoke-direct {v1, v2}, Lyt;-><init>(Lys;)V

    .line 2
    :goto_0
    and-int/lit8 v2, p2, 0x1

    if-eqz v2, :cond_2

    :try_start_0
    iget-object v2, v1, Lyt;->a:Lys;

    iget-object v2, v2, Lys;->a:Landroid/view/inputmethod/InputContentInfo;

    invoke-virtual {v2}, Landroid/view/inputmethod/InputContentInfo;->requestPermission()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    iget-object v2, v1, Lyt;->a:Lys;

    iget-object v2, v2, Lys;->a:Landroid/view/inputmethod/InputContentInfo;

    if-nez p3, :cond_1

    new-instance v3, Landroid/os/Bundle;

    .line 4
    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    goto :goto_1

    .line 16
    :cond_1
    new-instance v3, Landroid/os/Bundle;

    .line 4
    invoke-direct {v3, p3}, Landroid/os/Bundle;-><init>(Landroid/os/Bundle;)V

    .line 5
    :goto_1
    const-string v4, "android.support.v4.view.extra.INPUT_CONTENT_INFO"

    invoke-virtual {v3, v4, v2}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    goto :goto_2

    .line 1
    :catch_0
    move-exception v0

    .line 3
    const-string v1, "ReceiveContent"

    const-string v2, "Can\'t insert content from IME; requestPermission() failed"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_4

    .line 4
    :cond_2
    move-object v3, p3

    .line 6
    :goto_2
    new-instance v2, Landroid/content/ClipData;

    iget-object v4, v1, Lyt;->a:Lys;

    iget-object v4, v4, Lys;->a:Landroid/view/inputmethod/InputContentInfo;

    .line 7
    invoke-virtual {v4}, Landroid/view/inputmethod/InputContentInfo;->getDescription()Landroid/content/ClipDescription;

    move-result-object v4

    .line 6
    new-instance v5, Landroid/content/ClipData$Item;

    iget-object v6, v1, Lyt;->a:Lys;

    iget-object v6, v6, Lys;->a:Landroid/view/inputmethod/InputContentInfo;

    .line 8
    invoke-virtual {v6}, Landroid/view/inputmethod/InputContentInfo;->getContentUri()Landroid/net/Uri;

    move-result-object v6

    .line 9
    invoke-direct {v5, v6}, Landroid/content/ClipData$Item;-><init>(Landroid/net/Uri;)V

    invoke-direct {v2, v4, v5}, Landroid/content/ClipData;-><init>(Landroid/content/ClipDescription;Landroid/content/ClipData$Item;)V

    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v5, 0x1f

    const/4 v6, 0x2

    if-lt v4, v5, :cond_3

    new-instance v4, Lgj;

    .line 10
    invoke-direct {v4, v2, v6}, Lgj;-><init>(Landroid/content/ClipData;I)V

    goto :goto_3

    .line 16
    :cond_3
    new-instance v4, Lgl;

    invoke-direct {v4, v2, v6}, Lgl;-><init>(Landroid/content/ClipData;I)V

    .line 10
    :goto_3
    iget-object v1, v1, Lyt;->a:Lys;

    iget-object v1, v1, Lys;->a:Landroid/view/inputmethod/InputContentInfo;

    .line 11
    invoke-virtual {v1}, Landroid/view/inputmethod/InputContentInfo;->getLinkUri()Landroid/net/Uri;

    move-result-object v1

    .line 12
    invoke-interface {v4, v1}, Lgk;->d(Landroid/net/Uri;)V

    .line 13
    invoke-interface {v4, v3}, Lgk;->b(Landroid/os/Bundle;)V

    .line 14
    invoke-static {v4}, Lfv;->y(Lgk;)Lgp;

    move-result-object v1

    iget-object v0, v0, Lnx;->a:Landroid/view/View;

    .line 15
    invoke-static {v0, v1}, Lhs;->j(Landroid/view/View;Lgp;)Lgp;

    move-result-object v0

    if-nez v0, :cond_4

    const/4 p1, 0x1

    return p1

    .line 16
    :cond_4
    :goto_4
    invoke-super {p0, p1, p2, p3}, Landroid/view/inputmethod/InputConnectionWrapper;->commitContent(Landroid/view/inputmethod/InputContentInfo;ILandroid/os/Bundle;)Z

    move-result p1

    return p1
.end method
