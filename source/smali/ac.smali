.class abstract Lac;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Ljava/io/Serializable;
.implements Lad;


# static fields
.field private static final serialVersionUID:J = 0x1L


# instance fields
.field protected final a:Lad;

.field protected final b:Lad;


# direct methods
.method protected constructor <init>(Lad;Lad;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lac;->a:Lad;

    iput-object p2, p0, Lac;->b:Lad;

    return-void
.end method
