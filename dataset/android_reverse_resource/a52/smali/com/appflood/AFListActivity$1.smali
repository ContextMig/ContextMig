.class public final Lcom/appflood/AFListActivity$1;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/appflood/b/b$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/appflood/AFListActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field private synthetic a:Lcom/appflood/AFListActivity;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method constructor <init>(Lcom/appflood/AFListActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/appflood/AFListActivity$1;->a:Lcom/appflood/AFListActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final requestFailed$440c3042(I)V
    .locals 0

    return-void
.end method

.method public final requestFinished(Lcom/appflood/b/b;)V
    .locals 2

    :try_start_0
    iget-object v0, p0, Lcom/appflood/AFListActivity$1;->a:Lcom/appflood/AFListActivity;

    invoke-virtual {p1}, Lcom/appflood/b/b;->b()Landroid/graphics/Bitmap;

    move-result-object v1

    iput-object v1, v0, Lcom/appflood/AFListActivity;->j:Landroid/graphics/Bitmap;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string v1, "error in bigmapBg"

    invoke-static {v0, v1}, Lcom/appflood/e/j;->b(Ljava/lang/Throwable;Ljava/lang/String;)V

    goto :goto_0
.end method
