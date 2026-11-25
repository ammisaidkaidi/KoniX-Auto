.class public final synthetic Lbxy;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Lcol;


# instance fields
.field public final synthetic a:Lbyf;

.field public final synthetic b:Ldny;


# direct methods
.method public synthetic constructor <init>(Lbyf;Ldny;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lbxy;->a:Lbyf;

    iput-object p2, p0, Lbxy;->b:Ldny;

    return-void
.end method


# virtual methods
.method public final a()Ljava/lang/Object;
    .locals 2

    iget-object v0, p0, Lbxy;->a:Lbyf;

    iget-object v1, p0, Lbxy;->b:Ldny;

    invoke-virtual {v0, v1}, Lbyf;->b(Ldny;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
