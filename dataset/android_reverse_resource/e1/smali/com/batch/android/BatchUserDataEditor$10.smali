.class Lcom/batch/android/BatchUserDataEditor$10;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/batch/android/BatchUserDataEditor$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/batch/android/BatchUserDataEditor;->setAttribute(Ljava/lang/String;J)Lcom/batch/android/BatchUserDataEditor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:J

.field final synthetic c:Lcom/batch/android/BatchUserDataEditor;


# direct methods
.method constructor <init>(Lcom/batch/android/BatchUserDataEditor;Ljava/lang/String;J)V
    .locals 1

    .prologue
    .line 166
    iput-object p1, p0, Lcom/batch/android/BatchUserDataEditor$10;->c:Lcom/batch/android/BatchUserDataEditor;

    iput-object p2, p0, Lcom/batch/android/BatchUserDataEditor$10;->a:Ljava/lang/String;

    iput-wide p3, p0, Lcom/batch/android/BatchUserDataEditor$10;->b:J

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
    .line 170
    iget-object v0, p0, Lcom/batch/android/BatchUserDataEditor$10;->a:Ljava/lang/String;

    iget-wide v2, p0, Lcom/batch/android/BatchUserDataEditor$10;->b:J

    invoke-virtual {p1, v0, v2, v3}, Lcom/batch/android/k/e;->a(Ljava/lang/String;J)V

    .line 171
    return-void
.end method
