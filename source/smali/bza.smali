.class public final synthetic Lbza;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Lbyx;


# instance fields
.field public final synthetic a:Lbyz;


# direct methods
.method public synthetic constructor <init>(Lbyz;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lbza;->a:Lbyz;

    return-void
.end method


# virtual methods
.method public final a(ILjava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lbza;->a:Lbyz;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, p1, p2}, Lbyz;->d(Ljava/lang/String;ILjava/lang/String;)V

    return-void
.end method
