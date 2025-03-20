.class Lcom/batch/android/BatchUserDataEditor$12;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/batch/android/BatchUserDataEditor$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/batch/android/BatchUserDataEditor;->setAttribute(Ljava/lang/String;Z)Lcom/batch/android/BatchUserDataEditor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Z

.field final synthetic c:Lcom/batch/android/BatchUserDataEditor;


# direct methods
.method constructor <init>(Lcom/batch/android/BatchUserDataEditor;Ljava/lang/String;Z)V
    .locals 0

    .prologue
    .line 234
    iput-object p1, p0, Lcom/batch/android/BatchUserDataEditor$12;->c:Lcom/batch/android/BatchUserDataEditor;

    iput-object p2, p0, Lcom/batch/android/BatchUserDataEditor$12;->a:Ljava/lang/String;

    iput-boolean p3, p0, Lcom/batch/android/BatchUserDataEditor$12;->b:Z

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
    .line 238
    iget-object v0, p0, Lcom/batch/android/BatchUserDataEditor$12;->a:Ljava/lang/String;

    iget-boolean v1, p0, Lcom/batch/android/BatchUserDataEditor$12;->b:Z

    invoke-virtual {p1, v0, v1}, Lcom/batch/android/k/e;->a(Ljava/lang/String;Z)V

    .line 239
    return-void
.end method
