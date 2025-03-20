.class Lcom/batch/android/e/d/b$h;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/batch/android/e/d/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "h"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Comparable",
        "<",
        "Lcom/batch/android/e/d/b$h;",
        ">;"
    }
.end annotation


# instance fields
.field a:I

.field b:I


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 2022
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/batch/android/e/d/b$1;)V
    .locals 0

    .prologue
    .line 2022
    invoke-direct {p0}, Lcom/batch/android/e/d/b$h;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/batch/android/e/d/b$h;)I
    .locals 2
    .param p1    # Lcom/batch/android/e/d/b$h;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 2032
    iget v0, p0, Lcom/batch/android/e/d/b$h;->b:I

    iget v1, p1, Lcom/batch/android/e/d/b$h;->b:I

    if-eq v0, v1, :cond_0

    .line 2033
    iget v0, p0, Lcom/batch/android/e/d/b$h;->b:I

    iget v1, p1, Lcom/batch/android/e/d/b$h;->b:I

    sub-int/2addr v0, v1

    .line 2035
    :goto_0
    return v0

    :cond_0
    iget v0, p0, Lcom/batch/android/e/d/b$h;->a:I

    iget v1, p1, Lcom/batch/android/e/d/b$h;->a:I

    sub-int/2addr v0, v1

    goto :goto_0
.end method

.method public synthetic compareTo(Ljava/lang/Object;)I
    .locals 1
    .param p1    # Ljava/lang/Object;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 2022
    check-cast p1, Lcom/batch/android/e/d/b$h;

    invoke-virtual {p0, p1}, Lcom/batch/android/e/d/b$h;->a(Lcom/batch/android/e/d/b$h;)I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 2040
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Order{order="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/batch/android/e/d/b$h;->b:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", index="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/batch/android/e/d/b$h;->a:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
