.class public Lcom/batch/android/c/i;
.super Ljava/util/ArrayList;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/util/ArrayList",
        "<TT;>;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x1L


# instance fields
.field private final a:I


# direct methods
.method public constructor <init>(I)V
    .locals 0

    .prologue
    .line 28
    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    .line 29
    iput p1, p0, Lcom/batch/android/c/i;->a:I

    .line 30
    return-void
.end method


# virtual methods
.method public add(Ljava/lang/Object;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)Z"
        }
    .end annotation

    .prologue
    .line 34
    .local p0, "this":Lcom/batch/android/c/i;, "Lcom/batch/android/c/i<TT;>;"
    .local p1, "t":Ljava/lang/Object;, "TT;"
    invoke-virtual {p0}, Lcom/batch/android/c/i;->size()I

    move-result v0

    iget v1, p0, Lcom/batch/android/c/i;->a:I

    if-lt v0, v1, :cond_0

    .line 36
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/batch/android/c/i;->remove(I)Ljava/lang/Object;

    .line 39
    :cond_0
    invoke-super {p0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method
