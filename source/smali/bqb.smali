.class public final Lbqb;
.super Ljava/lang/Object;
.source "PG"


# static fields
.field private static final a:Lbqa;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lbqa;

    invoke-direct {v0}, Lbqa;-><init>()V

    sput-object v0, Lbqb;->a:Lbqa;

    sget-object v0, Lbpa;->b:Lbpa;

    iget-object v1, v0, Lbpa;->e:[[B

    .line 2
    invoke-static {v1}, Lbpa;->b([[B)V

    iget-object v1, v0, Lbpa;->f:[[B

    .line 3
    invoke-static {v1}, Lbpa;->b([[B)V

    iget-object v1, v0, Lbpa;->g:[[B

    .line 4
    invoke-static {v1}, Lbpa;->b([[B)V

    iget-object v0, v0, Lbpa;->h:[[B

    .line 5
    invoke-static {v0}, Lbpa;->b([[B)V

    return-void
.end method

.method public static a()V
    .locals 2

    .line 1
    sget-object v0, Lbqb;->a:Lbqa;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Lvh;->d(I)V

    return-void
.end method
