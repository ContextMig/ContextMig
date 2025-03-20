.class final Lcom/appflood/f/e$1;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/appflood/b/b$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/appflood/f/e;-><init>(Landroid/content/Context;FI)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private synthetic a:Lcom/appflood/f/e;


# direct methods
.method constructor <init>(Lcom/appflood/f/e;)V
    .locals 0

    iput-object p1, p0, Lcom/appflood/f/e$1;->a:Lcom/appflood/f/e;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final requestFailed$440c3042(I)V
    .locals 1

    const-string v0, "failed to download download png"

    invoke-static {v0}, Lcom/appflood/e/j;->c(Ljava/lang/String;)V

    return-void
.end method

.method public final requestFinished(Lcom/appflood/b/b;)V
    .locals 2

    iget-object v0, p0, Lcom/appflood/f/e$1;->a:Lcom/appflood/f/e;

    invoke-virtual {p1}, Lcom/appflood/b/b;->b()Landroid/graphics/Bitmap;

    move-result-object v1

    iput-object v1, v0, Lcom/appflood/f/e;->d:Landroid/graphics/Bitmap;

    return-void
.end method
