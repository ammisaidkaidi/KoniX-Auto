.class public final synthetic Lbyv;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lbyw;

.field public final synthetic b:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Lbyw;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lbyv;->a:Lbyw;

    iput-object p2, p0, Lbyv;->b:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .line 1
    iget-object v0, p0, Lbyv;->a:Lbyw;

    iget-object v1, p0, Lbyv;->b:Ljava/lang/String;

    iget-object v0, v0, Lbyw;->b:Lbyy;

    iget-object v0, v0, Lbyy;->a:Lbyx;

    const/4 v2, 0x6

    invoke-interface {v0, v2, v1}, Lbyx;->a(ILjava/lang/String;)V

    return-void
.end method
