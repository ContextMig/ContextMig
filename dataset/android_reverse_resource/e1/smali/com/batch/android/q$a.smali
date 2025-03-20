.class final Lcom/batch/android/q$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/batch/android/q;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "a"
.end annotation


# instance fields
.field protected a:Z

.field protected b:J


# direct methods
.method private constructor <init>(ZJ)V
    .locals 0

    .prologue
    .line 169
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 170
    iput-boolean p1, p0, Lcom/batch/android/q$a;->a:Z

    .line 171
    iput-wide p2, p0, Lcom/batch/android/q$a;->b:J

    .line 172
    return-void
.end method

.method synthetic constructor <init>(ZJLcom/batch/android/q$1;)V
    .locals 0

    .prologue
    .line 150
    invoke-direct {p0, p1, p2, p3}, Lcom/batch/android/q$a;-><init>(ZJ)V

    return-void
.end method
