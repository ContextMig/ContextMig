.class Lcom/batch/android/f/e$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/batch/android/i/e;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/batch/android/f/e;->l()Ljava/lang/String;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/StringBuilder;

.field final synthetic b:Lcom/batch/android/f/e;


# direct methods
.method constructor <init>(Lcom/batch/android/f/e;Ljava/lang/StringBuilder;)V
    .locals 0

    .prologue
    .line 227
    iput-object p1, p0, Lcom/batch/android/f/e$2;->b:Lcom/batch/android/f/e;

    iput-object p2, p0, Lcom/batch/android/f/e$2;->a:Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/batch/android/i/d;)V
    .locals 2

    .prologue
    .line 231
    sget-object v0, Lcom/batch/android/i/d;->a:Lcom/batch/android/i/d;

    if-eq p1, v0, :cond_0

    .line 233
    iget-object v0, p0, Lcom/batch/android/f/e$2;->b:Lcom/batch/android/f/e;

    invoke-static {v0}, Lcom/batch/android/f/e;->a(Lcom/batch/android/f/e;)Ljava/lang/String;

    move-result-object v0

    .line 234
    if-eqz v0, :cond_0

    .line 236
    iget-object v1, p0, Lcom/batch/android/f/e$2;->a:Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 239
    :cond_0
    return-void
.end method
