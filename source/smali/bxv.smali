.class public final synthetic Lbxv;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lbxw;

.field public final synthetic b:Ldny;

.field public final synthetic c:Lcoc;


# direct methods
.method public synthetic constructor <init>(Lbxw;Ldny;Lcoc;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lbxv;->a:Lbxw;

    iput-object p2, p0, Lbxv;->b:Ldny;

    iput-object p3, p0, Lbxv;->c:Lcoc;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Lbxv;->a:Lbxw;

    iget-object v1, p0, Lbxv;->b:Ldny;

    iget-object v2, p0, Lbxv;->c:Lcoc;

    invoke-virtual {v0, v1, v2}, Lbxw;->c(Ldny;Lcoc;)V

    return-void
.end method
