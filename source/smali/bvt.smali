.class public final synthetic Lbvt;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Lczb;


# instance fields
.field public final synthetic a:Lbvu;

.field public final synthetic b:Ldoi;


# direct methods
.method public synthetic constructor <init>(Lbvu;Ldoi;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lbvt;->a:Lbvu;

    iput-object p2, p0, Lbvt;->b:Ldoi;

    return-void
.end method


# virtual methods
.method public final a()Ldag;
    .locals 3

    iget-object v0, p0, Lbvt;->a:Lbvu;

    iget-object v1, p0, Lbvt;->b:Ldoi;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lbvu;->r(Ldoi;Lbtx;)Ldag;

    move-result-object v0

    return-object v0
.end method
