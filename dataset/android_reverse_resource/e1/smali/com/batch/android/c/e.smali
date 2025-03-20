.class Lcom/batch/android/c/e;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/batch/android/c/e$a;
    }
.end annotation


# static fields
.field private static final a:Ljava/lang/String; = "RmY5bWJTd2J1U3Jw"


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method protected static a(I)Lcom/batch/android/c/d;
    .locals 1

    .prologue
    .line 52
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/batch/android/c/e;->a(ILjava/lang/String;)Lcom/batch/android/c/d;

    move-result-object v0

    return-object v0
.end method

.method protected static a(ILjava/lang/String;)Lcom/batch/android/c/d;
    .locals 1

    .prologue
    .line 64
    invoke-static {p0}, Lcom/batch/android/c/e$a;->a(I)Lcom/batch/android/c/e$a;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/batch/android/c/e;->a(Lcom/batch/android/c/e$a;Ljava/lang/String;)Lcom/batch/android/c/d;

    move-result-object v0

    return-object v0
.end method

.method protected static a(Lcom/batch/android/c/e$a;)Lcom/batch/android/c/d;
    .locals 1

    .prologue
    .line 75
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/batch/android/c/e;->a(Lcom/batch/android/c/e$a;Ljava/lang/String;)Lcom/batch/android/c/d;

    move-result-object v0

    return-object v0
.end method

.method protected static a(Lcom/batch/android/c/e$a;Ljava/lang/String;)Lcom/batch/android/c/d;
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 87
    if-nez p0, :cond_0

    .line 106
    :goto_0
    return-object v0

    .line 92
    :cond_0
    if-nez p1, :cond_1

    .line 94
    invoke-static {}, Lcom/batch/android/c/e;->a()[B

    move-result-object v1

    invoke-static {v1}, Lcom/batch/android/c/c;->a([B)Ljava/lang/String;

    move-result-object p1

    .line 97
    :cond_1
    sget-object v1, Lcom/batch/android/c/e$1;->a:[I

    invoke-virtual {p0}, Lcom/batch/android/c/e$a;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    goto :goto_0

    .line 100
    :pswitch_0
    new-instance v0, Lcom/batch/android/c/g;

    invoke-direct {v0, p1}, Lcom/batch/android/c/g;-><init>(Ljava/lang/String;)V

    goto :goto_0

    .line 102
    :pswitch_1
    new-instance v0, Lcom/batch/android/c/h;

    invoke-direct {v0, p1}, Lcom/batch/android/c/h;-><init>(Ljava/lang/String;)V

    goto :goto_0

    .line 104
    :pswitch_2
    new-instance v0, Lcom/batch/android/c/f;

    invoke-direct {v0, p1}, Lcom/batch/android/c/f;-><init>(Ljava/lang/String;)V

    goto :goto_0

    .line 97
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method protected static a(Ljava/lang/String;)Lcom/batch/android/c/d;
    .locals 1

    .prologue
    .line 29
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/batch/android/c/e;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/batch/android/c/d;

    move-result-object v0

    return-object v0
.end method

.method protected static a(Ljava/lang/String;Ljava/lang/String;)Lcom/batch/android/c/d;
    .locals 1

    .prologue
    .line 41
    invoke-static {p0}, Lcom/batch/android/c/e$a;->a(Ljava/lang/String;)Lcom/batch/android/c/e$a;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/batch/android/c/e;->a(Lcom/batch/android/c/e$a;Ljava/lang/String;)Lcom/batch/android/c/d;

    move-result-object v0

    return-object v0
.end method

.method private static a()[B
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 117
    const-string v0, "Rkt2Qg=="

    invoke-static {v0, v2}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object v0

    .line 118
    const-string v1, "RmY5bWJTd2J1U3Jw"

    invoke-static {v1, v2}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object v1

    .line 120
    invoke-static {v0, v1}, Lcom/batch/android/c/c;->a([B[B)[B

    move-result-object v0

    return-object v0
.end method
