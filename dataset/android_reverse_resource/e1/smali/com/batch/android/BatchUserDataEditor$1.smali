.class Lcom/batch/android/BatchUserDataEditor$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/batch/android/BatchUserDataEditor$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/batch/android/BatchUserDataEditor;->setLanguage(Ljava/lang/String;)Lcom/batch/android/BatchUserDataEditor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Lcom/batch/android/BatchUserDataEditor;


# direct methods
.method constructor <init>(Lcom/batch/android/BatchUserDataEditor;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 57
    iput-object p1, p0, Lcom/batch/android/BatchUserDataEditor$1;->b:Lcom/batch/android/BatchUserDataEditor;

    iput-object p2, p0, Lcom/batch/android/BatchUserDataEditor$1;->a:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/batch/android/k/e;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 65
    :try_start_0
    invoke-static {}, Lcom/batch/android/Batch;->getUserProfile()Lcom/batch/android/BatchUserProfile;

    move-result-object v0

    iget-object v1, p0, Lcom/batch/android/BatchUserDataEditor$1;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/batch/android/BatchUserProfile;->setLanguage(Ljava/lang/String;)Lcom/batch/android/BatchUserProfile;
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    .line 71
    :goto_0
    return-void

    .line 67
    :catch_0
    move-exception v0

    goto :goto_0
.end method
