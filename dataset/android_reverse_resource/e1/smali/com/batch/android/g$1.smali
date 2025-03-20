.class Lcom/batch/android/g$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/batch/android/c/k$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/batch/android/g;->b(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/batch/android/g;


# direct methods
.method constructor <init>(Lcom/batch/android/g;)V
    .locals 0

    .prologue
    .line 87
    iput-object p1, p0, Lcom/batch/android/g$1;->a:Lcom/batch/android/g;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Exception;)V
    .locals 2

    .prologue
    .line 102
    const-string v0, "Error while retreiving Advertising ID"

    invoke-static {v0, p1}, Lcom/batch/android/c/o;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 103
    iget-object v0, p0, Lcom/batch/android/g$1;->a:Lcom/batch/android/g;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/batch/android/g;->b(Lcom/batch/android/g;Z)Z

    .line 104
    return-void
.end method

.method public a(Ljava/lang/String;Z)V
    .locals 2

    .prologue
    .line 91
    iget-object v0, p0, Lcom/batch/android/g$1;->a:Lcom/batch/android/g;

    invoke-static {v0, p1}, Lcom/batch/android/g;->a(Lcom/batch/android/g;Ljava/lang/String;)Ljava/lang/String;

    .line 92
    iget-object v0, p0, Lcom/batch/android/g$1;->a:Lcom/batch/android/g;

    invoke-static {v0, p2}, Lcom/batch/android/g;->a(Lcom/batch/android/g;Z)Z

    .line 94
    iget-object v0, p0, Lcom/batch/android/g$1;->a:Lcom/batch/android/g;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/batch/android/g;->b(Lcom/batch/android/g;Z)Z

    .line 96
    const-string v0, "Advertising ID retrieved"

    invoke-static {v0}, Lcom/batch/android/c/o;->c(Ljava/lang/String;)V

    .line 97
    return-void
.end method
