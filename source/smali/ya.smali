.class final Lya;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lym;

.field final synthetic b:Landroid/graphics/Typeface;


# direct methods
.method public constructor <init>(Lym;Landroid/graphics/Typeface;)V
    .locals 0

    iput-object p1, p0, Lya;->a:Lym;

    iput-object p2, p0, Lya;->b:Landroid/graphics/Typeface;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .line 1
    iget-object v0, p0, Lya;->a:Lym;

    iget-object v1, p0, Lya;->b:Landroid/graphics/Typeface;

    iget-object v0, v0, Lym;->a:Leb;

    invoke-virtual {v0, v1}, Leb;->a(Landroid/graphics/Typeface;)V

    return-void
.end method
