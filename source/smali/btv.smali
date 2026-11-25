.class public final Lbtv;
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

    iput-object p1, p0, Lbtv;->a:Ldny;

    return-void
.end method


# virtual methods
.method public final bridge synthetic a()Ljava/lang/Object;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lbtv;->b()Lbua;

    move-result-object v0

    return-object v0
.end method

.method public final b()Lbua;
    .locals 2

    .line 1
    iget-object v0, p0, Lbtv;->a:Ldny;

    sget v1, Lbtz;->b:I

    check-cast v0, Lbuc;

    invoke-virtual {v0}, Lbuc;->b()Lbub;

    move-result-object v0

    return-object v0
.end method
