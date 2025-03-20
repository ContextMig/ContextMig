.class public final enum Lcom/batch/android/k/a;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/batch/android/k/a;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lcom/batch/android/k/a;

.field public static final enum b:Lcom/batch/android/k/a;

.field public static final enum c:Lcom/batch/android/k/a;

.field public static final enum d:Lcom/batch/android/k/a;

.field public static final enum e:Lcom/batch/android/k/a;

.field public static final enum f:Lcom/batch/android/k/a;

.field private static final synthetic i:[Lcom/batch/android/k/a;


# instance fields
.field private g:I

.field private h:C


# direct methods
.method static constructor <clinit>()V
    .locals 10

    .prologue
    const/4 v9, 0x4

    const/4 v8, 0x3

    const/4 v7, 0x2

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 10
    new-instance v0, Lcom/batch/android/k/a;

    const-string v1, "DELETED"

    const/16 v2, 0x75

    invoke-direct {v0, v1, v5, v5, v2}, Lcom/batch/android/k/a;-><init>(Ljava/lang/String;IIC)V

    sput-object v0, Lcom/batch/android/k/a;->a:Lcom/batch/android/k/a;

    .line 12
    new-instance v0, Lcom/batch/android/k/a;

    const-string v1, "STRING"

    const/16 v2, 0x73

    invoke-direct {v0, v1, v6, v6, v2}, Lcom/batch/android/k/a;-><init>(Ljava/lang/String;IIC)V

    sput-object v0, Lcom/batch/android/k/a;->b:Lcom/batch/android/k/a;

    .line 14
    new-instance v0, Lcom/batch/android/k/a;

    const-string v1, "LONG"

    const/16 v2, 0x69

    invoke-direct {v0, v1, v7, v7, v2}, Lcom/batch/android/k/a;-><init>(Ljava/lang/String;IIC)V

    sput-object v0, Lcom/batch/android/k/a;->c:Lcom/batch/android/k/a;

    .line 16
    new-instance v0, Lcom/batch/android/k/a;

    const-string v1, "DOUBLE"

    const/16 v2, 0x66

    invoke-direct {v0, v1, v8, v8, v2}, Lcom/batch/android/k/a;-><init>(Ljava/lang/String;IIC)V

    sput-object v0, Lcom/batch/android/k/a;->d:Lcom/batch/android/k/a;

    .line 18
    new-instance v0, Lcom/batch/android/k/a;

    const-string v1, "BOOL"

    const/16 v2, 0x62

    invoke-direct {v0, v1, v9, v9, v2}, Lcom/batch/android/k/a;-><init>(Ljava/lang/String;IIC)V

    sput-object v0, Lcom/batch/android/k/a;->e:Lcom/batch/android/k/a;

    .line 20
    new-instance v0, Lcom/batch/android/k/a;

    const-string v1, "DATE"

    const/4 v2, 0x5

    const/4 v3, 0x5

    const/16 v4, 0x74

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/batch/android/k/a;-><init>(Ljava/lang/String;IIC)V

    sput-object v0, Lcom/batch/android/k/a;->f:Lcom/batch/android/k/a;

    .line 8
    const/4 v0, 0x6

    new-array v0, v0, [Lcom/batch/android/k/a;

    sget-object v1, Lcom/batch/android/k/a;->a:Lcom/batch/android/k/a;

    aput-object v1, v0, v5

    sget-object v1, Lcom/batch/android/k/a;->b:Lcom/batch/android/k/a;

    aput-object v1, v0, v6

    sget-object v1, Lcom/batch/android/k/a;->c:Lcom/batch/android/k/a;

    aput-object v1, v0, v7

    sget-object v1, Lcom/batch/android/k/a;->d:Lcom/batch/android/k/a;

    aput-object v1, v0, v8

    sget-object v1, Lcom/batch/android/k/a;->e:Lcom/batch/android/k/a;

    aput-object v1, v0, v9

    const/4 v1, 0x5

    sget-object v2, Lcom/batch/android/k/a;->f:Lcom/batch/android/k/a;

    aput-object v2, v0, v1

    sput-object v0, Lcom/batch/android/k/a;->i:[Lcom/batch/android/k/a;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;IIC)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IC)V"
        }
    .end annotation

    .prologue
    .line 29
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 30
    iput p3, p0, Lcom/batch/android/k/a;->g:I

    .line 31
    iput-char p4, p0, Lcom/batch/android/k/a;->h:C

    .line 32
    return-void
.end method

.method public static a(I)Lcom/batch/android/k/a;
    .locals 5

    .prologue
    .line 54
    invoke-static {}, Lcom/batch/android/k/a;->values()[Lcom/batch/android/k/a;

    move-result-object v2

    array-length v3, v2

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v1, v3, :cond_1

    aget-object v0, v2, v1

    .line 56
    invoke-virtual {v0}, Lcom/batch/android/k/a;->a()I

    move-result v4

    if-ne v4, p0, :cond_0

    .line 62
    :goto_1
    return-object v0

    .line 54
    :cond_0
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 62
    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/batch/android/k/a;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 8
    const-class v0, Lcom/batch/android/k/a;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/batch/android/k/a;

    return-object v0
.end method

.method public static values()[Lcom/batch/android/k/a;
    .locals 1

    .prologue
    .line 8
    sget-object v0, Lcom/batch/android/k/a;->i:[Lcom/batch/android/k/a;

    invoke-virtual {v0}, [Lcom/batch/android/k/a;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/batch/android/k/a;

    return-object v0
.end method


# virtual methods
.method public a()I
    .locals 1

    .prologue
    .line 36
    iget v0, p0, Lcom/batch/android/k/a;->g:I

    return v0
.end method

.method public b()C
    .locals 1

    .prologue
    .line 41
    iget-char v0, p0, Lcom/batch/android/k/a;->h:C

    return v0
.end method
