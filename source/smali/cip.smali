.class public final synthetic Lcip;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Lczc;


# instance fields
.field public final synthetic a:Lcin;


# direct methods
.method public synthetic constructor <init>(Lcin;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcip;->a:Lcin;

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Object;)Ldag;
    .locals 1

    .line 1
    iget-object v0, p0, Lcip;->a:Lcin;

    check-cast p1, Lder;

    invoke-interface {v0}, Lcin;->c()Ldag;

    move-result-object p1

    return-object p1
.end method
