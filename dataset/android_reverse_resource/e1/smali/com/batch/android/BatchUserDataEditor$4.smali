.class Lcom/batch/android/BatchUserDataEditor$4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/batch/android/BatchUserDataEditor$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/batch/android/BatchUserDataEditor;->removeTag(Ljava/lang/String;Ljava/lang/String;)Lcom/batch/android/BatchUserDataEditor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Lcom/batch/android/BatchUserDataEditor;


# direct methods
.method constructor <init>(Lcom/batch/android/BatchUserDataEditor;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 466
    iput-object p1, p0, Lcom/batch/android/BatchUserDataEditor$4;->c:Lcom/batch/android/BatchUserDataEditor;

    iput-object p2, p0, Lcom/batch/android/BatchUserDataEditor$4;->a:Ljava/lang/String;

    iput-object p3, p0, Lcom/batch/android/BatchUserDataEditor$4;->b:Ljava/lang/String;

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
    .line 470
    iget-object v0, p0, Lcom/batch/android/BatchUserDataEditor$4;->a:Ljava/lang/String;

    iget-object v1, p0, Lcom/batch/android/BatchUserDataEditor$4;->b:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/batch/android/k/e;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 471
    return-void
.end method
