.class Lcom/batch/android/c/af;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final a:Ljava/lang/String; = "JY+Cn0qwsdiDNm7bRMKW8A=="

.field private static final b:Ljava/lang/String; = "1"


# instance fields
.field private c:Lcom/batch/android/c/e$a;


# direct methods
.method protected constructor <init>(I)V
    .locals 1

    .prologue
    .line 39
    invoke-static {p1}, Lcom/batch/android/c/e$a;->a(I)Lcom/batch/android/c/e$a;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/batch/android/c/af;-><init>(Lcom/batch/android/c/e$a;)V

    .line 40
    return-void
.end method

.method protected constructor <init>(Lcom/batch/android/c/e$a;)V
    .locals 2

    .prologue
    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    if-nez p1, :cond_0

    .line 50
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Null type"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 53
    :cond_0
    iput-object p1, p0, Lcom/batch/android/c/af;->c:Lcom/batch/android/c/e$a;

    .line 54
    return-void
.end method

.method private static a(I)Ljava/lang/String;
    .locals 6

    .prologue
    const/4 v1, 0x0

    .line 182
    new-instance v3, Ljava/util/Random;

    invoke-direct {v3}, Ljava/util/Random;-><init>()V

    .line 184
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    move v2, v1

    .line 185
    :goto_0
    if-ge v2, p0, :cond_2

    .line 187
    invoke-virtual {v3}, Ljava/util/Random;->nextInt()I

    move-result v0

    rem-int/lit8 v0, v0, 0x2

    if-nez v0, :cond_0

    const/4 v0, 0x1

    .line 188
    :goto_1
    if-eqz v0, :cond_1

    const/16 v0, 0x61

    :goto_2
    const/16 v5, 0x1a

    invoke-virtual {v3, v5}, Ljava/util/Random;->nextInt(I)I

    move-result v5

    add-int/2addr v0, v5

    int-to-char v0, v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 185
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_0

    :cond_0
    move v0, v1

    .line 187
    goto :goto_1

    .line 188
    :cond_1
    const/16 v0, 0x41

    goto :goto_2

    .line 191
    :cond_2
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private a(Ljava/lang/String;Lcom/batch/android/c/ae;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 161
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-direct {p0, p2}, Lcom/batch/android/c/af;->a(Lcom/batch/android/c/ae;)[B

    move-result-object v1

    invoke-static {v1}, Lcom/batch/android/c/c;->a([B)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private a(Lcom/batch/android/c/ae;)[B
    .locals 3

    .prologue
    .line 140
    invoke-virtual {p1}, Lcom/batch/android/c/ae;->c()Lcom/batch/android/c/ae$b;

    .line 142
    const-string v0, "d2dIRA=="

    .line 144
    const-string v1, "JY+Cn0qwsdiDNm7bRMKW8A=="

    .line 146
    const/4 v2, 0x0

    invoke-static {v0, v2}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object v0

    .line 147
    sget-object v2, Lcom/batch/android/c/e$a;->c:Lcom/batch/android/c/e$a;

    invoke-static {v2}, Lcom/batch/android/c/e;->a(Lcom/batch/android/c/e$a;)Lcom/batch/android/c/d;

    move-result-object v2

    invoke-interface {v2, v1}, Lcom/batch/android/c/d;->c(Ljava/lang/String;)[B

    move-result-object v1

    .line 149
    invoke-static {v0, v1}, Lcom/batch/android/c/c;->a([B[B)[B

    move-result-object v0

    return-object v0
.end method

.method private a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/batch/android/c/ae;)[B
    .locals 3

    .prologue
    .line 94
    const-string v0, "1"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 96
    iget-object v0, p0, Lcom/batch/android/c/af;->c:Lcom/batch/android/c/e$a;

    invoke-direct {p0, p2, p4}, Lcom/batch/android/c/af;->a(Ljava/lang/String;Lcom/batch/android/c/ae;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/batch/android/c/e;->a(Lcom/batch/android/c/e$a;Ljava/lang/String;)Lcom/batch/android/c/d;

    move-result-object v0

    .line 97
    invoke-interface {v0, p3}, Lcom/batch/android/c/d;->c(Ljava/lang/String;)[B

    move-result-object v0

    return-object v0

    .line 100
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown crypting version : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static b()Ljava/lang/String;
    .locals 2

    .prologue
    .line 171
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "1"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/4 v1, 0x7

    invoke-static {v1}, Lcom/batch/android/c/af;->a(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 127
    iget-object v0, p0, Lcom/batch/android/c/af;->c:Lcom/batch/android/c/e$a;

    invoke-static {v0}, Lcom/batch/android/c/e;->a(Lcom/batch/android/c/e$a;)Lcom/batch/android/c/d;

    move-result-object v0

    invoke-interface {v0}, Lcom/batch/android/c/d;->a()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public a([BLcom/batch/android/c/ae;)[B
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    const/16 v3, 0x8

    .line 68
    if-nez p1, :cond_0

    .line 70
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Null data"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 73
    :cond_0
    invoke-static {p1}, Lcom/batch/android/c/c;->a([B)Ljava/lang/String;

    move-result-object v0

    .line 74
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-gt v1, v3, :cond_1

    .line 76
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "The data as string should be at least 9 char long"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 79
    :cond_1
    invoke-virtual {v0, v4, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 80
    const/4 v2, 0x1

    invoke-virtual {v1, v4, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v2, v1, v0, p2}, Lcom/batch/android/c/af;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/batch/android/c/ae;)[B

    move-result-object v0

    return-object v0
.end method

.method public b([BLcom/batch/android/c/ae;)[B
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 113
    invoke-static {}, Lcom/batch/android/c/af;->b()Ljava/lang/String;

    move-result-object v0

    .line 114
    iget-object v1, p0, Lcom/batch/android/c/af;->c:Lcom/batch/android/c/e$a;

    invoke-direct {p0, v0, p2}, Lcom/batch/android/c/af;->a(Ljava/lang/String;Lcom/batch/android/c/ae;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/batch/android/c/e;->a(Lcom/batch/android/c/e$a;Ljava/lang/String;)Lcom/batch/android/c/d;

    move-result-object v1

    .line 116
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p1}, Lcom/batch/android/c/c;->a([B)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/batch/android/c/d;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 117
    invoke-static {v0}, Lcom/batch/android/c/c;->a(Ljava/lang/String;)[B

    move-result-object v0

    return-object v0
.end method
