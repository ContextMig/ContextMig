.class final Lcom/appflood/f/d$1;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/appflood/b/b$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/appflood/f/d;-><init>(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private synthetic a:Lcom/appflood/f/d;


# direct methods
.method constructor <init>(Lcom/appflood/f/d;)V
    .locals 0

    iput-object p1, p0, Lcom/appflood/f/d$1;->a:Lcom/appflood/f/d;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final requestFailed$440c3042(I)V
    .locals 0

    return-void
.end method

.method public final requestFinished(Lcom/appflood/b/b;)V
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " finished "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p1, Lcom/appflood/b/b;->a:Ljava/net/URL;

    invoke-virtual {v1}, Ljava/net/URL;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p1, Lcom/appflood/b/b;->d:[B

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    new-instance v0, Ljava/io/ByteArrayInputStream;

    iget-object v1, p1, Lcom/appflood/b/b;->d:[B

    invoke-direct {v0, v1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    iget-object v1, p0, Lcom/appflood/f/d$1;->a:Lcom/appflood/f/d;

    iget-object v1, v1, Lcom/appflood/f/d;->b:Lcom/appflood/f/c;

    invoke-virtual {v1, v0}, Lcom/appflood/f/c;->a(Ljava/io/InputStream;)I

    iget-object v0, p0, Lcom/appflood/f/d$1;->a:Lcom/appflood/f/d;

    iget-object v1, p0, Lcom/appflood/f/d$1;->a:Lcom/appflood/f/d;

    iget-object v1, v1, Lcom/appflood/f/d;->b:Lcom/appflood/f/c;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/appflood/f/c;->a(I)Landroid/graphics/Bitmap;

    move-result-object v1

    iput-object v1, v0, Lcom/appflood/f/d;->a:Landroid/graphics/Bitmap;

    return-void
.end method
