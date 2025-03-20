.class final Lcom/batch/android/Batch$7;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/batch/android/i/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/batch/android/Batch;->setConfig(Lcom/batch/android/Config;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/batch/android/Config;


# direct methods
.method constructor <init>(Lcom/batch/android/Config;)V
    .locals 0

    .prologue
    .line 188
    iput-object p1, p0, Lcom/batch/android/Batch$7;->a:Lcom/batch/android/Config;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/batch/android/i/d;)Lcom/batch/android/i/d;
    .locals 2

    .prologue
    .line 192
    sget-object v0, Lcom/batch/android/i/d;->a:Lcom/batch/android/i/d;

    if-eq p1, v0, :cond_0

    .line 194
    const/4 v0, 0x0

    const-string v1, "You cannot update Batch Configuration before stopping it"

    invoke-static {v0, v1}, Lcom/batch/android/c/o;->a(ZLjava/lang/String;)V

    .line 195
    const/4 p1, 0x0

    .line 202
    :goto_0
    return-object p1

    .line 198
    :cond_0
    iget-object v0, p0, Lcom/batch/android/Batch$7;->a:Lcom/batch/android/Config;

    invoke-static {v0}, Lcom/batch/android/Batch;->a(Lcom/batch/android/Config;)Lcom/batch/android/Config;

    .line 200
    iget-object v0, p0, Lcom/batch/android/Batch$7;->a:Lcom/batch/android/Config;

    iget-object v0, v0, Lcom/batch/android/Config;->f:Lcom/batch/android/LoggerDelegate;

    sput-object v0, Lcom/batch/android/c/o;->b:Lcom/batch/android/LoggerDelegate;

    goto :goto_0
.end method
