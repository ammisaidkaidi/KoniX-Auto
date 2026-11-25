.class final Lea;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Landroid/graphics/Typeface;

.field final synthetic b:Leb;


# direct methods
.method public constructor <init>(Leb;Landroid/graphics/Typeface;)V
    .locals 0

    iput-object p1, p0, Lea;->b:Leb;

    iput-object p2, p0, Lea;->a:Landroid/graphics/Typeface;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .line 1
    iget-object v0, p0, Lea;->b:Leb;

    iget-object v1, p0, Lea;->a:Landroid/graphics/Typeface;

    invoke-virtual {v0, v1}, Leb;->a(Landroid/graphics/Typeface;)V

    return-void
.end method
