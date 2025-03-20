.class final Lcom/appflood/c/c$4;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/appflood/b/b$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/appflood/c/c;->a()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private synthetic a:Lcom/appflood/c/c;


# direct methods
.method constructor <init>(Lcom/appflood/c/c;)V
    .locals 0

    iput-object p1, p0, Lcom/appflood/c/c$4;->a:Lcom/appflood/c/c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final requestFailed$440c3042(I)V
    .locals 2

    iget-object v0, p0, Lcom/appflood/c/c$4;->a:Lcom/appflood/c/c;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/appflood/c/c;->a(Landroid/graphics/Bitmap;)V

    return-void
.end method

.method public final requestFinished(Lcom/appflood/b/b;)V
    .locals 2

    iget-object v0, p0, Lcom/appflood/c/c$4;->a:Lcom/appflood/c/c;

    invoke-virtual {p1}, Lcom/appflood/b/b;->b()Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/appflood/c/c;->a(Landroid/graphics/Bitmap;)V

    return-void
.end method
