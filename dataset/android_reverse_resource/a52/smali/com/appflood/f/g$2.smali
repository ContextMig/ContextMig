.class final Lcom/appflood/f/g$2;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/appflood/b/b$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/appflood/f/g;->a([Lorg/json/JSONObject;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private synthetic a:I

.field private synthetic b:Lcom/appflood/f/g;


# direct methods
.method constructor <init>(Lcom/appflood/f/g;I)V
    .locals 0

    iput-object p1, p0, Lcom/appflood/f/g$2;->b:Lcom/appflood/f/g;

    iput p2, p0, Lcom/appflood/f/g$2;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final requestFailed$440c3042(I)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Panel image url connection failed statuscode = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/appflood/e/j;->c(Ljava/lang/String;)V

    return-void
.end method

.method public final requestFinished(Lcom/appflood/b/b;)V
    .locals 4

    :try_start_0
    iget-object v0, p0, Lcom/appflood/f/g$2;->b:Lcom/appflood/f/g;

    iget v1, p0, Lcom/appflood/f/g$2;->a:I

    invoke-virtual {p1}, Lcom/appflood/b/b;->b()Landroid/graphics/Bitmap;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v2

    if-eqz v2, :cond_0

    if-nez v1, :cond_2

    :try_start_1
    iget-boolean v3, v0, Lcom/appflood/f/g;->a:Z

    if-eqz v3, :cond_1

    iget-object v0, v0, Lcom/appflood/f/g;->c:Lcom/appflood/f/e;

    :goto_0
    invoke-virtual {v0, v2}, Lcom/appflood/f/a;->a(Landroid/graphics/Bitmap;)V

    :cond_0
    :goto_1
    return-void

    :cond_1
    iget-object v0, v0, Lcom/appflood/f/g;->d:Lcom/appflood/f/f;

    goto :goto_0

    :cond_2
    iget-object v0, v0, Lcom/appflood/f/g;->e:[Lcom/appflood/f/i;

    add-int/lit8 v3, v1, -0x1

    aget-object v0, v0, v3
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    :try_start_2
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "bitmapChanged error = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/appflood/e/j;->b(Ljava/lang/Throwable;Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_1

    :catch_1
    move-exception v0

    const-string v1, "Panel Image failed"

    invoke-static {v0, v1}, Lcom/appflood/e/j;->a(Ljava/lang/Throwable;Ljava/lang/String;)V

    goto :goto_1
.end method
