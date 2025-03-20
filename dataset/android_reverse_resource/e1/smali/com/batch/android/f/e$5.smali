.class Lcom/batch/android/f/e$5;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/batch/android/i/e;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/batch/android/f/e;->d()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/batch/android/f/e;


# direct methods
.method constructor <init>(Lcom/batch/android/f/e;)V
    .locals 0

    .prologue
    .line 828
    iput-object p1, p0, Lcom/batch/android/f/e$5;->a:Lcom/batch/android/f/e;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/batch/android/i/d;)V
    .locals 4

    .prologue
    .line 834
    :try_start_0
    iget-object v0, p0, Lcom/batch/android/f/e$5;->a:Lcom/batch/android/f/e;

    invoke-static {v0}, Lcom/batch/android/f/e;->d(Lcom/batch/android/f/e;)Ljava/util/EnumSet;

    move-result-object v0

    invoke-static {v0}, Lcom/batch/android/PushNotificationType;->toValue(Ljava/util/EnumSet;)I

    move-result v0

    .line 835
    invoke-static {}, Lcom/batch/android/i/c;->l()Lcom/batch/android/i/c;

    move-result-object v1

    invoke-virtual {v1}, Lcom/batch/android/i/c;->j()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/batch/android/c/t;->a(Landroid/content/Context;)Lcom/batch/android/c/t;

    move-result-object v1

    const-string v2, "push.notiftype"

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v0, v3}, Lcom/batch/android/c/t;->a(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 836
    iget-object v0, p0, Lcom/batch/android/f/e$5;->a:Lcom/batch/android/f/e;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/batch/android/f/e;->a(Lcom/batch/android/f/e;Ljava/util/EnumSet;)Ljava/util/EnumSet;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 842
    :goto_0
    return-void

    .line 838
    :catch_0
    move-exception v0

    .line 840
    const-string v1, "Error while saving temp notif type"

    invoke-static {v1, v0}, Lcom/batch/android/c/o;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method
