.class Lcom/batch/android/e/d/b$d;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/batch/android/e/d/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "d"
.end annotation


# instance fields
.field a:I

.field b:I

.field c:I

.field d:F

.field e:F

.field f:I

.field g:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .locals 1

    .prologue
    .line 2050
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2080
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/batch/android/e/d/b$d;->g:Ljava/util/List;

    return-void
.end method

.method synthetic constructor <init>(Lcom/batch/android/e/d/b$1;)V
    .locals 0

    .prologue
    .line 2050
    invoke-direct {p0}, Lcom/batch/android/e/d/b$d;-><init>()V

    return-void
.end method
