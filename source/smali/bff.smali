.class public final Lbff;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Ldhx;


# instance fields
.field private final a:Ldny;


# direct methods
.method public constructor <init>(Ldny;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lbff;->a:Ldny;

    return-void
.end method

.method public static c()Lbfe;
    .locals 1

    new-instance v0, Lbfe;

    invoke-direct {v0}, Lbfe;-><init>()V

    return-object v0
.end method


# virtual methods
.method public final bridge synthetic a()Ljava/lang/Object;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lbff;->b()Lbfe;

    move-result-object v0

    return-object v0
.end method

.method public final b()Lbfe;
    .locals 2

    .line 1
    invoke-static {}, Lbff;->c()Lbfe;

    move-result-object v0

    iget-object v1, p0, Lbff;->a:Ldny;

    check-cast v1, Lbfd;

    invoke-virtual {v1}, Lbfd;->b()Lbfc;

    move-result-object v1

    iput-object v1, v0, Lbfe;->a:Lbfc;

    return-object v0
.end method
