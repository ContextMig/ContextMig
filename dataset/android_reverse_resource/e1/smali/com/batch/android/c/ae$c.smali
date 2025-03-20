.class public Lcom/batch/android/c/ae$c;
.super Ljava/lang/Error;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/batch/android/c/ae;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xc
    name = "c"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/batch/android/c/ae$c$a;
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x1L


# instance fields
.field private a:Lcom/batch/android/c/ae$c$a;


# direct methods
.method protected constructor <init>(Lcom/batch/android/c/ae$c$a;)V
    .locals 2

    .prologue
    .line 1049
    const-string v0, ""

    invoke-direct {p0, v0}, Ljava/lang/Error;-><init>(Ljava/lang/String;)V

    .line 1051
    if-nez p1, :cond_0

    .line 1053
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Null reason"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1056
    :cond_0
    iput-object p1, p0, Lcom/batch/android/c/ae$c;->a:Lcom/batch/android/c/ae$c$a;

    .line 1057
    return-void
.end method

.method protected constructor <init>(Lcom/batch/android/c/ae$c$a;Ljava/lang/Throwable;)V
    .locals 2

    .prologue
    .line 1033
    invoke-direct {p0, p2}, Ljava/lang/Error;-><init>(Ljava/lang/Throwable;)V

    .line 1035
    if-nez p1, :cond_0

    .line 1037
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Null reason"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1040
    :cond_0
    iput-object p1, p0, Lcom/batch/android/c/ae$c;->a:Lcom/batch/android/c/ae$c$a;

    .line 1041
    return-void
.end method

.method static synthetic a(Lcom/batch/android/c/ae$c;)Lcom/batch/android/c/ae$c$a;
    .locals 1

    .prologue
    .line 1012
    iget-object v0, p0, Lcom/batch/android/c/ae$c;->a:Lcom/batch/android/c/ae$c$a;

    return-object v0
.end method


# virtual methods
.method public a()Lcom/batch/android/c/ae$c$a;
    .locals 1

    .prologue
    .line 1067
    iget-object v0, p0, Lcom/batch/android/c/ae$c;->a:Lcom/batch/android/c/ae$c$a;

    return-object v0
.end method
