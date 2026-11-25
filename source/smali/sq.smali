.class public final Lsq;
.super Lit;
.source "PG"


# instance fields
.field public b:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lit;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lsq;->b:I

    const v0, 0x800013

    iput v0, p0, Lsq;->a:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1, p2}, Lit;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p1, 0x0

    iput p1, p0, Lsq;->b:I

    return-void
.end method

.method public constructor <init>(Landroid/view/ViewGroup$LayoutParams;)V
    .locals 0

    .line 6
    invoke-direct {p0, p1}, Lit;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    const/4 p1, 0x0

    iput p1, p0, Lsq;->b:I

    return-void
.end method

.method public constructor <init>(Landroid/view/ViewGroup$MarginLayoutParams;)V
    .locals 1

    .line 7
    invoke-direct {p0, p1}, Lit;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    const/4 v0, 0x0

    iput v0, p0, Lsq;->b:I

    .line 8
    iget v0, p1, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    iput v0, p0, Lsq;->leftMargin:I

    .line 9
    iget v0, p1, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    iput v0, p0, Lsq;->topMargin:I

    .line 10
    iget v0, p1, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    iput v0, p0, Lsq;->rightMargin:I

    .line 11
    iget p1, p1, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    iput p1, p0, Lsq;->bottomMargin:I

    return-void
.end method

.method public constructor <init>(Lit;)V
    .locals 0

    .line 3
    invoke-direct {p0, p1}, Lit;-><init>(Lit;)V

    const/4 p1, 0x0

    iput p1, p0, Lsq;->b:I

    return-void
.end method

.method public constructor <init>(Lsq;)V
    .locals 1

    .line 4
    invoke-direct {p0, p1}, Lit;-><init>(Lit;)V

    const/4 v0, 0x0

    iput v0, p0, Lsq;->b:I

    .line 5
    iget p1, p1, Lsq;->b:I

    iput p1, p0, Lsq;->b:I

    return-void
.end method
