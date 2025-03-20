.class final Lcom/appflood/mraid/s$1$1;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/appflood/b/b$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/appflood/mraid/s$1;->onClick(Landroid/content/DialogInterface;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private synthetic a:Lcom/appflood/mraid/s$1;


# direct methods
.method constructor <init>(Lcom/appflood/mraid/s$1;)V
    .locals 0

    iput-object p1, p0, Lcom/appflood/mraid/s$1$1;->a:Lcom/appflood/mraid/s$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final requestFailed$440c3042(I)V
    .locals 3

    iget-object v0, p0, Lcom/appflood/mraid/s$1$1;->a:Lcom/appflood/mraid/s$1;

    iget-object v0, v0, Lcom/appflood/mraid/s$1;->b:Lcom/appflood/mraid/s;

    iget-object v0, v0, Lcom/appflood/mraid/s;->b:Lcom/appflood/mraid/AFBannerWebView;

    invoke-virtual {v0}, Lcom/appflood/mraid/AFBannerWebView;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "Download failed!"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    return-void
.end method

.method public final requestFinished(Lcom/appflood/b/b;)V
    .locals 4

    invoke-virtual {p1}, Lcom/appflood/b/b;->b()Landroid/graphics/Bitmap;

    move-result-object v1

    iget-object v0, p0, Lcom/appflood/mraid/s$1$1;->a:Lcom/appflood/mraid/s$1;

    iget-object v0, v0, Lcom/appflood/mraid/s$1;->b:Lcom/appflood/mraid/s;

    iget-object v0, v0, Lcom/appflood/mraid/s;->b:Lcom/appflood/mraid/AFBannerWebView;

    invoke-virtual {v0}, Lcom/appflood/mraid/AFBannerWebView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v2, "appflood"

    const-string v3, "cpm"

    invoke-static {v0, v1, v2, v3}, Landroid/provider/MediaStore$Images$Media;->insertImage(Landroid/content/ContentResolver;Landroid/graphics/Bitmap;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "finish url "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    const-string v0, "Download complete!"

    invoke-static {v2}, Lcom/appflood/e/j;->g(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    sget-boolean v2, Lcom/appflood/e/c;->i:Z

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/appflood/mraid/s$1$1;->a:Lcom/appflood/mraid/s$1;

    iget-object v2, v2, Lcom/appflood/mraid/s$1;->a:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/appflood/mraid/s;->a(Landroid/graphics/Bitmap;Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    :cond_0
    const-string v0, "Download failed!"

    :cond_1
    iget-object v1, p0, Lcom/appflood/mraid/s$1$1;->a:Lcom/appflood/mraid/s$1;

    iget-object v1, v1, Lcom/appflood/mraid/s$1;->b:Lcom/appflood/mraid/s;

    iget-object v1, v1, Lcom/appflood/mraid/s;->b:Lcom/appflood/mraid/AFBannerWebView;

    invoke-virtual {v1}, Lcom/appflood/mraid/AFBannerWebView;->getContext()Landroid/content/Context;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v1, v0, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    return-void
.end method
