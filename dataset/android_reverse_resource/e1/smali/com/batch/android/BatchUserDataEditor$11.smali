.class Lcom/batch/android/BatchUserDataEditor$11;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/batch/android/BatchUserDataEditor$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/batch/android/BatchUserDataEditor;->setAttribute(Ljava/lang/String;D)Lcom/batch/android/BatchUserDataEditor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:D

.field final synthetic c:Lcom/batch/android/BatchUserDataEditor;


# direct methods
.method constructor <init>(Lcom/batch/android/BatchUserDataEditor;Ljava/lang/String;D)V
    .locals 1

    .prologue
    .line 200
    iput-object p1, p0, Lcom/batch/android/BatchUserDataEditor$11;->c:Lcom/batch/android/BatchUserDataEditor;

    iput-object p2, p0, Lcom/batch/android/BatchUserDataEditor$11;->a:Ljava/lang/String;

    iput-wide p3, p0, Lcom/batch/android/BatchUserDataEditor$11;->b:D

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/batch/android/k/e;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 204
    iget-object v0, p0, Lcom/batch/android/BatchUserDataEditor$11;->a:Ljava/lang/String;

    iget-wide v2, p0, Lcom/batch/android/BatchUserDataEditor$11;->b:D

    invoke-virtual {p1, v0, v2, v3}, Lcom/batch/android/k/e;->a(Ljava/lang/String;D)V

    .line 205
    return-void
.end method
